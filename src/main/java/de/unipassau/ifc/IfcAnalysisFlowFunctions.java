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
import com.ibm.wala.util.intset.MutableIntSet;
import com.ibm.wala.util.intset.MutableSparseIntSet;
import de.unipassau.accesspaths.AccessGraph;
import de.unipassau.accesspaths.FieldGraph;
import de.unipassau.utils.SourceSinkManager;

import java.util.HashMap;

public class IfcAnalysisFlowFunctions implements IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> {
    protected AccessGraphDomain domain;
    protected CGNode entryPoint;
    protected HashMap<CGNode, IfcAnalysisFact> returnFacts;
    protected final static int RETURN_VALUE = Integer.MAX_VALUE;

    public IfcAnalysisFlowFunctions(CGNode entryPoint, AccessGraphDomain domain) {
        this.entryPoint = entryPoint;
        this.domain = domain;
        this.returnFacts = HashMapFactory.make();
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

    @Override
    public IUnaryFlowFunction getNormalFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dst) {
        SSAInstruction inst = getInstruction(src);

        if (inst instanceof SSANewInstruction newInst) {
            return buildNewInstructionFunction(newInst, src.getNode());
        } else if (inst instanceof SSAPutInstruction put) {
            return buildPutInstructionFunction(put, src.getNode());
        } else if (inst instanceof SSAGetInstruction get) {
            return buildGetInstruction(get, src.getNode());
        } else if (inst instanceof SSAReturnInstruction returnInst) {
            return buildReturnInstruction(returnInst, src.getNode());
        } else if (inst instanceof SSAPhiInstruction phiInst) {
            return buildPhiInstruction(phiInst, src.getNode());
        } else {
            return identity();
        }
    }

    protected IUnaryFlowFunction buildPhiInstruction(SSAPhiInstruction inst, CGNode node) {
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

    protected IUnaryFlowFunction buildReturnInstruction(SSAReturnInstruction inst, CGNode node) {
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

    protected IUnaryFlowFunction buildGetInstruction(SSAGetInstruction inst, CGNode node) {
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

    protected IUnaryFlowFunction buildPutInstructionFunction(SSAPutInstruction inst, CGNode node) {
        return d1 -> {
            int dst = inst.getUse(0);
            int src = inst.getUse(1);
            IField field = resolveField(getClassHierarchy(), inst.getDeclaredField());
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

    protected IField resolveField(IClassHierarchy cha, FieldReference f) {
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

    protected boolean isSensitiveSource(CallSiteReference functionCallSite) {
        String method = functionCallSite.getDeclaredTarget().getName().toString();
        return SourceSinkManager.isSourceMethod(method);
    }
}
