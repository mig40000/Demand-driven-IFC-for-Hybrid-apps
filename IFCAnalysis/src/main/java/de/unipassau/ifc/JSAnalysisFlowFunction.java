package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.IUnaryFlowFunction;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.SSAInvokeInstruction;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.intset.MutableIntSet;
import com.ibm.wala.util.intset.MutableSparseIntSet;
import de.unipassau.dbinterfaces.BridgedMethod;
import de.unipassau.utils.SourceSinkManager;

import java.util.HashMap;
import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

public class JSAnalysisFlowFunction extends ForwardAnalysisFlowFunctions {


    private final HashMap<CGNode, Set<FlowPathFact>> bridgeSummaries;

    public JSAnalysisFlowFunction(JavaScriptIFCAnalysis javaScriptIFCAnalysis, CGNode entryPoint, FlowFactDomain domain, SourceSinkManager sourcesinkmanager, HashMap<CGNode, Set<FlowPathFact>> bridgesummaries) {
        super(entryPoint, domain, sourcesinkmanager);
        this.bridgeSummaries = bridgesummaries;
    }

    @Override
    public IUnaryFlowFunction getCallFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dst, BasicBlockInContext<IExplodedBasicBlock> ret) {
        SSAInvokeInstruction invoke = (SSAInvokeInstruction) FlowFunctionUtils.getInstruction(src);

        assert invoke != null;
        // In the case of call to bridge interfaces, then directly insert the summaries
        // Otherwise, handle it like a normal flow function to the the called function
        if (invokesBridgeMethod(invoke)) {
            // get the methods of the bridge summaries and propagate the summaries for the bridge methods
            return generateBridgeSummaryFunction(bridgeSummaries.get(dst.getNode()), src, dst);
        }
        return null;
    }

    private IUnaryFlowFunction generateBridgeSummaryFunction(Set<FlowPathFact> flowPathFacts,
                                                             BasicBlockInContext<IExplodedBasicBlock> src,
                                                             BasicBlockInContext<IExplodedBasicBlock> dst) {
        // map each path of the destination node to the source node
        // update the
        return d1 -> {
            SSAInvokeInstruction invoke = (SSAInvokeInstruction) FlowFunctionUtils.getInstruction(src);
            assert invoke != null;
            MutableIntSet result = MutableSparseIntSet.makeEmpty();

            for (int paramI = 0; paramI < invoke.getNumberOfPositionalParameters(); ++paramI) {
                int aArg = invoke.getUse(paramI);
                var flowfact = domain.getMappedObject(d1);
                if (flowfact.getBase() == aArg) {
                    // find it in formal parameter and build the summary function
                    CGNode targetNode = dst.getNode();
                    int finalParamI = paramI;
                    var paths = flowPathFacts.stream().filter(path -> path.init().getCGNode().equals(targetNode) && (path.init().getBase() == finalParamI));
                    paths.forEach(path -> {
                        int newInitFact = domain.add(
                                new FlowFact(src.getNode(), path.init().getBase(), path.init().fieldgraph(), path.init().ifclabel()));
                        int newTailFact = domain.add(
                                new FlowFact(src.getNode(), path.last().getBase(), path.last().fieldgraph(), path.last().ifclabel()));
                        result.add(newInitFact);
                        result.add(newTailFact);
                    });
                }
            }
            return result;
        };
    }


    private Set<CGNode> getBridgeMethods() {
        return bridgeSummaries.keySet();
    }


    private boolean invokesBridgeMethod(SSAInvokeInstruction instruction) {
        var target = instruction.getDeclaredTarget();
        return getBridgeMethods().stream().anyMatch(method -> method.getMethod().getReference().equals(target));
    }

} // JSAnalysisFunction
