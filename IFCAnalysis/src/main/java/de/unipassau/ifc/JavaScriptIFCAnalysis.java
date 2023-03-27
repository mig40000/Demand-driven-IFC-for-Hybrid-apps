package de.unipassau.ifc;

import com.ibm.wala.core.util.strings.Atom;
import com.ibm.wala.dataflow.IFDS.*;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.SSAInvokeInstruction;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.collections.Pair;
import de.unipassau.dbinterfaces.BridgedMethod;

import java.util.HashMap;
import java.util.Optional;
import java.util.Set;

public class JavaScriptIFCAnalysis extends  AbstractIfcAnalysis<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IFCAnalysisFactDomain> {

    protected HashMap<BridgedMethod, BridgeFuncIfcSummary> bridgesummaries;

    protected JavaScriptIFCAnalysis(CGNode bridgeNode, IFCAnalysisFactDomain domain, ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph, HashMap<BridgedMethod, BridgeFuncIfcSummary> bridgesummaries) {
        super(bridgeNode, domain, supergraph);
        this.bridgesummaries = bridgesummaries;
    }


    private class JSAnalysisFunction extends IfcAnalysisFlowFunctions {


        public JSAnalysisFunction(CGNode entryPoint, IFCAnalysisFactDomain domain) {
            super(entryPoint, domain);
        }

        @Override
        public IUnaryFlowFunction getCallFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dst, BasicBlockInContext<IExplodedBasicBlock> ret) {
            SSAInvokeInstruction invoke = (SSAInvokeInstruction) getInstruction(src);
            // In the case of call to bridge interfaces, then directly insert the summaries
            // Otherwise, handle it like a normal flow function to the the called function
            if (isInvocation2bridgeMethod(invoke)) {
                // get the methods of the bridge summaries and propagate the summaries for the bridge methods
                String clazz = invoke.getDeclaredTarget().getDeclaringClass().getName().getClassName().toString();
                String methodSignature = invoke.getDeclaredTarget().getSignature();
                Optional<BridgedMethod> targetMethod = getBridgeMethods().stream().filter(method -> method.matchClassAndMethodSign(clazz, methodSignature)).findFirst();
                if (targetMethod.isPresent()) {
                    var summary = bridgesummaries.get(targetMethod.get());


                } else {
                    System.err.println("Failed to find bridge methods");
                }
            }
            return null;
        }



        private Set<BridgedMethod> getBridgeMethods() {
            return bridgesummaries.keySet();
        }

        private boolean isInvocation2bridgeMethod(SSAInvokeInstruction instruction) {
            var target = instruction.getDeclaredTarget();
            if (target == null) {
                return false;
            }
            var targetMethod = target.getSignature();
            return getBridgeMethods().stream().anyMatch(method -> targetMethod.equalsIgnoreCase(method.signature()));
        }

    } // JSAnalysisFunction
}
