import com.ibm.wala.ipa.cha.ClassHierarchyException;
import de.unipassau.analysis.AndroidAnalysis;
import de.unipassau.analysis.BridgeMethodIR;
import de.unipassau.dbinterfaces.BridgedMethodInfo;
import de.unipassau.dbinterfaces.BridgedMethodInfoList;
import de.unipassau.utils.Config;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;

public class TestBridgeMethodIR {

    AndroidAnalysis analysis;
    String apkfile = "/Users/jyotiprakash/Research/ModularIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/HybridAppAnalysis/input/app-debug.apk";
    String androidJar = "/Users/jyotiprakash/Library/Android/sdk/platforms/android-29/android.jar";
    String database = "/Users/jyotiprakash/Research/ModularIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/HybridAppAnalysis/Database/Intent.sqlite";
    BridgedMethodInfoList bridgedMethods;

    @BeforeEach
    void setup() throws ClassHierarchyException, IOException {
        Config.getConfig().androidJarpath = androidJar;
        Config.getConfig().Apk = apkfile;
        analysis = new AndroidAnalysis(Config.getConfig());
        bridgedMethods = BridgedMethodInfoList.load(Paths.get(database));
    }

    @Test
    void testGenerateBridgeMethod0() throws ClassNotFoundException {
        var bridgeMethod = bridgedMethods.get(0);
        var ir = new BridgeMethodIR(bridgeMethod.clazz(), bridgeMethod.methodSign(), analysis.getCha(), analysis.getCache()).makeIR();
        System.out.println(ir);
        Assertions.assertNotEquals(null, ir);
    }

    @Test
    void testGeneratedBridgeMethod1() throws ClassNotFoundException {
        var bridgeMethod = bridgedMethods.get(1);
        var ir = new BridgeMethodIR(bridgeMethod.clazz(), bridgeMethod.methodSign(), analysis.getCha(), analysis.getCache()).makeIR();
        System.out.println(ir);
        Assertions.assertNotEquals(null, ir);
    }
}
