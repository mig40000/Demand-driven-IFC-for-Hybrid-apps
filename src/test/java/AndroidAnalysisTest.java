import com.ibm.wala.ipa.cha.ClassHierarchyException;
import com.ibm.wala.util.CancelException;
import de.unipassau.analysis.AndroidAnalysis;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.IOException;

public class AndroidAnalysisTest {

    AndroidAnalysis analysis;

    String apkfile = "/Users/jyotiprakash/Research/ModularIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/HybridAppAnalysis/input/app-debug.apk";
    String androidJar = "/Users/jyotiprakash/Library/Android/sdk/platforms/android-29/android.jar";

    @BeforeEach
    void setUp() {
        analysis = new AndroidAnalysis(apkfile, androidJar);
    }

    @Test
    void setupIsSuccessful() throws ClassHierarchyException, CancelException, IOException {
        analysis.setup();
    }
}
