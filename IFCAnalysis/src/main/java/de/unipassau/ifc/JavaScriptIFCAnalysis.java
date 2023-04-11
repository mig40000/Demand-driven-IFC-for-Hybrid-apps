package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.*;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.SSAInvokeInstruction;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import de.unipassau.dbinterfaces.BridgedMethod;
import de.unipassau.utils.SourceSinkManager;

import java.util.HashMap;
import java.util.Optional;
import java.util.Set;

public class JavaScriptIFCAnalysis extends  AbstractIfcAnalysis<BasicBlockInContext<IExplodedBasicBlock>, CGNode, FlowFactDomain> {

    protected HashMap<BridgedMethod, BridgeMethodIFCSummaryDriver> bridgesummaries;

    protected JavaScriptIFCAnalysis(CGNode bridgeNode, FlowFactDomain domain, ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph, HashMap<BridgedMethod, BridgeMethodIFCSummaryDriver> bridgesummaries, SourceSinkManager manager) {
        super(bridgeNode, domain, supergraph);
        this.bridgesummaries = bridgesummaries;
    }


}
