package de.unipassau.accesspaths;

import com.ibm.wala.ipa.cha.ClassHierarchyException;
import com.ibm.wala.ssa.IR;
import de.unipassau.analysis.AndroidAnalysis;
import de.unipassau.analysis.BridgeMethodIR;
import de.unipassau.dbinterfaces.BridgedMethodList;
import de.unipassau.utils.Config;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.opentest4j.AssertionFailedError;

import java.io.IOException;
import java.util.Arrays;

class FunctionSummaryTest {

    AndroidAnalysis analysis;
    IR ir = null;
    String apkfile =  System.getProperty("user.dir") + "/HybridAppAnalysis/input/app-debug.apk";
    String androidJar = System.getenv("ANDROID_SDK_ROOT")  + "/platforms/android-29/android.jar";
    String database = System.getProperty("user.dir") + "/src/test/resources/Intent.sqlite";
    BridgedMethodList bridgedMethods;

    @BeforeEach
    void setup() throws ClassHierarchyException, IOException {
        Config.getConfig().androidJarpath = androidJar;
        Config.getConfig().Apk = apkfile;
        analysis = new AndroidAnalysis(Config.getConfig());
        bridgedMethods = BridgedMethodList.load(database);
    }

    @BeforeEach
    void testGenerateBridgeMethod0() throws ClassNotFoundException {
        var bridgeMethod = bridgedMethods.get(0);
        ir = new BridgeMethodIR(bridgeMethod, analysis.getCha(), analysis.getCache()).makeIR();
        Arrays.stream(ir.getInstructions()).forEach(System.out::println);
//        System.out.println(ir);
        Assertions.assertNotEquals(null, ir);
    }

    @Test
    void getAnalysis() throws IOException, ClassHierarchyException {
        // compute the function summary
        if (ir == null) {
            throw new AssertionFailedError("IR is null");
        }
//        FunctionSummary summary = new FunctionSummary(ir, analysis.getCha());
//        summary.compute();
//        System.out.println(summary.getAnalysis());
    }
}