package iwandroid.main;

import com.ibm.wala.dataflow.IFDS.BackwardsSupergraph;
import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cha.ClassHierarchyException;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.WalaException;
import com.ibm.wala.util.collections.HashMapFactory;
import iwandroid.dbinterfaces.BridgedMethod;
import iwandroid.dbinterfaces.BridgedMethodDb;
import iwandroid.frontend.AndroidAnalysis;
import iwandroid.frontend.JSAnalysis;
import iwandroid.ifc.*;
import iwandroid.utils.Config;
import iwandroid.utils.SourceSinkManager;
import iwandroid.utils.Timer;
import org.jetbrains.annotations.NotNull;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.*;

public class Analyzer {

    private final Logger logger = LoggerFactory.getLogger(Config.TOOLNAME);

    private final HashMap<CGNode, Set<FlowPathFact>> bridgesummaries;

    private final Config config;

    private void computeBridgeMethodSummary(AndroidAnalysis analysis, BridgedMethod method,
                                            SourceSinkManager ssm) throws CancelException {
        logger.info("Computing Bridge Method Summary for {}", method);
        BridgeMethodIFCSummaryDriver summary = BridgeMethodIFCSummaryDriver.make(analysis, method, ssm);
        if (summary != null) {
            summary.buildresults();
            bridgesummaries.put(summary.getBridgeNode(), summary.collectSummaryPaths());
            printInfluencedPaths(summary.getInfluencedVariables());
        }
    }

    private void printInfluencedPaths(Set<FlowFact> influencedPaths) {
        for (var path : influencedPaths) {
            System.out.println("Influenced Path " + " " + path.getCGNode() + " " +  path.getBase() + " "  + path.fieldgraph());
        }
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
        List<BridgedMethod> bridgedMethods = BridgedMethodDb.load(config.getDatabase()).selectByAppName(config.getAppName());

        if (bridgedMethods.isEmpty()) {
            logger.info("Could not find bridge methods for {}. Terminating Analysis", apk);
        } else {
            var ssm = SourceSinkManager.make(config.getSusiFile());
            timer.startTimer();
            logger.info("Android Analysis Start:  {}", timer.lap());
            runAndroidAnalysis(androidJar, apk, bridgedMethods, ssm);

            Path jsDir = Path.of(config.getJsDir());
            Path jsFile = Path.of(config.getJsFilepath());
            runJsAnalysis(jsDir.toString(), jsFile.toString());
            logger.info("Time taken for JS analysis (in sec) {}", timer.lap());

            timer.stopTimer();
            logger.info("Time taken (in seconds) {}", timer.timeTaken());
        }
    }



    private void runJsAnalysis(String jsDir, String jsFile) throws WalaException, IOException, CancelException {
        // PHASE 2: compute the summary of the javascript files
        System.out.println("Analyzing javascript code " + Paths.get(jsDir, jsFile));
        var analysis = new JSAnalysis(jsDir, jsFile);
        var entrynodes = new ArrayList<>(analysis.getCallGraph().getEntrypointNodes());
        var supergraph = ICFGSupergraph.make(analysis.getCallGraph());
        System.out.println("Computed Javascript Callgraph ");
        var appEntryNode = entrynodes.get(0);
        JSAnalysisDriver driver = new JSAnalysisDriver(appEntryNode, supergraph, bridgesummaries);
        System.out.println("IFC analysis");
        driver.analyze();
//        System.out.println(driver.getResults());
    }


    private void runAndroidAnalysis(String androidJar, String apk, @NotNull List<BridgedMethod> bridgedMethods, SourceSinkManager ssm) throws CancelException, ClassHierarchyException, IOException {
        // PHASE 1(a): compute the summary of the bridge methods
        System.out.println("Generating Callgraph for Android");
        var analysis = new AndroidAnalysis(androidJar, apk);
        for (var bridgeMethod : bridgedMethods) {
            System.out.println("Computing summary for bridged method " + bridgeMethod.toString());
            computeBridgeMethodSummary(analysis, bridgeMethod, ssm);
            String clazz = bridgeMethod.initiatingClass();
            String method = bridgeMethod.initiatingMethod();
            // PHASE 1(b): compute the summary of the ifc methods
            Optional<CGNode> invokingMethod = FlowFunctionUtils.findCGNodeForBridgeMethod(clazz, method, analysis);
            assert invokingMethod.isPresent();
            System.out.println("Computing summary information " + invokingMethod.get().getMethod().toString());
            computeInvokingMethodSummary(analysis, invokingMethod.get(), bridgedMethods, ssm);
        }
//        String clazz = bridgedMethods.get(0).initiatingClass();
//        String method = bridgedMethods.get(0).initiatingMethod();
//
//        Optional<CGNode> invokingMethod = FlowFunctionUtils.findCGNodeForBridgeMethod(clazz, method, analysis);
//        assert invokingMethod.isPresent();
//        computeInvokingMethodSummary(analysis, invokingMethod.get(), bridgedMethods, ssm);
    }
}
