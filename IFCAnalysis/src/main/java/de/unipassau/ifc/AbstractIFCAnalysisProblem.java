package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.*;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import de.unipassau.utils.SourceSinkManager;

public abstract class AbstractIFCAnalysisProblem implements TabulationProblem<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IfcAnalysisFact> {

    protected CGNode entrypoint;
    protected IFCAnalysisFactDomain domain;
    protected IfcAnalysisFlowFunctions flowFunctions;
    protected ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph;

    protected AbstractIFCAnalysisProblem(CGNode node, IFCAnalysisFactDomain domain, ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph, SourceSinkManager manager) {
        super();
        this.entrypoint = node;
        this.domain = domain;
        this.flowFunctions = new IfcAnalysisFlowFunctions(node, domain, manager);
        this.supergraph = supergraph;
    }

    public int addToDomain(IfcAnalysisFact fact) {
        return this.domain.add(fact);
    }

    @Override
    public ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> getSupergraph() {
        return this.supergraph;
    }

    @Override
    public IFCAnalysisFactDomain getDomain() {
        return this.domain;
    }

    @Override
    public IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> getFunctionMap() {
        return flowFunctions;
    }

    @Override
    public IMergeFunction getMergeFunction() {
        return null;
    }
}
