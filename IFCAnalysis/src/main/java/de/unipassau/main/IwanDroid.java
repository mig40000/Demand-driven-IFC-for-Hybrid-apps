package de.unipassau.main;

import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.WalaException;
import org.apache.commons.cli.*;
import org.jetbrains.annotations.NotNull;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import static java.lang.Integer.parseInt;

public class IwanDroid {

    private static final Logger logger = LoggerFactory.getLogger(IwanDroid.class);


    private static final Options options = new Options();

    private static final Option apiLevel = Option.builder().option("l").hasArg().desc("android platform version: android-<version>").required().build();
    private static final Option apk = Option.builder().option("a").hasArg().desc("path to apk file to analyze").required().build();
    private static final Option db = Option.builder().option("db").hasArg().desc("database").required().build();
    private static final Option sourceSinkFile = Option.builder().option("s").hasArg(true).desc("source sink file").required().build();
    private static final Option help = Option.builder().option("h").desc("help").build();
    private static final Option jsDir = Option.builder().option("d").desc("dir").hasArg().desc("directory containing JS files").required().build();
    private static final Option jsFilepath = Option.builder().option("f").desc("file").hasArg().desc("js file path").required().build();

    static {
        options.addOption(apiLevel);
        options.addOption(apk);
        options.addOption(db);
        options.addOption(help);
        options.addOption(sourceSinkFile);
        options.addOption(jsDir);
        options.addOption(jsFilepath);
    }

    public static void usage() {
        HelpFormatter formatter = new HelpFormatter();
        formatter.printHelp("de.unipassau.main.HybridIFCAnalyzer", options);
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

        int api = getApi(cmd);
        Config config = Config.makeEmpty();
        config.setApilevel(api);
        config.setAndroidJarpath(getAndroidJarPath(sdkRoot, api));
        config.setSourceSinkFile(getSourceSinkFile(cmd));
        config.setApk(cmd.getOptionValue(apk));
        config.setDatabase(cmd.getOptionValue(db));
        config.setJsDir(getJsDir(cmd));
        config.setJsFilepath(getJsfilepath(cmd));

        try {
            AnalyzerMain analyzer = new AnalyzerMain(config);
            analyzer.run();
        } catch (IOException | CancelException | WalaException e) {
            e.printStackTrace();
        }
    }

    private static String getJsDir(CommandLine cmd) {
        if (cmd.hasOption(jsDir) && !jsDir.hasArg()) {
            return cmd.getOptionValue(jsDir);
        } else {
            logger.error("Unspecified js directory");
            System.exit(100);
        }
        return null;
    }

    private static String getSourceSinkFile(CommandLine cmd) {
        if (cmd.hasOption(sourceSinkFile) && sourceSinkFile.hasArg()) {
            logger.info("Using sourcefile {}", cmd.getOptionValue(sourceSinkFile));
            return cmd.getOptionValue(sourceSinkFile);
        } else {
            logger.info("Using sourcefile {}", "resource/SourcesAndSinks.txt");
            return "resource/SourcesAndSinks.txt";
        }
    }

    private static String getJsfilepath(CommandLine cmd) {
        if (!cmd.hasOption(jsFilepath) || !jsFilepath.hasArg()) {
            logger.info("Using sourcefile {}", "resource/SourcesAndSinks.txt");
            System.exit(100);
        }
        logger.info("Using sourcefile {}", cmd.getOptionValue(sourceSinkFile));
        return cmd.getOptionValue(jsFilepath);

    }

    @NotNull
    private static String getAndroidJarPath(String sdkRoot, int api) {
        Path androidLib = Paths.get(sdkRoot, "platforms", "android-" + api, "android.jar");
        if (!androidLib.toFile().exists()) {
            logger.error("Cannot find android.jar in {}", androidLib);
            System.exit(100);
        }
        return androidLib.toString();
    }

    private static int getApi(CommandLine cmd) {
        int api;
        if (cmd.hasOption(apiLevel)) {
            api = parseInt(cmd.getOptionValue(apiLevel));
            logger.info("Using API level {}", api);
        } else {
            api = 27;
            logger.info("API level not specified. Using API {}", api);
        }
        return api;
    }
}
