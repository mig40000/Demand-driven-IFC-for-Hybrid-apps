package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.*;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.CancelException;

public class BridgeFuncIfcSummary extends AbstractIfcAnalysis<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IFCAnalysisFactDomain> {

    public BridgeFuncIfcSummary(ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph, CGNode bridgeNode, IFCAnalysisFactDomain domain) {
        super(bridgeNode, domain, supergraph);
    }

    protected TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IfcAnalysisFact> analyze() {
        var solver = TabulationSolver.make(new ForwardIFCAnalysisProblem(bridgeNode, domain, supergraph));
        try {
            return solver.solve();
        } catch (CancelException e) {
            throw new IllegalStateException("Failed to solve the constraints");
        }
    }

    
}
