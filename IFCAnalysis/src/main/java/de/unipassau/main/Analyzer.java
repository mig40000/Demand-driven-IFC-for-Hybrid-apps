package de.unipassau.main;

import com.ibm.wala.ipa.cha.ClassHierarchyException;
import de.unipassau.analysis.AndroidAnalysis;
import de.unipassau.analysis.BridgeMethodIR;
import de.unipassau.dbinterfaces.BridgedMethodList;
import org.apache.commons.cli.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import static java.lang.Integer.parseInt;

public class Analyzer {

    private static final Logger logger = LoggerFactory.getLogger(Analyzer.class);


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
        formatter.printHelp("de.unipassau.main.HybridIFCAnalyzer", options);
    }

    public static void run(Config config) throws ClassHierarchyException, IOException {
        AndroidAnalysis analysis = new AndroidAnalysis();
        BridgedMethodList methods = BridgedMethodList.load(config.getDatabase());
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


        int api = 27;
        if (cmd.hasOption(apiLevel)) {
            api = parseInt(cmd.getOptionValue(apiLevel));
            logger.info("Using API level {}", api);
        } else {
            logger.info("API level not specified. Using API {}", api);
        }
        Path androidLib = Paths.get(sdkRoot, "platforms", "android-" + api, "android.jar");

        if (!androidLib.toFile().exists()) {
            logger.error("Cannot find android.jar in {}", androidLib);
            System.exit(100);
        }

        if (!sourceSinkFile.hasArg()) {
            logger.error("Unspecified source sink files");
            System.exit(100);
        }

        Config.getInstance().setApilevel(api);
        Config.getInstance().setApk(cmd.getOptionValue(apk));
        Config.getInstance().setAndroidJarpath(androidLib.toString());
        Config.getInstance().setDatabase(cmd.getOptionValue(db));
        Config.getInstance().setSourceSinkFile(sourceSinkFile.getValue());

        try {
            run(Config.getInstance());
        } catch (ClassHierarchyException | IOException e) {
            e.printStackTrace();
        }
    }
}
