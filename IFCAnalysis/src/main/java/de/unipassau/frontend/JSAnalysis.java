package de.unipassau.frontend;

import com.ibm.wala.cast.js.ipa.callgraph.JSCallGraphUtil;
import com.ibm.wala.cast.js.translator.CAstRhinoTranslatorFactory;
import com.ibm.wala.cast.js.util.JSCallGraphBuilderUtil;
import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.ipa.callgraph.AnalysisScope;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.WalaException;
import de.unipassau.ifc.FlowFactDomain;
import de.unipassau.ifc.ForwardAnalysisFlowFunctions;
import de.unipassau.jsanalysis.JSSupergraph;
import de.unipassau.utils.SourceSinkManager;

import java.io.IOException;
import java.util.Set;

public class JSAnalysis {
    private Set<String> jsfiles;
    private String jsDir;
    CallGraph callGraph;

    public JSAnalysis(String jsDir, String jsfile) throws WalaException, IOException, CancelException {
        com.ibm.wala.cast.js.ipa.callgraph.JSCallGraphUtil.setTranslatorFactory(new CAstRhinoTranslatorFactory());
         this.callGraph = JSCallGraphBuilderUtil.makeScriptCG("dir", jsfile);
    }

    public CallGraph getCallGraph() {
        return callGraph;
    }

    //    private ICFGSupergraph supergraph = null;
//    private ForwardAnalysisFlowFunctions flowFunctions = null;
//    CGNode entrypoint;
//    FlowFactDomain domain = null;
//
//    public JSAnalysis(CallGraph jsCallG, CGNode entrypoint, SourceSinkManager manager) {
//        this.supergraph = JSSupergraph.make(jsCallG);
//        domain = new FlowFactDomain();
//        flowFunctions = new ForwardAnalysisFlowFunctions(entrypoint, domain, manager);
//    }
//
//    public void run() {
////        ForwardIFCAnalysisProblem analysis = new ForwardIFCAnalysisProblem(entrypoint, domain, supergraph);
//    }
}
