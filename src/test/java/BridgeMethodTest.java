import de.unipassau.dbinterfaces.BridgedMethods;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;

public class BridgeMethodTest {
    BridgedMethods bridgeMethodsList;

    String webViewDatabase = "/Users/jyotiprakash/Research/ModularIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/HybridAppAnalysis/Database/Intent.sqlite";


    @BeforeEach
    void setup() {
        bridgeMethodsList = BridgedMethods.load(webViewDatabase);
    }

    @Test
    void testCorrectWebViewList() {
        System.out.println(bridgeMethodsList);
        assertNotEquals(0, bridgeMethodsList.size());
    }
}
