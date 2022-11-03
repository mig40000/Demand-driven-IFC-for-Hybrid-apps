package de.unipassau.analysis;

import com.ibm.wala.classLoader.Language;
import com.ibm.wala.dalvik.classLoader.DexFileModule;
import com.ibm.wala.dalvik.classLoader.DexIRFactory;
import com.ibm.wala.dalvik.classLoader.WDexClassLoaderImpl;
import com.ibm.wala.dalvik.util.AndroidAnalysisScope;
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
import java.net.URI;
import java.util.jar.JarFile;

public class AndroidAnalysis {


    String apkfile;
    String androidJar;

    private static final Logger LOGGER = LoggerFactory.getLogger(AndroidAnalysis.class);

    public AndroidAnalysis(String apkfile, String androidJar) {
        this.androidJar = androidJar;
        this.apkfile = apkfile;
    }


    public void setup() throws CancelException, IOException, ClassHierarchyException {
        AnalysisScope scope = AnalysisScope.createJavaAnalysisScope();
        scope.setLoaderImpl(ClassLoaderReference.Application, "com.ibm.wala.dalvik.classLoader.WDexClassLoaderImpl");
        var dexIr = new DexIRFactory();
        var cache = new AnalysisCacheImpl(dexIr);

        try {
            scope.addToScope(ClassLoaderReference.Primordial, new JarFile(this.androidJar));
        } catch (IOException e) {
            LOGGER.error("Cannot access  " + androidJar + "\t" + e.getMessage());
        }
        scope.addToScope(ClassLoaderReference.Application, DexFileModule.make(new File(this.apkfile)));
        IClassHierarchy cha = ClassHierarchyFactory.make(scope);
        AnalysisOptions options = new AnalysisOptions(scope, new AllApplicationEntrypoints(scope, cha));

        SSAPropagationCallGraphBuilder cgb = Util.makeZeroCFABuilder(Language.JAVA, options, cache, cha);
        System.err.println("Created callgraph with options " + options.getAnalysisScope().toString());
        CallGraph callGraph = cgb.makeCallGraph(options);
        PointerAnalysis<InstanceKey> pointerAnalysis = cgb.getPointerAnalysis();
    }
}
