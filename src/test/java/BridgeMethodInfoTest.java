import de.unipassau.dbinterfaces.BridgedMethodInfoList;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.nio.file.Paths;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotEquals;

public class BridgeMethodInfoTest {
    BridgedMethodInfoList bridgeMethodsList;

    String webViewDatabase = "/Users/jyotiprakash/Research/ModularIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/HybridAppAnalysis/Database/Intent.sqlite";


    @BeforeEach
    void setup() {
        bridgeMethodsList = BridgedMethodInfoList.load(Paths.get(webViewDatabase));
    }

    @Test
    void testCorrectWebViewList() {
        System.out.println(bridgeMethodsList);
        assertNotEquals(0, bridgeMethodsList.size());
    }
}
