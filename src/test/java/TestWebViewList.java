import de.unipassau.ludroidInterface.WebViewsList;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.nio.file.Paths;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class TestWebViewList {
    WebViewsList webViewsList;

    @BeforeEach
    void setup() {
        webViewsList = WebViewsList.load(Paths.get("/Users/jyotiprakash/Research/ModularIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/Database/Intent.sqlite"));
    }

    @Test
    void testCorrectWebViewList() {
        Set<String> injectedObjects = webViewsList.getInjectedClass("app-debug");
        Set<String> objects = Set.of("Lpotsdam/uni/com/myapplication/Main2Activity;");
        assertEquals(objects, injectedObjects);
    }
}
