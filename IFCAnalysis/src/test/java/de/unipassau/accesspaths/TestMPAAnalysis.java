package de.unipassau.accesspaths;

import com.ibm.wala.classLoader.IMethod;
import com.ibm.wala.ipa.cha.ClassHierarchyException;
import com.ibm.wala.util.CancelException;
import de.unipassau.analysis.AndroidAnalysis;
import de.unipassau.dbinterfaces.BridgedMethod;
import de.unipassau.dbinterfaces.BridgedMethodList;
import de.unipassau.modifiedpaths.ModifiedPathAnalysis;
import de.unipassau.main.Config;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.IOException;

public class TestMPAAnalysis {

    AndroidAnalysis analysis;
    String apkfile =  System.getProperty("user.dir") + "/HybridAppAnalysis/input/app-debug.apk";
    String androidJar = System.getenv("ANDROID_SDK_ROOT")  + "/platforms/android-29/android.jar";
    String database = System.getProperty("user.dir") + "/src/test/resources/Intent.sqlite";
    BridgedMethodList bridgedMethods;

    @BeforeEach
    void setup() throws ClassHierarchyException, IOException {
        Config.getInstance().setAndroidJarpath(androidJar);
        Config.getInstance().setApk(apkfile);
        analysis = new AndroidAnalysis();
        bridgedMethods = BridgedMethodList.load(database);
    }


    @Test
    void generateMPAForBridgeMethod() throws CancelException {
        var bridgeMethod = bridgedMethods.get(0);
        var callgraph = analysis.callgraph();
        var method = analysis.nodeForMethod(getMethod(bridgeMethod));
        assert method.isPresent() : "Failed to find method %s in %s".formatted(bridgeMethod.signature(), bridgeMethod.clazz());

        System.out.println(method.get().getIR());
        var mpanalysis = new ModifiedPathAnalysis(callgraph, method.get());
        var result = mpanalysis.analyze();
    }

    private IMethod getMethod(BridgedMethod bridgeMethod) {
        return analysis.lookUpMethod(bridgeMethod.clazz(), bridgeMethod.signature());
    }

    @Test
    void testGeneratedBridgeMethod1() throws CancelException {
        var bridgeMethod = bridgedMethods.get(1);
        var callgraph = analysis.callgraph();
        var method = analysis.nodeForMethod(getMethod(bridgeMethod));
        assert method.isPresent() : "Failed to find method %s in %s".formatted(bridgeMethod.signature(), bridgeMethod.clazz());

        System.out.println(method.get().getIR());
        var mpanalysis = new ModifiedPathAnalysis(callgraph, method.get());
        var result = mpanalysis.analyze();
    }
}