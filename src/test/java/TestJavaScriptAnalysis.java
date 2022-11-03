import com.ibm.wala.classLoader.IMethod;
import com.ibm.wala.ipa.cha.ClassHierarchyException;
import de.unipassau.analysis.JavascriptAnalysis;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;

public class TestJavaScriptAnalysis {
    private final String jsFile = "/Users/jyotiprakash/Research/ModularIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/src/test/resources/sample.js";

    @Test
    void testSampleJsIR() throws ClassHierarchyException {
        JavascriptAnalysis analysis = new JavascriptAnalysis(jsFile);
        var methods = analysis.getMethods();
        if ((methods.size() <= 0)) throw new AssertionError();
    }

}
