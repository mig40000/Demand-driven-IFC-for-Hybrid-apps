package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.IFlowFunction;
import com.ibm.wala.dataflow.IFDS.IUnaryFlowFunction;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.SSAGetInstruction;
import com.ibm.wala.ssa.SSAInvokeInstruction;
import com.ibm.wala.ssa.SSAPutInstruction;
import com.ibm.wala.ssa.SSAReturnInstruction;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.collections.HashMapFactory;
import com.ibm.wala.util.intset.MutableIntSet;
import com.ibm.wala.util.intset.MutableSparseIntSet;
import de.unipassau.dbinterfaces.BridgedMethodList;
import de.unipassau.utils.SourceSinkManager;

import java.util.HashMap;
import java.util.Set;

public class InvokingFunctionFlowFunction extends ForwardAnalysisFlowFunctions {

    BridgedMethodList bridgedMethods;
    HashMap<CGNode, Set<FlowPathFact>> summaries = HashMapFactory.make();


    public InvokingFunctionFlowFunction(CGNode entryPoint, FlowFactDomain domain, SourceSinkManager manager, BridgedMethodList bridgedMethods, HashMap<CGNode, Set<FlowPathFact>> summaries) {
        super(entryPoint, domain, manager);
        this.bridgedMethods = bridgedMethods;
        this.summaries = summaries;
    }

    /**
     * x.f = y; it adds a new node
     *
     * @param inst
     * @param node
     * @return
     */
    @Override
    protected IUnaryFlowFunction buildPutInstructionFunction(SSAPutInstruction inst, CGNode node, MutableIntSet entry) {
        return d1 -> {
            MutableIntSet result = MutableSparseIntSet.make(entry);
            result.add(d1);

            int src = inst.getUse(1);
            int dst = inst.getUse(0);
            FlowFact dstFact = domain.getMappedObject(d1);
            if (dstFact.getBase() == dst) {
                FlowFact srcFact = new FlowFact(node, src, dstFact.fieldgraph(), dstFact.ifclabel());
                result.add(domain.add(srcFact));
            }
            return result;
        };
    }

    /**
     * x = y.f;
     *
     * @param inst
     * @param node
     * @return
     */
    @Override
    protected IUnaryFlowFunction buildGetInstruction(SSAGetInstruction inst, CGNode node, MutableIntSet entry) {
        return d1 -> {
            MutableIntSet result = MutableSparseIntSet.make(entry);
            result.add(d1);

            int src = inst.getUse(1);
            int dst = inst.getDef();
            var srcFact = domain.getMappedObject(d1);
            if (srcFact.getBase() == src) {
                FlowFact dstFact = new FlowFact(node, dst, srcFact.fieldgraph(), srcFact.ifclabel());
                result.add(domain.add(dstFact));
            }
            return result;
        };
    }


    /**
     * Here, call behaves like a return.
     * @param src
     * @param dst
     * @param ret
     * @return
     */
    @Override
    public IUnaryFlowFunction getCallFlowFunction(BasicBlockInContext<IExplodedBasicBlock> ret,
                                                  BasicBlockInContext<IExplodedBasicBlock> calledFunc,
                                                  BasicBlockInContext<IExplodedBasicBlock> src) {
        if (ret.isExitBlock()) {
            return FlowFunctionUtils.emptyFunction();
        }
        if (ret == null) {
            return FlowFunctionUtils.emptyFunction();
        }

//        SSAReturnInstruction invoke = (SSAReturnInstruction) FlowFunctionUtils.getInstruction(src);
//        if (invoke == null) {
//            return FlowFunctionUtils.emptyFunction();
//        }

        return (IUnaryFlowFunction) super.getReturnFlowFunction(src, calledFunc, ret);
//        SSAReturnInstruction returnInstruction = (SSAReturnInstruction) FlowFunctionUtils.getInstruction(ret);
//
//        if (returnInstruction == null) {
//            return FlowFunctionUtils.identityFunction();
//        }
//
//        return d1 -> {
//            MutableIntSet result = MutableSparseIntSet.makeEmpty();
//            result.add(d1);
//
//            for (int vn = 1; vn < returnInstruction.getNumberOfUses(); ++vn) {
//                int newFact = domain.add(new FlowFact(src.getNode(), vn, null, IFCLabel.PUBLIC));
//                result.add(newFact);
//            }
//            return result;
//        };
    }

    public IUnaryFlowFunction transformSummaryToFlowFunction(CGNode targetNode, SSAInvokeInstruction invoke) {
        return d1 -> {
            MutableIntSet result = MutableSparseIntSet.makeEmpty();
            result.add(d1);

            Set<FlowPathFact> summary = summaries.get(targetNode);
            for (int i = 0; i < invoke.getNumberOfUses(); ++i) {
                int vn = invoke.getUse(i);
                // map the parameters to the base variables
                for (FlowPathFact path : summary) {
                    FlowFact f = path.init();
                    FlowFact l = path.last();
                    if (f.getBase() == i + 1 && f.getCGNode().equals(targetNode)) {
                        int newFact = domain.add(new FlowFact(targetNode, vn, f.fieldgraph(), f.ifclabel()));
                        result.add(newFact);

                        int newTailfact = domain.add(new FlowFact(targetNode, vn, l.fieldgraph(), path.computeFlowLabel()));
                        result.add(newTailfact);
                    }
                }
            }
            return result;
        };
    }

    private boolean isBridgeCall(SSAInvokeInstruction invoke) {
        String signature = invoke.getDeclaredTarget().getSignature();
        String klass = invoke.getDeclaredTarget().getClass().getName();
        return bridgedMethods.stream().anyMatch(method -> method.signature().equals(signature) && method.clazz().equals(klass));
    }


    @Override
    public IFlowFunction getReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> call, BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dest) {
        SSAInvokeInstruction invoke = (SSAInvokeInstruction) FlowFunctionUtils.getInstruction(call);
        if (isBridgeCall(invoke))
            return transformSummaryToFlowFunction(dest.getNode(), invoke);
        else
            return super.getCallFlowFunction(src, dest, call);
    }
}
