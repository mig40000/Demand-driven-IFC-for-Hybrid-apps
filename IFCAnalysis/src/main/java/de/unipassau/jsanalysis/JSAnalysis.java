package de.unipassau.jsanalysis;

import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import de.unipassau.ifc.FlowFactDomain;
import de.unipassau.ifc.ForwardAnalysisFlowFunctions;
import de.unipassau.utils.SourceSinkManager;

public class JSAnalysis {
    private ICFGSupergraph supergraph = null;
    private ForwardAnalysisFlowFunctions flowFunctions = null;
    CGNode entrypoint;
    FlowFactDomain domain = null;

    public JSAnalysis(CallGraph jsCallG, CGNode entrypoint, SourceSinkManager manager) {
        this.supergraph = JSSupergraph.make(jsCallG);
        domain = new FlowFactDomain();
        flowFunctions = new ForwardAnalysisFlowFunctions(entrypoint, domain, manager);
    }

    public void run() {
//        ForwardIFCAnalysisProblem analysis = new ForwardIFCAnalysisProblem(entrypoint, domain, supergraph);
    }
}
