package de.unipassau.main;

import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.WalaException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Stream;

public class AnalyzeMicrobenchmarks {


    private static Logger logger = LoggerFactory.getLogger(AnalyzeMicrobenchmarks.class.getName());

    private String benchmarkRoot;
    private String androidJarPath;
    private String dbPath;
    private String susiFile;
    private String intermediateDir;

    AnalyzeMicrobenchmarks(String benchmarkRoot, String androidJarPath, String sourceSinkFile, String dbPath, String intermediateDir) {
        this.benchmarkRoot = benchmarkRoot;
        this.androidJarPath = androidJarPath;
        this.dbPath = dbPath;
        this.susiFile = sourceSinkFile;
        this.intermediateDir = intermediateDir;
    }

    private void runBenchmark(Config config) {
        Analyzer analyzer = new Analyzer(config);
        try {
            analyzer.run();
        } catch (WalaException | IOException | CancelException e) {
            e.printStackTrace();
        }
    }

    public void run() {
        List<String> benchmarkFiles = List.of(
                "HelloCordova.apk",
                "HelloHybrid.apk",
                "HelloScript.apk",
                "HelloScript22.apk",
                "HelloScript_simple.apk",
                "HelloScript_test-2.apk",
                "HybridAPIArgNum.apk",
                "JSUpdateCaseD.apk",
                "JsUpdateCaseE.apk",
                "JsUpdateCaseF.apk",
                "JsUpdateCaseG.apk",
                "NormalAliasFlowTest.apk",
                "NormalAliasFlowTest_objfield1.apk",
                "NormalAliasFlowTest_objfield_false.apk",
                "strongUpdate.apk",
                "strongUpdatecaseA.apk",
                "strongUpdatecaseB.apk",
                "strongUpdatecaseC.apk"
        );
        for (var benchmark : benchmarkFiles) {
            Config config = Config.emptyConfig();
            config.setApkFile(Path.of(benchmarkRoot, benchmark).toAbsolutePath().toString());
            config.setAppName(benchmark.replace(".apk", ""));
            config.setDatabase(dbPath);
            config.setSourceSinkFile(susiFile);
            config.setAndroidJarpath(androidJarPath);
            config.setApilevel(27);

            // find the location for javascript files
            var jsFiles = searchJsFile(benchmark);
            if (jsFiles.isEmpty()) {
                logger.error("TERMINATING ANALYSIS OF {}. CANNOT FIND JAVASCRIPT FILE  OR MULTIPLE FILES FOUND", benchmark);
                continue;
            }
            // we assume that there is only one JS file
            var file = jsFiles.get(0);
            String jsDir = file.getParent();
            String fileName = file.getAbsolutePath();
            config.setJsDir(jsDir);
            config.setJsFilepath(fileName);
            runBenchmark(config);
        }
    }

    /**
     * It returns the js files separated by ";". If it doesn't find a file then it returns None
     *
     * @param benchmark
     * @return
     */
    private List<File> searchJsFile(String benchmark) {
        Path directory = Paths.get(intermediateDir, benchmark);
        List<File> result = new ArrayList<>();
        try (Stream<Path> paths = Files.walk(directory, 2)) {
            paths.filter(path -> path.endsWith(".js")).forEach(path -> {
                File f = new File(path.toString());
                result.add(f);
            });
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }

}
