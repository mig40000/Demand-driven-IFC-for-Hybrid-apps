import de.unipassau.dbinterfaces.BridgedMethodList;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;

public class BridgeMethodTest {
    BridgedMethodList bridgeMethodsList;

    String webViewDatabase = "/Users/jyotiprakash/Research/HybridAppsIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/Database/Intent-new.sqlite";


    @BeforeEach
    void setup() {
        bridgeMethodsList = BridgedMethodList.load(webViewDatabase);
    }

    @Test
    void testCorrectWebViewList() {
        System.out.println(bridgeMethodsList);
        assertNotEquals(0, bridgeMethodsList.size());
    }


}
