package de.unipassau.ifc;

import com.ibm.wala.classLoader.IClass;
import com.ibm.wala.classLoader.IMethod;
import com.ibm.wala.dataflow.IFDS.BackwardsSupergraph;
import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
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
import de.unipassau.frontend.AndroidAnalysis;
import de.unipassau.dbinterfaces.BridgedMethod;
import de.unipassau.dbinterfaces.BridgedMethodList;
import de.unipassau.utils.SourceSinkManager;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Optional;
import java.util.Set;

public class InvokingMethodDriver {

    protected TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, FlowFact> result = null;
    protected CGNode entrypoint;
    protected FlowFactDomain domain;
    protected SourceSinkManager sourceSinkManager;
    protected BackwardsSupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph;
    protected SourceSinkManager ssm;
    protected TabulationSolver<BasicBlockInContext<IExplodedBasicBlock>, CGNode, FlowFact> solver;
    protected InvokingFunctionFlowFunction flowfunctions;
    protected BridgedMethodList bridgedMethods;
    protected InvokingMethodFlowProblem problem;
//    protected BackwardIFCAnalysisProblem problem;

    public InvokingMethodDriver(CGNode entrypoint,
                                FlowFactDomain domain,
                                BackwardsSupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph,
                                SourceSinkManager ssm,
                                BridgedMethodList bridgedMethods,
                                HashMap<CGNode, Set<FlowPathFact>> summary) {
        this.entrypoint = entrypoint;
        this.domain = domain;
        this.flowfunctions = new InvokingFunctionFlowFunction(entrypoint, domain, ssm, bridgedMethods, summary);
        this.ssm = ssm;
        this.supergraph = supergraph;
        this.bridgedMethods = bridgedMethods;
        this.problem = new InvokingMethodFlowProblem(entrypoint, domain, supergraph, sourceSinkManager, flowfunctions, bridgedMethods);
    }


    protected TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, FlowFact> analyze() {
        assert this.supergraph != null;
        this.solver = TabulationSolver.make(problem);
        try {
            this.result = solver.solve();
            return this.result;
        } catch (CancelException e) {
            throw new IllegalStateException("Failed to solve the constraints");
        }
    }

    public TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, FlowFact> getResults() {
        buildresults();
        return this.result;
    }

    public Set<FlowFact> getResult(BasicBlockInContext<IExplodedBasicBlock> node) {
        Set<FlowFact> factset = new HashSet<>();
        var noderesult = result.getResult(node);
        var noderesultIterator = noderesult.intIterator();
        while (noderesultIterator.hasNext()) {
            int i = noderesultIterator.next();
            var object = domain.getMappedObject(i);
            factset.add(object);
        }
        return factset;
    }


    public void buildresults() {
        if (result == null) {
            analyze();
        }
    }

    public Set<FlowFact> collectSummaryPaths() {
        assert result != null;
        Set<FlowFact> pathEdges = HashSetFactory.make();
        for (var supernode : supergraph) {
            var reachableFacts = result.getResult(supernode);
            if (supernode.getNode().equals(entrypoint)) {
                reachableFacts.foreach(factId -> pathEdges.add(domain.getMappedObject(factId)));
            }
        }
        return pathEdges;
    }

    public void printResultsEntryNode() {
        assert result != null;
        for (var sgnode : supergraph) {
            var reachableNodes = result.getResult(sgnode);
            if (sgnode.getNode().equals(entrypoint)) {
                System.out.println(sgnode + " [ " + sgnode.getDelegate().getInstruction() + " ] " + reachableNodes);
                reachableNodes.foreach(i -> System.out.println(domain.getMappedObject(i) + " "));
            }
        }
    }


    private static Optional<CGNode> findCGNodeForBridgeMethod(BridgedMethod method, AndroidAnalysis analysis) throws CancelException {
        IClass clazz = analysis.getCha().lookupClass(TypeReference.find(ClassLoaderReference.Application, method.clazz()));
        assert clazz != null;
        IMethod entrypointmethod = clazz.getMethod(Selector.make(method.signature()));
        assert entrypointmethod != null;
        return analysis.callgraph().stream().filter(node -> node.getMethod().equals(entrypointmethod)).findFirst();
    }


    public static InvokingMethodDriver make(AndroidAnalysis analysis, BridgedMethod method, SourceSinkManager ssm, BridgedMethodList bridgedMethods, HashMap<CGNode, Set<FlowPathFact>> summaries) throws CancelException {
        var supergraph = BackwardsSupergraph.make(ICFGSupergraph.make(analysis.callgraph()));
        var entrypoint = findCGNodeForBridgeMethod(method, analysis);
        System.out.println(entrypoint.map(ep -> ep.getIR().toString()).orElse("No insturctions"));

        return entrypoint.map(cgNode -> new InvokingMethodDriver(
                cgNode,
                new FlowFactDomain(),
                supergraph,
                ssm,
                bridgedMethods,
                summaries)
        ).orElse(null);
    }
}
