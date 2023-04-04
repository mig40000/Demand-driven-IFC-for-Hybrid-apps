package de.unipassau.ifc;

import com.ibm.wala.classLoader.CallSiteReference;
import com.ibm.wala.classLoader.IField;
import com.ibm.wala.dataflow.IFDS.IFlowFunction;
import com.ibm.wala.dataflow.IFDS.IFlowFunctionMap;
import com.ibm.wala.dataflow.IFDS.IUnaryFlowFunction;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.ssa.*;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.types.FieldReference;
import com.ibm.wala.util.collections.HashMapFactory;
import com.ibm.wala.util.intset.IntIterator;
import com.ibm.wala.util.intset.IntSet;
import com.ibm.wala.util.intset.MutableIntSet;
import com.ibm.wala.util.intset.MutableSparseIntSet;
import de.unipassau.accesspaths.AccessGraph;
import de.unipassau.accesspaths.FieldGraph;
import de.unipassau.utils.SourceSinkManager;

import java.util.HashMap;

public class IfcAnalysisFlowFunctions implements IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> {
    protected IFCAnalysisFactDomain domain;
    protected CGNode entryPoint;
    protected HashMap<CGNode, IfcAnalysisFact> returnFacts;
    protected static final int RETURN_VALUE = Integer.MAX_VALUE;
    protected SourceSinkManager sensitiveSourcesManager;

    public IfcAnalysisFlowFunctions(CGNode entryPoint, IFCAnalysisFactDomain domain, SourceSinkManager sources) {
        this.entryPoint = entryPoint;
        this.domain = domain;
        this.returnFacts = HashMapFactory.make();
        this.sensitiveSourcesManager = sources;
    }

    protected SSAInstruction getInstruction(BasicBlockInContext<IExplodedBasicBlock> block) {
        return block.getDelegate().getInstruction();
    }

    public IUnaryFlowFunction identity() {
        return d1 -> {
            MutableIntSet results = MutableSparseIntSet.makeEmpty();
            results.add(d1);
            return results;
        };
    }

    protected IClassHierarchy getClassHierarchy() {
        return entryPoint.getClassHierarchy();
    }

    public MutableIntSet buildEntryBlockFunction(BasicBlockInContext<IExplodedBasicBlock> src) {
        MutableIntSet intset = MutableSparseIntSet.makeEmpty();
        IR ir = src.getNode().getIR();
        for (int vn = 1; vn <= ir.getSymbolTable().getMaxValueNumber(); ++vn) {
            int id = domain.add(new IfcAnalysisFact(src.getNode(), vn, null, IFCLabel.PUBLIC));
            intset.add(id);
        }
        System.out.println("BuildEntryBlockFunction " + intset);
        return intset;
    }

    @Override
    public IUnaryFlowFunction getNormalFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dst) {
        SSAInstruction inst = getInstruction(src);
        MutableIntSet entryfacts = MutableSparseIntSet.makeEmpty();
        if (src.isEntryBlock()) {
            entryfacts = buildEntryBlockFunction(src);
        }

        IUnaryFlowFunction result = null;
        if (inst instanceof SSANewInstruction newInst) {
            result = buildNewInstructionFunction(newInst, src.getNode(), entryfacts);
        } else if (inst instanceof SSAPutInstruction put) {
            result = buildPutInstructionFunction(put, src.getNode(), entryfacts);
        } else if (inst instanceof SSAGetInstruction get) {
            result = buildGetInstruction(get, src.getNode(), entryfacts);
        } else if (inst instanceof SSAReturnInstruction returnInst) {
            result = buildReturnInstruction(returnInst, src.getNode(), entryfacts);
        } else if (inst instanceof SSAPhiInstruction phiInst) {
            result = buildPhiInstruction(phiInst, src.getNode(), entryfacts);
        } else {
            result = identity();
        }
        return result;
//        return compose(entryblock, result);
    }

    public IUnaryFlowFunction compose(IUnaryFlowFunction f1, IUnaryFlowFunction f2) {
        if (f1 == null) {
            return f2;
        } else if (f2 == null) {
            return f1;
        } else {
            return d1 -> {
                MutableSparseIntSet result = MutableSparseIntSet.makeEmpty();
                IntSet imF1 = f1.getTargets(d1);
                IntIterator iterator = imF1.intIterator();
                while (iterator.hasNext()) {
                    int f11 = iterator.next();
                    result.addAll(f2.getTargets(f11));
                }
                return result;
            };
        }
    }

    protected IUnaryFlowFunction buildPhiInstruction(SSAPhiInstruction inst, CGNode node, MutableIntSet entryfacts) {
        return d1 -> {
            MutableIntSet result = MutableSparseIntSet.make(entryfacts);
            result.add(d1);
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

    protected IUnaryFlowFunction buildReturnInstruction(SSAReturnInstruction inst, CGNode node, MutableIntSet entryfacts) {
        return d1 -> {
            final MutableIntSet result = MutableSparseIntSet.make(entryfacts);
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

    protected IUnaryFlowFunction buildGetInstruction(SSAGetInstruction inst, CGNode node, MutableIntSet entryfacts) {
        return d1 -> {
            System.out.println("Get function " + inst + " d1 = " + d1);
            int src = inst.getUse(0);
            int dst = inst.getDef();
            IField field = resolveField(node.getClassHierarchy(), inst.getDeclaredField());
            MutableIntSet result = MutableSparseIntSet.make(entryfacts);
            result.add(d1);
            var srcTaintInfo = domain.getMappedObject(d1);
            if (srcTaintInfo.getBase() == src) {
//                if (srcTaintInfo.fieldgraph() == null) {
//                    IfcAnalysisFact fieldFact = new IfcAnalysisFact(node, src, FieldGraph.of(field), srcTaintInfo.ifclabel());
//                    result.add(domain.add(fieldFact));
//                }
                IfcAnalysisFact dstFact = new IfcAnalysisFact(node, dst, srcTaintInfo.fieldgraph(), srcTaintInfo.ifclabel());
                result.add(domain.add(dstFact));
            }
            System.out.println("get function result " + result);
            return result;
        };
    }

    protected IUnaryFlowFunction buildPutInstructionFunction(SSAPutInstruction inst, CGNode node, MutableIntSet entryfacts) {
        return d1 -> {
            int dst = inst.getUse(0);
            int src = inst.getUse(1);
            IField field = resolveField(getClassHierarchy(), inst.getDeclaredField());
            MutableIntSet result = MutableSparseIntSet.make(entryfacts);
            result.add(d1);
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

    protected IField resolveField(IClassHierarchy cha, FieldReference f) {
        IField field = cha.resolveField(f);
        assert field != null;
        return field;
    }

    public IUnaryFlowFunction buildNewInstructionFunction(SSANewInstruction inst, CGNode node, MutableIntSet entryfacts) {
        return d1 -> {
            int def = inst.getDef();
            MutableIntSet result = MutableSparseIntSet.make(entryfacts);
            result.add(d1);
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
        }

        if (isLibraryCall(invoke.getCallSite())) {
            // propagate library calls by replqcing it with identity functions
            return identity();
        }

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


    protected boolean isLibraryCall(CallSiteReference callSite) {
        return false;
    }

    @Override
    public IFlowFunction getReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> call, BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dest) {
        SSAInvokeInstruction callInstruction = (SSAInvokeInstruction) getInstruction(call);
        SSAReturnInstruction returnInst = (SSAReturnInstruction) getInstruction(src);

        // In case the return instruction is null, pass the empty set
        if (returnInst == null) {
            return (IUnaryFlowFunction) d1 -> MutableSparseIntSet.makeEmpty();
        }

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

    protected boolean isSensitiveSource(CallSiteReference functionCallSite) {
        String method = functionCallSite.getDeclaredTarget().getName().toString();
        return sensitiveSourcesManager.isSourceMethod(method);
    }

    public IFCAnalysisFactDomain getDomain() {
        return domain;
    }
}
