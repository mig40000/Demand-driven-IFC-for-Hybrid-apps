import com.ibm.wala.dalvik.util.AndroidAnalysisScope;
import com.ibm.wala.ipa.cha.ClassHierarchyException;
import com.ibm.wala.util.CancelException;
import de.unipassau.analysis.AndroidAnalysis;
import org.apache.commons.cli.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import static java.lang.Integer.parseInt;

public class HybridIFCAnalyzer {

    private static Logger logger = LoggerFactory.getLogger("HybridIFC");

    public static void usage(Options options) {
        HelpFormatter formatter = new HelpFormatter();
        formatter.printHelp("HybridIFCAnalyzer", options);
    }

    public static void main(String[] args) {
        String sdkRoot = System.getenv("ANDROID_SDK_ROOT");
        if (sdkRoot == null) {
            LoggerFactory.getLogger(HybridIFCAnalyzer.class).error("Cannot find ANDROID_SDK_ROOT");
        }

        Options options = new Options();
        Option apiLevel = Option.builder().option("level").hasArg().desc("android platform version: android-<version>").required().build();
        Option apk = Option.builder().option("apk").hasArg().desc("path to apk file to analyze").required().build();
        options.addOption(apiLevel);
        options.addOption(apk);

        CommandLine cmd = null;
        try {
            cmd = DefaultParser.builder().build().parse(options, args);
        } catch (ParseException e) {
            usage(options);
            e.printStackTrace();
        }
        assert sdkRoot != null;

        int api = cmd.hasOption(apiLevel) ? parseInt(cmd.getOptionValue(apiLevel)) : -1;
        logger.info("Using API level " + api);


        String apkFile = cmd.getOptionValue(apk);
        Path androidlib = Paths.get(sdkRoot, "platforms", "android-" + api);

        if (!androidlib.toFile().exists()) {
            logger.error("Cannot find android.jar in " + androidlib);
            System.exit(100);
        }

        AndroidAnalysis analysis = new AndroidAnalysis(cmd.getOptionValue(apk), androidlib.toString());
        try {
            analysis.setup();
        } catch (CancelException | ClassHierarchyException | IOException e) {
            e.printStackTrace();
        }
    }
}
