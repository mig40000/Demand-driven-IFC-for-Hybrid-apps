package iwandroid.main;

import com.ibm.wala.dataflow.IFDS.BackwardsSupergraph;
import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cha.ClassHierarchyException;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.WalaException;
import com.ibm.wala.util.collections.HashMapFactory;
import iwandroid.dbinterfaces.BridgedMethod;
import iwandroid.dbinterfaces.BridgedMethodList;
import iwandroid.frontend.AndroidAnalysis;
import iwandroid.frontend.JSAnalysis;
import iwandroid.ifc.*;
import iwandroid.utils.SourceSinkManager;
import iwandroid.utils.Timer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.Set;

public class Analyzer {

    private final Logger logger = LoggerFactory.getLogger(Analyzer.class.getName());

    private final HashMap<CGNode, Set<FlowPathFact>> bridgesummaries;

    private final Config config;

    private void computeBridgeMethodSummary(AndroidAnalysis analysis, BridgedMethod method,
                                            SourceSinkManager ssm) throws CancelException {
        BridgeMethodIFCSummaryDriver summary = BridgeMethodIFCSummaryDriver.make(analysis, method, ssm);
        summary.buildresults();
        bridgesummaries.put(summary.getBridgeNode(), summary.collectSummaryPaths());
    }

    public Analyzer(Config config) {
        this.config = config;
        bridgesummaries = HashMapFactory.make();
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
        Timer timer = new Timer(this.config);
        logger.info("Running {}", config);
        String androidJar = config.getAndroidJarpath();
        String apk = config.getApkFile();
        List<BridgedMethod> bridgedMethods = BridgedMethodList.load(config.getDatabase()).selectByAppName(config.getAppName());

        timer.startTimer();

        var ssm = SourceSinkManager.make(config.getSusiFile());
        runAndroidAnalysis(androidJar, apk, bridgedMethods, ssm);
        logger.info("Android Analysis " + timer.lap());

        Path jsDir = Path.of(config.getJsDir());
        Path jsFile = Path.of(config.getJsFilepath());
        runJsAnalysis(jsDir.toString(), jsFile.toString());
        logger.info("Time taken for JS analysis (in sec) {}", timer.lap());

        timer.stopTimer();
        logger.info("Time taken (in seconds) {}", timer.timeTaken());
    }

    private void runJsAnalysis(String jsDir, String jsFile) throws WalaException, IOException, CancelException {
        // PHASE 2: compute the summary of the javascript files
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
        String clazz = bridgedMethods.get(0).initiatingClass();
        String method = bridgedMethods.get(0).initiatingMethod();

        Optional<CGNode> invokingMethod = FlowFunctionUtils.findCGNodeForBridgeMethod(clazz, method, analysis);
        assert invokingMethod.isPresent();
        computeInvokingMethodSummary(analysis, invokingMethod.get(), bridgedMethods, ssm);
    }
}
