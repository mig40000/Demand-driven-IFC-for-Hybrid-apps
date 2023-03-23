package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.dataflow.IFDS.ISupergraph;
import com.ibm.wala.dataflow.IFDS.TabulationResult;
import com.ibm.wala.dataflow.IFDS.TabulationSolver;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.CancelException;
import de.unipassau.utils.IFDSSolutionCollector;

import java.util.Collection;

public abstract class AbstractIfcAnalysis<T, P, F> {

    protected final ISupergraph<T, P> supergraph;
    protected final P bridgeNode;
    protected final F domain;

    protected AbstractIfcAnalysis(P bridgeNode, F domain, ISupergraph<T, P> supergraph) {
        this.supergraph = supergraph;
        this.bridgeNode = bridgeNode;
        this.domain = domain;
    }

//    protected abstract TabulationResult<T, P, F> analyze();

//    Collection<F> collectSolutions() {
//        IFDSSolutionCollector<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IfcAnalysisFact> solution = new IFDSSolutionCollector<T, P, F>(analyze(), domain);
//        return solution.collectSolutions();
//    }

}
