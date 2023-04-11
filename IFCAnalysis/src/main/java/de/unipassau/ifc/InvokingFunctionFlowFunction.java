package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.IFlowFunction;
import com.ibm.wala.dataflow.IFDS.IUnaryFlowFunction;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.*;
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
        if (inst.isStatic()) {
            int dst = inst.getDef();

            return d1 -> {
                MutableIntSet result = MutableSparseIntSet.makeEmpty();
                result.add(d1);
                int newFact = domain.add(new FlowFact(node, dst, null, IFCLabel.PUBLIC));
                result.add(newFact);
                return result;
            };
        }

        return d1 -> {
            MutableIntSet result = MutableSparseIntSet.make(entry);
            result.add(d1);

            int src = inst.getUse(0);
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
     * @param src --> current instruction (return)
     * @param dst --> exit node instruction
     * @param ret --> the instruction before the return instruction -- not required
     * @return
     */
    @Override
    public IUnaryFlowFunction getCallFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src,
                                                  BasicBlockInContext<IExplodedBasicBlock> dest,
                                                  BasicBlockInContext<IExplodedBasicBlock> ret) {

        SSAInstruction inst = FlowFunctionUtils.getInstruction(src);

        if (inst instanceof SSAInvokeInstruction invokeInst) {
            if (FlowFunctionUtils.isLibraryCall(invokeInst.getCallSite())) {
                //get the parameters passed to this function and
                return d1 -> {
                    MutableIntSet result = MutableSparseIntSet.makeEmpty();
                    if (!invokeInst.isStatic()) {
                        FlowFact thisFact = new FlowFact(src.getNode(), invokeInst.getUse(0), null, IFCLabel.SECRET);
                        result.add(domain.add(thisFact));
                    }
                    for (int i=1; i < invokeInst.getNumberOfUses(); ++i) {
                        FlowFact paramI = new FlowFact(src.getNode(), invokeInst.getUse(i), null, IFCLabel.SECRET);
                        result.add(domain.add(paramI));
                    }
                    return result;
                };
            }
        }

        if (inst instanceof SSAReturnInstruction returnInst) {
            return d1 -> {
                MutableIntSet result = MutableSparseIntSet.makeEmpty();
                result.add(d1);

                // map the return value if it exists
                for (int i = 0; i < returnInst.getNumberOfUses(); ++i) {
                    int newFactId = domain.add(new FlowFact(src.getNode(), returnInst.getUse(i), null, IFCLabel.PUBLIC));
                    result.add(newFactId);
                }
                return result;
            };
        }

        return FlowFunctionUtils.emptyFunction();
        // create a new return node for the
//        return d1 -> {
//
//        };
//        if (ret == null) {
//            return FlowFunctionUtils.emptyFunction();
//        }
//
//        if (ret.isExitBlock()) {
//            return FlowFunctionUtils.emptyFunction();
//        }
//
//        return FlowFunctionUtils.emptyFunction();
//        return (IUnaryFlowFunction) super.getReturnFlowFunction(src, calledFunc, ret);
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

    /**
     *
     * @param call --> the call block
     * @param src --> destinat
     * @param dest --> instruction
     * @return
     */

    @Override
    public IFlowFunction getReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> call, BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dest) {
        SSAInvokeInstruction invoke = (SSAInvokeInstruction) FlowFunctionUtils.getInstruction(dest);
        System.out.println("JP.... getReturnFlowFunction    " + call);
        if (FlowFunctionUtils.isLibraryCall(invoke.getCallSite())) {
            System.out.println("JP....  crating empty function " + call + " " + dest.getLastInstruction());
            return FlowFunctionUtils.emptyFunction();
        }
        if (isBridgeCall(invoke))
            return transformSummaryToFlowFunction(dest.getNode(), invoke);
        else
            return FlowFunctionUtils.emptyFunction();
//            return super.getCallFlowFunction(call, src , dest);

    }
}
