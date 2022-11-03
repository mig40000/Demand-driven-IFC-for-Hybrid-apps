package de.unipassau.analysis;

import com.ibm.wala.classLoader.Language;
import com.ibm.wala.dalvik.classLoader.DexFileModule;
import com.ibm.wala.dalvik.classLoader.DexIRFactory;
import com.ibm.wala.ipa.callgraph.*;
import com.ibm.wala.ipa.callgraph.impl.AllApplicationEntrypoints;
import com.ibm.wala.ipa.callgraph.impl.Util;
import com.ibm.wala.ipa.callgraph.propagation.InstanceKey;
import com.ibm.wala.ipa.callgraph.propagation.PointerAnalysis;
import com.ibm.wala.ipa.callgraph.propagation.SSAPropagationCallGraphBuilder;
import com.ibm.wala.ipa.cha.ClassHierarchyException;
import com.ibm.wala.ipa.cha.ClassHierarchyFactory;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.types.ClassLoaderReference;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.collections.Pair;
import de.unipassau.utils.Config;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.IOException;
import java.util.jar.JarFile;

public class AndroidAnalysis {


    private final String apkfile;
    private final String androidJar;
    private final AnalysisCache cache;
    private IClassHierarchy cha = null;
    private AnalysisOptions options = null;

    private static final Logger logger = LoggerFactory.getLogger(Config.ToolName);

    public AndroidAnalysis(Config config) throws ClassHierarchyException, IOException {
        logger.info("Setting up android analysis environment");
        this.androidJar = Config.getConfig().androidJarpath;
        logger.info("Using " + this.androidJar);
        this.apkfile = config.Apk;
        logger.info("APK: " + this.apkfile);
        this.cache = new AnalysisCacheImpl(new DexIRFactory());
        AnalysisScope scope = AnalysisScope.createJavaAnalysisScope();
        scope.setLoaderImpl(ClassLoaderReference.Application, "com.ibm.wala.dalvik.classLoader.WDexClassLoaderImpl");
        try {
            scope.addToScope(ClassLoaderReference.Primordial, new JarFile(this.androidJar));
            scope.addToScope(ClassLoaderReference.Application, DexFileModule.make(new File(this.apkfile)));
            this.cha = ClassHierarchyFactory.make(scope);
            this.options = new AnalysisOptions(scope, new AllApplicationEntrypoints(scope, cha));
            logger.info("Analysis environment setup successful");
        } catch (IOException e) {
            logger.error(e.getMessage());
        }
    }


//    public Pair<CallGraph, PointerAnalysis<InstanceKey>> buildCallgraph() throws CancelException, IOException, ClassHierarchyException {
//        SSAPropagationCallGraphBuilder cgb = Util.makeZeroCFABuilder(Language.JAVA, this.options, this.cache, this.cha);
//        System.err.println("Created callgraph with options " + options.getAnalysisScope().toString());
//        CallGraph callGraph = cgb.makeCallGraph(options);
//        PointerAnalysis<InstanceKey> pointerAnalysis = cgb.getPointerAnalysis();
//        return Pair.make(callGraph, pointerAnalysis);
//    }

    public AnalysisCache getCache() {
        return cache;
    }

    public IClassHierarchy getCha() {
        return cha;
    }

    public AnalysisOptions getOptions() {
        return options;
    }

    @Override
    public String toString() {
        return "AndroidAnalysis{" +
                "apkfile='" + apkfile + '\'' +
                ", androidJar='" + androidJar + '\'' +
                ", options=" + options +
                '}';
    }
}
