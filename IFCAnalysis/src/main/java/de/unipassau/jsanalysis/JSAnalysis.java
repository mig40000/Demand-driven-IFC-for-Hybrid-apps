package de.unipassau.jsanalysis;

import com.ibm.wala.cast.js.ipa.callgraph.JSCallGraphUtil;
import com.ibm.wala.classLoader.Module;
import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.ipa.callgraph.CallGraph;

public class JSAnalysis {
    private ICFGSupergraph supergraph = null;
    public JSAnalysis(CallGraph jsCallG) {
        this.supergraph = ICFGSupergraph.make(jsCallG);
    }
}
