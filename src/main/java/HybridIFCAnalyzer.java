import com.ibm.wala.ipa.cha.ClassHierarchyException;
import de.unipassau.analysis.AndroidAnalysis;
import de.unipassau.analysis.BridgeMethodIR;
import de.unipassau.dbinterfaces.BridgedMethodList;
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


    private static final Options options = new Options();

    private static final Option apiLevel = Option.builder().option("level").hasArg().desc("android platform version: android-<version>").required().build();
    private static final Option apk = Option.builder().option("apk").hasArg().desc("path to apk file to analyze").required().build();
    private static final Option db = Option.builder().option("db").hasArg().desc("database").required().build();
    private static final Option sourceSinkFile = Option.builder().option("s").hasArg(true).desc("source sink file").required().build();
    private static final Option help = Option.builder().option("h").desc("help").build();

    static {
        options.addOption(apiLevel);
        options.addOption(apk);
        options.addOption(db);
        options.addOption(help);
        options.addOption(sourceSinkFile);
    }

    public static void usage() {
        HelpFormatter formatter = new HelpFormatter();
        formatter.printHelp("HybridIFCAnalyzer", options);
    }

    public static void run(Config config) throws ClassHierarchyException, IOException {
        AndroidAnalysis analysis = new AndroidAnalysis(config);
        BridgedMethodList methods = BridgedMethodList.load(config.database);
        // TODO: Remove this
        for (var bridgeMethod : methods) {
            var methodIr = new BridgeMethodIR(bridgeMethod, analysis.getCha(), analysis.getCache()).makeIR();
            System.out.println(methodIr);
        }

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


        int api = cmd.hasOption(apiLevel) ? parseInt(cmd.getOptionValue(apiLevel)) : -1;
        logger.info("Using API level " + api);
        Config.getConfig().ApiLevel = api;

        Config.getConfig().Apk = cmd.getOptionValue(apk);

        Path androidLib = Paths.get(sdkRoot, "platforms", "android-" + api, "android.jar");
        Config.getConfig().androidJarpath = androidLib.toString();

        Config.getConfig().database = cmd.getOptionValue(db);

        if (!androidLib.toFile().exists()) {
            logger.error("Cannot find android.jar in " + androidLib);
            System.exit(100);
        }

        try {
            run(Config.getConfig());
        } catch (ClassHierarchyException | IOException e) {
            e.printStackTrace();
        }
    }
}
