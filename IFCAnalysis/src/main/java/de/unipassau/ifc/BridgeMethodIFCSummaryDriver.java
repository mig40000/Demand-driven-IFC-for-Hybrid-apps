package de.unipassau.ifc;

import com.ibm.wala.classLoader.IClass;
import com.ibm.wala.classLoader.IMethod;
import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.dataflow.IFDS.ISupergraph;
import com.ibm.wala.dataflow.IFDS.TabulationResult;
import com.ibm.wala.dataflow.IFDS.TabulationSolver;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.types.ClassLoaderReference;
import com.ibm.wala.types.Selector;
import com.ibm.wala.types.TypeReference;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.collections.HashSetFactory;
import de.unipassau.analysis.AndroidAnalysis;
import de.unipassau.dbinterfaces.BridgedMethod;
import de.unipassau.utils.SourceSinkManager;

import java.util.HashSet;
import java.util.Optional;
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
//        for (int i=0; i < entrynodes.length; ++i) {
//            var entrynode = entrynodes[i];
//            Queue<BasicBlockInContext<IExplodedBasicBlock>> worklist = new ArrayDeque<>();
//            nodes.add(entrynode);
//
//            while (!worklist.isEmpty()) {
//                var node = worklist.remove();
//                System.out.println(result.getResult(node));
//
//            }
//        }
    }

//    public List<IfcAnalysisFactPathEdge> getResultsEntryNode() {
//        buildresults();
//        var entrynodes = supergraph.getEntriesForProcedure(bridgeNode);
//        ArrayList<IfcAnalysisFactPathEdge> edges = new ArrayList<>();
//        for (var entrynode : entrynodes) {
//            int entrynodeNb = supergraph.getLocalBlockNumber(entrynode);
//            var pathedges = solver.getLocalPathEdges(entrynode);
//            var reachableFacts = result.getResult(entrynode);
////            reachableFacts.foreach(d1 -> System.out.println(pathedges.getReachable(entrynodeNb, d1)));
//            reachableFacts.foreach(d1 -> {
//                var factU = domain.getMappedObject(d1);
//                var reachFactPrime = pathedges.getReachable(entrynodeNb, d1);
//                reachFactPrime.foreach(d2 -> {
//                    var factV = domain.getMappedObject(d2);
//                    edges.add(IfcAnalysisFactPathEdge.make(factU, factV));
//                });
//            });
//        }
//        return edges;
//    }


//    public ArrayList<DataflowPathEdge> getEntryNodeSummaryEdges() {
//        cacheresults();
//        ArrayList<DataflowPathEdge> edges = new ArrayList<>();
//        var entrynodes = supergraph.getEntriesForProcedure(bridgeNode);
//        ArrayDeque<BasicBlockInContext<IExplodedBasicBlock>> queue = new ArrayDeque<>(Arrays.asList(entrynodes));
//        List<BasicBlockInContext<IExplodedBasicBlock>> visited = new ArrayList<>();
//
//        System.out.println(domain);
//        while (!queue.isEmpty()) {
//            var bbNode = queue.pop();
//            visited.add(bbNode);
//            for (var successor : new Iterator2Iterable<>(supergraph.getSuccNodes(bbNode))) {
//                if (Arrays.stream(entrynodes).anyMatch(entrynode -> entrynode.getNode().equals(bbNode.getNode()))) {
////                    System.out.println(successor);
//                    var reachablefacts = result.getResult(bbNode);
//                    reachablefacts.foreach(di -> {
//                        var ifcFactU = domain.getMappedObject(di);
//                        var summary = result.getSummaryTargets(bbNode, di, successor);
//                        if (summary != null) {
//                            for (int dj = 0; dj < summary.size(); ++dj) {
//                                if (summary.contains(dj)) {
//                                    var ifcFactV = domain.getMappedObject(dj);
//                                    System.out.println("Added fact " + ifcFactU + " and " + ifcFactV);
//                                    edges.add(DataflowPathEdge.of(ifcFactU, ifcFactV));
//                                }
//                            }
//                        }
//                    });
//                    if (!visited.contains(successor)) {
//                        queue.add(successor);
//                    }
//                }
//            }
//        }
//        return edges;
//    }


    private static Optional<CGNode> findCGNodeForBridgeMethod(BridgedMethod method, AndroidAnalysis analysis) throws CancelException {
        IClass clazz = analysis.getCha().lookupClass(TypeReference.find(ClassLoaderReference.Application, method.clazz()));
        assert clazz != null;
        IMethod entrypointmethod = clazz.getMethod(Selector.make(method.signature()));
        assert entrypointmethod != null;
        return analysis.callgraph().stream().filter(node -> node.getMethod().equals(entrypointmethod)).findFirst();
    }

    public static BridgeMethodIFCSummaryDriver make(AndroidAnalysis analysis, BridgedMethod method, SourceSinkManager ssm) throws CancelException {
        var supergraph = ICFGSupergraph.make(analysis.callgraph());
        var entrypoint = findCGNodeForBridgeMethod(method, analysis);
        System.out.println(entrypoint.map(ep -> ep.getIR().toString()).orElse("No insturctions"));
        return entrypoint.map(cgNode -> new BridgeMethodIFCSummaryDriver(cgNode, supergraph, new FlowPathFactDomain(), ssm)).orElse(null);
    }
}
