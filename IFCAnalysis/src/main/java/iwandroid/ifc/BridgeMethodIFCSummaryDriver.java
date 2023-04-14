package iwandroid.ifc;

import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.dataflow.IFDS.ISupergraph;
import com.ibm.wala.dataflow.IFDS.TabulationResult;
import com.ibm.wala.dataflow.IFDS.TabulationSolver;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.collections.HashSetFactory;
import iwandroid.frontend.AndroidAnalysis;
import iwandroid.dbinterfaces.BridgedMethod;
import iwandroid.utils.SourceSinkManager;

import java.util.HashSet;
import java.util.Set;

public class BridgeMethodIFCSummaryDriver {

    protected TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, FlowPathFact> result = null;
    protected CGNode bridgeNode;
    protected FlowPathFactDomain domain;
    protected SourceSinkManager sourceSinkManager;
    protected ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph;
    protected SourceSinkManager ssm;
    protected TabulationSolver<BasicBlockInContext<IExplodedBasicBlock>, CGNode, FlowPathFact> solver;
    protected BridgeSummaryFlowfunctions flowfunctions;
    protected BridgeMethodPathSummaryProblem problem;

    protected BridgeMethodIFCSummaryDriver(CGNode bridgeNode,
                                           ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph,
                                           FlowPathFactDomain domain, SourceSinkManager manager) {
        this.bridgeNode = bridgeNode;
        this.ssm = manager;
        this.supergraph = supergraph;
        this.domain = domain;
        this.flowfunctions = new BridgeSummaryFlowfunctions(domain, bridgeNode, ssm);
        this.problem = new BridgeMethodPathSummaryProblem(bridgeNode, domain, supergraph, ssm, this.flowfunctions);
    }

    protected TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, FlowPathFact> analyze() {
        this.solver = TabulationSolver.make(this.problem);
        try {
            this.result = solver.solve();
            return this.result;
        } catch (CancelException e) {
            throw new IllegalStateException("Failed to solve the constraints");
        }
    }

    public TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, FlowPathFact> getResults() {
        buildresults();
        return this.result;
    }

    public Set<FlowPathFact> getResult(BasicBlockInContext<IExplodedBasicBlock> node) {
        Set<FlowPathFact> factset = new HashSet<>();
        var noderesult = result.getResult(node);
        var noderesultIterator = noderesult.intIterator();
        while (noderesultIterator.hasNext()) {
            int i = noderesultIterator.next();
            var object = domain.getMappedObject(i);
            factset.add(object);
        }
//        noderesult.foreach(i -> factset.add(domain.getMappedObject(i)));
        return factset;
    }


    public void buildresults() {
        if (result == null) {
            analyze();
        }
    }

    public Set<FlowPathFact> collectSummaryPaths() {
        assert result != null;
        Set<FlowPathFact> pathEdges = HashSetFactory.make();
        for (var supernode : supergraph) {
            var reachableFacts = result.getResult(supernode);
            if (supernode.getNode().equals(bridgeNode)) {
                reachableFacts.foreach(factId -> pathEdges.add(domain.getMappedObject(factId)));
            }
        }
        return pathEdges;
    }

    public void printResultsEntryNode() {
        assert result != null;
        for (var sgnode : supergraph) {
            var reachableNodes = result.getResult(sgnode);
            if (sgnode.getNode().equals(bridgeNode)) {
                System.out.println(sgnode + " [ " + sgnode.getDelegate().getInstruction() + " ] " + reachableNodes);
                reachableNodes.foreach(i -> System.out.println(domain.getMappedObject(i) + " "));
            }
        }
    }



    public static BridgeMethodIFCSummaryDriver make(AndroidAnalysis analysis, BridgedMethod method, SourceSinkManager ssm) throws CancelException {
        var supergraph = ICFGSupergraph.make(analysis.callgraph());
        var entrypoint = FlowFunctionUtils.findCGNodeForBridgeMethod(method, analysis);
        System.out.println(entrypoint.map(ep -> ep.getIR().toString()).orElse("No insturctions"));
        return entrypoint.map(cgNode -> new BridgeMethodIFCSummaryDriver(cgNode, supergraph, new FlowPathFactDomain(), ssm)).orElse(null);
    }

    public CGNode getBridgeNode() {
        return bridgeNode;
    }
}
