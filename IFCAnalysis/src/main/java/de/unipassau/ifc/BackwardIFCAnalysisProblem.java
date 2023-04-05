package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.*;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.SymbolTable;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import de.unipassau.utils.SourceSinkManager;

import java.util.ArrayList;
import java.util.Collection;

public class BackwardIFCAnalysisProblem implements TabulationProblem<BasicBlockInContext<IExplodedBasicBlock>, CGNode, FlowFact> {

    private final CGNode entrypoint;
    private final FlowFactDomain domain;
    private final BackwardsSupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph;
    private SourceSinkManager ssm;
    private IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> flowfunctions;

    protected BackwardIFCAnalysisProblem(CGNode entrypoint, FlowFactDomain domain, BackwardsSupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph, SourceSinkManager ssm, IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> flowfunctions) {
        this.entrypoint = entrypoint;
        this.domain = domain;
        this.supergraph = supergraph;
        this.ssm = ssm;
        this.flowfunctions = flowfunctions;
    }

    @Override
    public ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> getSupergraph() {
        return null;
    }

    @Override
    public TabulationDomain<FlowFact, BasicBlockInContext<IExplodedBasicBlock>> getDomain() {
        return domain;
    }

    @Override
    public IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> getFunctionMap() {
        return null;
    }

    @Override
    public Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> initialSeeds() {
        Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> pathEdges = new ArrayList<>();
        var entrypointsg = supergraph.getEntriesForProcedure(this.entrypoint)[0];
        SymbolTable symbolTable = entrypoint.getIR().getSymbolTable();
        for (int i=0; i < symbolTable.getMaxValueNumber(); ++i) {
            FlowFact fact = new FlowFact(this.entrypoint, i, null, IFCLabel.PUBLIC);
            int id = getDomain().add(fact);
            PathEdge<BasicBlockInContext<IExplodedBasicBlock>> edge = PathEdge.createPathEdge(entrypointsg, id, entrypointsg, id);
            pathEdges.add(edge);
        }
        return pathEdges;
    }

    /**
     * Special case: if supportsMerge(), then the problem is not really IFDS anymore. (TODO: rename
     * it?). Instead, we perform a merge operation before propagating at every program point. This
     * way, we can implement standard interprocedural dataflow and ESP-style property simulation, and
     * various other things.
     *
     * @return the merge function, or null if !supportsMerge()
     */
    @Override
    public IMergeFunction getMergeFunction() {
        return null;
    }
}
