package de.unipassau.analysis;

import com.ibm.wala.classLoader.Language;
import com.ibm.wala.dalvik.classLoader.DexFileModule;
import com.ibm.wala.dalvik.classLoader.DexIRFactory;
import com.ibm.wala.ipa.callgraph.AnalysisCacheImpl;
import com.ibm.wala.ipa.callgraph.AnalysisOptions;
import com.ibm.wala.ipa.callgraph.AnalysisScope;
import com.ibm.wala.ipa.callgraph.CallGraph;
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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.File;
import java.io.IOException;
import java.util.jar.JarFile;

public class AndroidAnalysis {


    PointerAnalysis<InstanceKey> pointerAnalysis = null;
    CallGraph callGraph = null;
    String apkfilepath;
    String androidJarpath;
    AnalysisScope scope = null;

    private static final Logger LOGGER = LoggerFactory.getLogger(AndroidAnalysis.class);

    public AndroidAnalysis(String apkfilepath, String androidJarpath) {
        this.androidJarpath = androidJarpath;
        this.apkfilepath = apkfilepath;
    }

    public void run() throws CancelException, IOException {
        setupAnalysis();
    }

    private void setupAnalysis() throws CancelException, IOException {
        scope = AnalysisScope.createJavaAnalysisScope();
        scope.setLoaderImpl(ClassLoaderReference.Application, "com.ibm.wala.dalvik.classLoader.WDexClassLoaderImpl");
        var cache = new AnalysisCacheImpl(new DexIRFactory());
        try {
            scope.addToScope(ClassLoaderReference.Primordial, new JarFile(androidJarpath));
        } catch (IOException e) {
            LOGGER.error("Cannot access  " + androidJarpath + "\t" + e.getMessage());
        }
        scope.addToScope(ClassLoaderReference.Application, DexFileModule.make(new File(apkfilepath)));
        IClassHierarchy cha = null;
        try {
            cha = ClassHierarchyFactory.make(scope);
        } catch (ClassHierarchyException e) {
            LOGGER.error("Cannot create class");
        }
        assert (cha != null);
        AnalysisOptions options = new AnalysisOptions(scope, new AllApplicationEntrypoints(scope, cha));

        SSAPropagationCallGraphBuilder cgb = Util.makeZeroCFABuilder(Language.JAVA, options, cache, cha);
        System.err.println("Created callgraph with options " + options.getAnalysisScope().toString());
        this.callGraph = cgb.makeCallGraph(options);
        this.pointerAnalysis = cgb.getPointerAnalysis();
    }

}
