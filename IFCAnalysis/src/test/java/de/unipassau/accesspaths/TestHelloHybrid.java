package de.unipassau.accesspaths;

import com.ibm.wala.ipa.cha.ClassHierarchyException;
import com.ibm.wala.util.CancelException;
import de.unipassau.analysis.AndroidAnalysis;
import de.unipassau.dbinterfaces.BridgedMethod;
import de.unipassau.dbinterfaces.BridgedMethodList;
import de.unipassau.ifc.BridgeMethodIFCSummaryDriver;
import de.unipassau.utils.Config;
import de.unipassau.utils.SourceSinkManager;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.util.*;

public class TestHelloHybrid {
    private String app = "/Users/jyotiprakash/Research/HybridAppsIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/apps/HelloHybrid.apk";
    private List<BridgedMethod> methods = new ArrayList<>();
    String apkfile = "/Users/jyotiprakash/Research/HybridAppsIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/apps/HelloHybrid.apk";
    String androidJar = "/Users/jyotiprakash/Library/Android/sdk/platforms/android-29/android.jar";
    AndroidAnalysis analysis = null;
    private String sourceSinkFile = "src/main/resources/SourcesAndSinks.txt";
    private SourceSinkManager manager;

    @BeforeEach
    public void setUp() throws ClassHierarchyException, IOException {
        var bridgemethods = BridgedMethodList.load("/Users/jyotiprakash/Research/HybridAppsIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/Database/Intent-new.sqlite");
        methods = bridgemethods.getBridgeMethodsInClass("Lcom/example/hellohybrid/JavascriptBridge");
        Config.getConfig().Apk = apkfile;
        Config.getConfig().androidJarpath = androidJar;
        analysis = new AndroidAnalysis(Config.getConfig());
        manager = SourceSinkManager.make("/Users/jyotiprakash/Research/HybridAppsIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/IFCAnalysis/src/main/resources/SourcesAndSinks.txt");
    }


    @Test
    public void testGetName() throws CancelException {
        var method = methods.get(0);
        System.err.println(method.signature());
        var summary = BridgeMethodIFCSummaryDriver.make(analysis, method, manager);
//        summary.printResults();
    }

    @Test
    public void testSendName() throws CancelException {
        var method = methods.get(1);
        System.err.println(method.signature());
        var summary = BridgeMethodIFCSummaryDriver.make(analysis, method, manager);
        summary.buildresults();
        summary.printResultsEntryNode();
        System.out.println("=======================================");
        summary.collectSummaryPaths().forEach(System.out::println);
//        System.out.println(summary.);
//        summary.printResultsForentrynode().forEach(System.err::println);
//        summary.pathEdges().forEach(System.out::println);
    }
}
