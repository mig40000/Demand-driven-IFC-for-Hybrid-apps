import com.ibm.wala.ipa.cha.ClassHierarchyException;
import com.ibm.wala.util.CancelException;
import de.unipassau.analysis.AndroidAnalysis;
import de.unipassau.utils.Config;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.IOException;

public class AndroidAnalysisTest {

    AndroidAnalysis analysis;

    String apkfile = "/Users/jyotiprakash/Research/HybridAppsIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/apps/HelloHybrid.apk";
    String androidJar = "/Users/jyotiprakash/Library/Android/sdk/platforms/android-29/android.jar";

    @Test
    void setUp() throws ClassHierarchyException, IOException {
        Config.getConfig().Apk = apkfile;
        Config.getConfig().androidJarpath = androidJar;
        analysis = new AndroidAnalysis(Config.getConfig());
    }

}
