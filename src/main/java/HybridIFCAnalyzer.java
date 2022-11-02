import org.apache.commons.cli.Option;
import org.apache.commons.cli.Options;

public class HybridIFCAnalyzer {

    public static void main(String[] args) {
        Option androidlib = Option.builder().argName("p").desc("android platform version: android-<version>").required().build();
        Option apk = Option.builder().argName("a").desc("path to apk file to analyze").required().build();

        Options options = new Options();
        options.addOption(androidlib);
        options.addOption(apk);
    }
}
