package de.unipassau.ifc;

import com.ibm.wala.classLoader.CallSiteReference;
import com.ibm.wala.classLoader.IField;
import com.ibm.wala.dataflow.IFDS.*;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.ssa.*;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.types.FieldReference;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.collections.HashMapFactory;
import com.ibm.wala.util.intset.MutableIntSet;
import com.ibm.wala.util.intset.MutableSparseIntSet;
import de.unipassau.accesspaths.AccessGraph;
import de.unipassau.accesspaths.FieldGraph;
import de.unipassau.modifiedpaths.ModifiedPathAnalysis;
import de.unipassau.utils.IFDSSolutionCollector;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

public class IFCAnalysis {
    private final ICFGSupergraph supergraph;
    private final CGNode bridgeNode;
    private final IfcAnalysisFactDomain domain;
    private final HashMap<CGNode, IfcAnalysisFact> returnFacts;
    private final static int RETURN_VALUE = Integer.MAX_VALUE;

    public IFCAnalysis(CallGraph cg, CGNode bridgeNode) {
        domain = new IfcAnalysisFactDomain();
        this.bridgeNode = bridgeNode;
        this.supergraph = ICFGSupergraph.make(cg);
        this.returnFacts = HashMapFactory.make();
    }

    private class IfcAnalysisFlowFunctions implements IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> {

        private SSAInstruction getInstruction(BasicBlockInContext<IExplodedBasicBlock> block) {
            return block.getDelegate().getInstruction();
        }

        public IUnaryFlowFunction identity() {
            return d1 -> {
                MutableIntSet results = MutableSparseIntSet.makeEmpty();
                results.add(d1);
                return results;
            };
        }

        @Override
        public IUnaryFlowFunction getNormalFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dst) {
            SSAInstruction inst = getInstruction(src);

            if (inst instanceof SSANewInstruction) {
                return buildNewInstructionFunction((SSANewInstruction) inst, src.getNode());
            } else if (inst instanceof SSAPutInstruction) {
                return buildPutInstructionFunction((SSAPutInstruction) inst, src.getNode());
            } else if (inst instanceof SSAGetInstruction) {
                return buildGetInstruction((SSAGetInstruction) inst, src.getNode());
            } else if (inst instanceof SSAReturnInstruction) {
                return buildReturnInstruction((SSAReturnInstruction) inst, src.getNode());
            } else if (inst instanceof SSAPhiInstruction) {
                return buildPhiInstruction((SSAPhiInstruction) inst, src.getNode());
            } else {
                return identity();
            }
        }

        private IUnaryFlowFunction buildPhiInstruction(SSAPhiInstruction inst, CGNode node) {
            return d1 -> {
                MutableIntSet result = MutableSparseIntSet.makeEmpty();
                for (int i = 0; i < inst.getNumberOfUses(); ++i) {
                    int use = inst.getUse(i);
                    var srcFact = domain.getMappedObject(d1);
                    if (srcFact.getBase() == use) {
                        IfcAnalysisFact fact = new IfcAnalysisFact(node, RETURN_VALUE, null, srcFact.ifclabel());
                        result.add(domain.add(fact));
                    } else {
                        result.add(d1);
                    }
                }
                return result;
            };
        }

        private IUnaryFlowFunction buildReturnInstruction(SSAReturnInstruction inst, CGNode node) {
            return d1 -> {
                final MutableIntSet result = MutableSparseIntSet.makeEmpty();
                int src = inst.getUse(0);
                var fact = domain.getMappedObject(d1);
                if (fact.getBase() == src) {
                    IfcAnalysisFact newFact = new IfcAnalysisFact(node, RETURN_VALUE, null, fact.ifclabel());
                    result.add(domain.add(newFact));
                } else {
                    result.add(d1);
                }
                return result;
            };
        }

        private IUnaryFlowFunction buildGetInstruction(SSAGetInstruction inst, CGNode node) {
            return d1 -> {
                int src = inst.getUse(0);
                int dst = inst.getDef();
                IField field = resolveField(node.getClassHierarchy(), inst.getDeclaredField());
                MutableIntSet result = MutableSparseIntSet.makeEmpty();
                var srcTaintInfo = domain.getMappedObject(d1);
                if (srcTaintInfo.getBase() == src) {
                    if (srcTaintInfo.fieldgraph() == null) {
                        IfcAnalysisFact fieldFact = new IfcAnalysisFact(node, src, FieldGraph.of(field), srcTaintInfo.ifclabel());
                        result.add(domain.add(fieldFact));
                    }
                    IfcAnalysisFact dstFact = new IfcAnalysisFact(node, dst, null, srcTaintInfo.ifclabel());
                    result.add(domain.add(dstFact));
                } else {
                    result.add(d1);
                }
                return result;
            };
        }

        private IUnaryFlowFunction buildPutInstructionFunction(SSAPutInstruction inst, CGNode node) {
            return d1 -> {
                int dst = inst.getUse(0);
                int src = inst.getUse(1);
                IField field = resolveField(bridgeNode.getClassHierarchy(), inst.getDeclaredField());
                MutableIntSet result = MutableSparseIntSet.makeEmpty();
                var srcTaintInfo = domain.getMappedObject(d1);
                if (srcTaintInfo.getBase() == src) {
                    IfcAnalysisFact fact = new IfcAnalysisFact(node, dst, FieldGraph.of(field), srcTaintInfo.ifclabel());
                    result.add(domain.add(fact));
                } else {
                    result.add(d1); // return identify function
                }
                return result;
            };
        }

        private IField resolveField(IClassHierarchy cha, FieldReference f) {
            IField field = cha.resolveField(f);
            assert field != null;
            return field;
        }

        public IUnaryFlowFunction buildNewInstructionFunction(SSANewInstruction inst, CGNode node) {
            return d1 -> {
                int def = inst.getDef();
                MutableIntSet result = MutableSparseIntSet.makeEmpty();
                IfcAnalysisFact fact = new IfcAnalysisFact(new AccessGraph(node, def), IFCLabel.PUBLIC);
                int x = domain.add(fact);
                result.add(x);
                result.add(d1);
                return result;
            };
        }

        @Override
        public IUnaryFlowFunction getCallFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dst, BasicBlockInContext<IExplodedBasicBlock> ret) {
            SSAInvokeInstruction invoke = (SSAInvokeInstruction) getInstruction(src);
            if (isSensitiveSource(invoke.getCallSite())) {
                return d1 -> {
                    MutableIntSet result = MutableSparseIntSet.makeEmpty();
                    int def = invoke.getDef();
                    if (def != -1) {
                        IfcAnalysisFact fact = new IfcAnalysisFact(src.getNode(), def, null, IFCLabel.SECRET);
                        result.add(domain.add(fact));
                    } else {
                        result.add(d1);
                    }
                    return result;
                };
            } else if (isLibraryCall(invoke.getCallSite())) {
                // propagate library calls by replqcing it with identity functions
                return identity();
            } else {
                // skip analysing these calls and replace it with identity functions
                return d1 -> {
                    MutableIntSet result = MutableSparseIntSet.makeEmpty();
                    var fact = domain.getMappedObject(d1);
                    for (int i = 0; i < invoke.getNumberOfPositionalParameters(); ++i) {
                        if (invoke.getUse(i) == fact.getBase()) {
                            if (i != 0) {
                                IfcAnalysisFact newfact = new IfcAnalysisFact(dst.getNode(), i + 1, fact.fieldgraph(), fact.ifclabel());
                                result.add(domain.add(newfact));
                            }
                        }
                    }
                    return result;
                };
            }
        }

        private boolean isLibraryCall(CallSiteReference callSite) {
            return true;
        }

        @Override
        public IFlowFunction getReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> call, BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dest) {
            SSAInvokeInstruction callInstruction = (SSAInvokeInstruction) getInstruction(call);
            SSAReturnInstruction returnInst = (SSAReturnInstruction) getInstruction(src);
            return (IUnaryFlowFunction) d1 -> {
                MutableIntSet result = MutableSparseIntSet.makeEmpty();
                // if the use of d1 is reachable
                var flowFact = domain.getMappedObject(d1);
                if (flowFact.getBase() == returnInst.getUse(0)) {
                    int def = callInstruction.getDef();
                    if (def != -1) {
                        var fakeReturn = returnFacts.get(src.getNode());
                        var newFlowFact = new IfcAnalysisFact(call.getNode(), def, null, fakeReturn.ifclabel());
                        result.add(domain.add(newFlowFact));
                    }
                }
                return result;
            };
        }

        @Override
        public IUnaryFlowFunction getCallToReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> ssaInstructions, BasicBlockInContext<IExplodedBasicBlock> t1) {
            return identity();
        }

        @Override
        public IUnaryFlowFunction getCallNoneToReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> ssaInstructions, BasicBlockInContext<IExplodedBasicBlock> t1) {
            return identity();
        }

        private boolean isSensitiveSource(CallSiteReference functionCallSite) {
            // todo: Check fo
            return true;
        }
    }


    protected class IFCTaintAnalysisProblem implements TabulationProblem<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IfcAnalysisFact> {

        IfcAnalysisFlowFunctions flowFunctions = new IfcAnalysisFlowFunctions();

        @Override
        public ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> getSupergraph() {
            return supergraph;
        }

        @Override
        public TabulationDomain<IfcAnalysisFact, BasicBlockInContext<IExplodedBasicBlock>> getDomain() {
            return domain;
        }

        @Override
        public IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> getFunctionMap() {
            return flowFunctions;
        }

        @Override
        public Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> initialSeeds() {
            //initialise every symbol in the symbol table
            IR ir = bridgeNode.getIR();
            var symbolTable = ir.getSymbolTable();
            Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> initPathEdges = new ArrayList<>();
            var entryBlock = ir.getControlFlowGraph().entry().getGraphNodeId();
            // add all parameters of the bridge method as seed values
            // essentially, for every f(n1, n2, ..., nn), it creates the pathedge <f, n_i> --> <f, n_i> for n_i in {n1, .., nn}
            var entrySuperblock = supergraph.getLocalBlock(bridgeNode, entryBlock);
            for (int i=0; i < symbolTable.getMaxValueNumber(); ++i) {
                int factId = domain.add(new IfcAnalysisFact(bridgeNode, symbolTable.getIntValue(i), null, IFCLabel.PUBLIC));
                initPathEdges.add(PathEdge.createPathEdge(entrySuperblock, factId, entrySuperblock, factId));
            }
            return initPathEdges;
        }

        @Override
        public IMergeFunction getMergeFunction() {
            return null;
        }
    }

    public TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IfcAnalysisFact> analyze() {
        var solver = TabulationSolver.make(new IFCTaintAnalysisProblem());
        try {
            return solver.solve();
        } catch (CancelException e) {
            throw new IllegalStateException("Cannot solve the constraints");
        }
    }

    public Collection<IfcAnalysisFact> collectSolutions() {
        IFDSSolutionCollector<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IfcAnalysisFact> solution = new IFDSSolutionCollector<>(analyze(), domain);
        return solution.collectSolutions();
    }
}
