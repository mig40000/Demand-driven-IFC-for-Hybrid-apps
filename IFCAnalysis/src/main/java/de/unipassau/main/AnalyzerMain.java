package de.unipassau.main;

import com.ibm.wala.dataflow.IFDS.BackwardsSupergraph;
import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cha.ClassHierarchyException;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.WalaException;
import de.unipassau.dbinterfaces.BridgedMethod;
import de.unipassau.dbinterfaces.BridgedMethodList;
import de.unipassau.frontend.AndroidAnalysis;
import de.unipassau.frontend.JSAnalysis;
import de.unipassau.ifc.*;
import de.unipassau.utils.SourceSinkManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.Set;

public class AnalyzerMain {


    private final Logger logger = LoggerFactory.getLogger(AnalyzerMain.class.getName());

    private HashMap<CGNode, Set<FlowPathFact>> bridgesummaries;

    private final Config config;

    private void computeBridgeMethodSummary(AndroidAnalysis analysis, BridgedMethod method,
                                            SourceSinkManager ssm) throws CancelException {
        BridgeMethodIFCSummaryDriver summary = BridgeMethodIFCSummaryDriver.make(analysis, method, ssm);
        summary.buildresults();
        bridgesummaries.put(summary.getBridgeNode(), summary.collectSummaryPaths());
    }

    public AnalyzerMain(Config config) {
        this.config = config;
    }

    private void computeInvokingMethodSummary(AndroidAnalysis analysis, CGNode invokingMethod, List<BridgedMethod> methods,
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


    public void run() throws WalaException, IOException, CancelException {
        String androidJar = config.getAndroidJarpath();
        String apk = config.getApk();
        List<BridgedMethod> bridgedMethods = BridgedMethodList.load(config.getDatabase()).selectByAppName(config.getApk());
        var ssm = SourceSinkManager.make(config.getSourceSinkFile());
        runAndroidAnalysis(androidJar, apk, bridgedMethods, ssm);

        Path jsDir = Path.of(config.getJsDir());
        Path jsFile = Path.of(config.getJsFilepath());
        runJsAnalysis(jsDir.toString(), jsFile.toString());
    }

    private void runJsAnalysis(String jsDir, String jsFile) throws WalaException, IOException, CancelException {
        // PHASE 2: compute the summary of the javascript files
//        Set<Path> files = Files.find(jsDir, 5, ((path, fileAttr) -> fileAttr.isRegularFile() && path.endsWith(".js"))).collect(Collectors.toSet());
        var analysis = new JSAnalysis(jsDir, jsFile);
        var entrynode = analysis.getCallGraph().getFakeRootNode();
        var supergraph = ICFGSupergraph.make(analysis.getCallGraph());
        JSAnalysisDriver driver = new JSAnalysisDriver(entrynode, supergraph, bridgesummaries);
        System.out.println(driver.getResults());
    }


    private void runAndroidAnalysis(String androidJar, String apk, List<BridgedMethod> bridgedMethods, SourceSinkManager ssm) throws CancelException, ClassHierarchyException, IOException {
        // PHASE 1(a): compute the summary of the bridge methods
        var analysis = new AndroidAnalysis(androidJar, apk);
        for (var method : bridgedMethods) {
            if (method.appName().equals(apk)) {
                computeBridgeMethodSummary(analysis, method, ssm);
            }
        }
        // PHASE 1(b): compute the summary of the ifc methods
        // TODO: Replace it with parameters from the database when avaialble
        Optional<CGNode> invokingMethod = FlowFunctionUtils.findCGNodeForBridgeMethod(
                "Lcom/example/hellohybrid/MainActivity",
                "onCreate(Landroid/os/Bundle;)V",
                analysis);
        assert invokingMethod.isPresent();
        computeInvokingMethodSummary(analysis, invokingMethod.get(), bridgedMethods, ssm);
    }
}
