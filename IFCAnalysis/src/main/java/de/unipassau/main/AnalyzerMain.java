package de.unipassau.main;

import com.ibm.wala.dataflow.IFDS.BackwardsSupergraph;
import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cha.ClassHierarchyException;
import com.ibm.wala.util.CancelException;
import de.unipassau.analysis.AndroidAnalysis;
import de.unipassau.dbinterfaces.BridgedMethod;
import de.unipassau.dbinterfaces.BridgedMethodList;
import de.unipassau.ifc.*;
import de.unipassau.utils.SourceSinkManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.util.HashMap;
import java.util.Optional;
import java.util.Set;

public class AnalyzerMain {


    private final Logger logger = LoggerFactory.getLogger(AnalyzerMain.class.getName());

    private HashMap<CGNode, Set<FlowPathFact>> bridgesummaries;

    private void computeBridgeMethodSummary(AndroidAnalysis analysis, BridgedMethod method,
                                            SourceSinkManager ssm) throws CancelException {
        BridgeMethodIFCSummaryDriver summary = BridgeMethodIFCSummaryDriver.make(analysis, method, ssm);
        summary.buildresults();
        bridgesummaries.put(summary.getBridgeNode(), summary.collectSummaryPaths());
    }

    private void computeInvokingMethodSummary(AndroidAnalysis analysis, CGNode invokingMethod, BridgedMethodList methods,
                                              SourceSinkManager ssm) throws CancelException {
        var supergraph = ICFGSupergraph.make(analysis.callgraph());
        var methodanalysis = new InvokingMethodDriver(
                invokingMethod,
                new FlowFactDomain(),
                BackwardsSupergraph.make(supergraph),
                ssm,
                methods,
                bridgesummaries
        );
        methodanalysis.buildresults();
        methodanalysis.collectSummaryPaths().forEach(path -> logger.debug(path.toString()));
    }

    public void run() throws ClassHierarchyException, IOException, CancelException {
        String androidJar = Config.getInstance().getAndroidJarpath();
        String apk = Config.getInstance().getApk();
        var analysis = new AndroidAnalysis(androidJar, apk);
        var bridgedMethods = BridgedMethodList.load(Config.getInstance().getDatabase());

        var ssm = SourceSinkManager.make(Config.getConfig().getSourceSinkFile());

        // PHASE 1(a): compute the summary of the bridge methods
        for (var method : bridgedMethods) {
            computeBridgeMethodSummary(analysis, method, ssm);
        }

        // PHASE 1(b): compute the summary of the ifc methods
        // TODO: Replace it with parameters from the database when avaialble
        Optional<CGNode> invokingMethod = FlowFunctionUtils.findCGNodeForBridgeMethod(
                "Lcom/example/hellohybrid/MainActivity",
                "onCreate(Landroid/os/Bundle;)V",
                analysis);
        assert invokingMethod.isPresent();
        computeInvokingMethodSummary(analysis, invokingMethod.get(), bridgedMethods, ssm);

        // PHASE 2: compute the summary of the

    }
}
