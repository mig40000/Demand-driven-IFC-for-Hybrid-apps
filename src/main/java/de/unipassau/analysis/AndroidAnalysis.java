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
    String apkfile;
    String androidJar;
    AnalysisScope scope = null;
    DexIRFactory dexIr = null;
    IClassHierarchy cha = null;

    private static final Logger LOGGER = LoggerFactory.getLogger(AndroidAnalysis.class);

    public AndroidAnalysis(String apkfile, String androidJar) {
        this.androidJar = apkfile;
        this.apkfile = androidJar;
    }


    public void setup() throws CancelException, IOException {
        scope = AnalysisScope.createJavaAnalysisScope();
        scope.setLoaderImpl(ClassLoaderReference.Application, "com.ibm.wala.dalvik.classLoader.WDexClassLoaderImpl");
        this.dexIr = new DexIRFactory();
        var cache = new AnalysisCacheImpl(this.dexIr);
        try {
            scope.addToScope(ClassLoaderReference.Primordial, new JarFile(androidJar));
        } catch (IOException e) {
            LOGGER.error("Cannot access  " + androidJar + "\t" + e.getMessage());
        }
        scope.addToScope(ClassLoaderReference.Application, DexFileModule.make(new File(apkfile)));
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

    public PointerAnalysis<InstanceKey> getPointerAnalysis() {
        return pointerAnalysis;
    }

    public CallGraph getCallGraph() {
        return callGraph;
    }

    public String getApkfile() {
        return apkfile;
    }

    public String getAndroidJar() {
        return androidJar;
    }

    public AnalysisScope getScope() {
        return scope;
    }

    public DexIRFactory getDexIr() {
        return dexIr;
    }

    public IClassHierarchy getCha() {
        return cha;
    }
}
