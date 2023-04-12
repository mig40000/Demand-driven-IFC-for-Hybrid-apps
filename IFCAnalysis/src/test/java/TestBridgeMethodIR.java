import com.ibm.wala.ipa.cha.ClassHierarchyException;
import de.unipassau.analysis.AndroidAnalysis;
import de.unipassau.analysis.BridgeMethodIR;
import de.unipassau.dbinterfaces.BridgedMethodList;
import de.unipassau.main.Config;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.IOException;

public class TestBridgeMethodIR {

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
    void testGenerateBridgeMethod0() {
        var bridgeMethod = bridgedMethods.get(0);
        var ir = new BridgeMethodIR(bridgeMethod, analysis.getCha(), analysis.getCache()).makeIR();
        System.out.println(ir);
        Assertions.assertNotEquals(null, ir);
    }

    @Test
    void testGeneratedBridgeMethod1() {
        var bridgeMethod = bridgedMethods.get(1);
        var ir = new BridgeMethodIR(bridgeMethod, analysis.getCha(), analysis.getCache()).makeIR();
        System.out.println(ir);
        Assertions.assertNotEquals(null, ir);
    }
}
