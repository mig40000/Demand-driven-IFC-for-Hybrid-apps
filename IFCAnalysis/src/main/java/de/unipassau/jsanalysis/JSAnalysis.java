package de.unipassau.jsanalysis;

import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import de.unipassau.ifc.ForwardIFCAnalysisProblem;
import de.unipassau.ifc.IFCAnalysisFactDomain;
import de.unipassau.ifc.IfcAnalysisFlowFunctions;
import de.unipassau.utils.SourceSinkManager;

public class JSAnalysis {
    private ICFGSupergraph supergraph = null;
    private IfcAnalysisFlowFunctions flowFunctions = null;
    CGNode entrypoint;
    IFCAnalysisFactDomain domain = null;

    public JSAnalysis(CallGraph jsCallG, CGNode entrypoint, SourceSinkManager manager) {
        this.supergraph = JSSupergraph.make(jsCallG);
        domain = new IFCAnalysisFactDomain();
        flowFunctions = new IfcAnalysisFlowFunctions(entrypoint, domain, manager);
    }

    public void run() {
//        ForwardIFCAnalysisProblem analysis = new ForwardIFCAnalysisProblem(entrypoint, domain, supergraph);
    }
}
