package de.unipassau.ifc;

import com.google.common.base.Strings;
import com.ibm.wala.cast.js.ipa.callgraph.JSCallGraphUtil;
import com.ibm.wala.cast.js.translator.CAstRhinoTranslatorFactory;
import com.ibm.wala.cast.js.util.JSCallGraphBuilderUtil;
import com.ibm.wala.core.util.strings.Atom;
import com.ibm.wala.dataflow.IFDS.BackwardsSupergraph;
import com.ibm.wala.dataflow.IFDS.ISupergraph;
import com.ibm.wala.dataflow.IFDS.TabulationResult;
import com.ibm.wala.dataflow.IFDS.TabulationSolver;
import com.ibm.wala.ipa.callgraph.AnalysisScope;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.WalaException;
import com.ibm.wala.util.collections.Iterator2Iterable;
import com.ibm.wala.util.collections.Pair;
import de.unipassau.dbinterfaces.BridgedMethodList;
import de.unipassau.utils.SourceSinkManager;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;
import java.util.*;

public class JSAnalysisDriver {

    protected TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, FlowFact> result = null;
    protected CGNode entrypoint;
    protected FlowFactDomain domain;
    protected ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph;
    protected TabulationSolver<BasicBlockInContext<IExplodedBasicBlock>, CGNode, FlowFact> solver;
    protected JSAnalysisFlowFunction flowfunctions;
    protected JSAnalysisProblem problem;

    public JSAnalysisDriver(CGNode entrypoint, ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph, HashMap<CGNode, Set<FlowPathFact>> bridgesummaries) {
        this.entrypoint = entrypoint;
        this.supergraph = supergraph;
        this.domain = new FlowFactDomain();
        this.problem = new JSAnalysisProblem(entrypoint, supergraph,bridgesummaries);
    }

    protected TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, FlowFact> analyze() {
        this.solver = TabulationSolver.make(this.problem);
        try {
            this.result = solver.solve();
            return this.result;
        } catch (CancelException e) {
            throw new IllegalStateException("Failed to solve the constraints");
        }
    }


    public TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, FlowFact> getResults() {
        assert this.result != null;
        return this.result;
    }

}
