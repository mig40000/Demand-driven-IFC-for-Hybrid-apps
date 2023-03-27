package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.*;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.intset.IntSet;

import java.util.HashSet;
import java.util.Set;

public class BridgeFuncIfcSummary extends AbstractIfcAnalysis<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IFCAnalysisFactDomain> {

    protected TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IfcAnalysisFact> result = null;

    public BridgeFuncIfcSummary(ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph, CGNode bridgeNode, IFCAnalysisFactDomain domain) {
        super(bridgeNode, domain, supergraph);
    }

    protected TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IfcAnalysisFact> analyze() {
        var solver = TabulationSolver.make(new ForwardIFCAnalysisProblem(bridgeNode, domain, supergraph));
        try {
            this.result = solver.solve();
            return this.result;
        } catch (CancelException e) {
            throw new IllegalStateException("Failed to solve the constraints");
        }
    }

    public TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IfcAnalysisFact> getResults() {
        return this.result;
    }

    public Set<IfcAnalysisFact> getResult(BasicBlockInContext<IExplodedBasicBlock> node) {
        Set<IfcAnalysisFact> factset = new HashSet<>();
        var noderesult = result.getResult(node);
        noderesult.foreach(i -> factset.add(domain.getMappedObject(i)));
        return factset;
    }

}
