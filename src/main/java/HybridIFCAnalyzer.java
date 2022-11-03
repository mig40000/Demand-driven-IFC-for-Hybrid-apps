import com.ibm.wala.ipa.cha.ClassHierarchyException;
import de.unipassau.analysis.AndroidAnalysis;
import de.unipassau.utils.Config;
import org.apache.commons.cli.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import static java.lang.Integer.parseInt;

public class HybridIFCAnalyzer {

    private static final Logger logger = LoggerFactory.getLogger(Config.ToolName);


    private static Options options = new Options();

    private static Option apiLevel = Option.builder().option("level").hasArg().desc("android platform version: android-<version>").required().build();
    private static Option apk = Option.builder().option("apk").hasArg().desc("path to apk file to analyze").required().build();

    static {
        options.addOption(apiLevel);
        options.addOption(apk);
    }

    public static void usage() {
        HelpFormatter formatter = new HelpFormatter();
        formatter.printHelp("HybridIFCAnalyzer", options);
    }

    public static void main(String[] args) {
        String sdkRoot = System.getenv("ANDROID_SDK_ROOT");
        if (sdkRoot == null) {
            logger.error("ANDROID_SDK_ROOT variable is not set. Set ANDROID_SDK_ROOT=/path/to/android/sdk");
            System.exit(100);
        }

        CommandLine cmd = null;
        try {
            cmd = DefaultParser.builder().build().parse(options, args);
        } catch (ParseException d) {
            usage();
            System.exit(100);
        }

        try {
            int api = cmd.hasOption(apiLevel) ? parseInt(cmd.getOptionValue(apiLevel)) : -1;
            Config.getConfig().ApiLevel = api;

            logger.info("Using API level " + api);

            Config.getConfig().Apk = cmd.getOptionValue(apk);
            Path androidlib = Paths.get(sdkRoot, "platforms", "android-" + api, "android.jar");
            Config.getConfig().androidJarpath = androidlib.toString();
            if (!androidlib.toFile().exists()) {
                logger.error("Cannot find android.jar in " + androidlib);
                System.exit(100);
            }
            AndroidAnalysis analysis = new AndroidAnalysis(Config.getConfig());
        } catch (ClassHierarchyException | IOException e) {
            usage();
            e.printStackTrace();
        }
    }
}
