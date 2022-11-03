package de.unipassau.analysis;

import com.ibm.wala.analysis.typeInference.TypeInference;
import com.ibm.wala.classLoader.IClass;
import com.ibm.wala.dalvik.classLoader.DexIRFactory;
import com.ibm.wala.ipa.callgraph.AnalysisScope;
import com.ibm.wala.ipa.cha.ClassHierarchy;
import com.ibm.wala.ssa.IR;
import com.ibm.wala.types.ClassLoaderReference;
import com.ibm.wala.types.TypeReference;

/**
 * Constructs the IR from the given class
 */
public class ConstructIRWebView {
    private DexIRFactory dexIrFactory;
    private String className;
    private ClassHierarchy cha;

    public ConstructIRWebView(DexIRFactory dexIrFactory, String className, ClassHierarchy cha) {
        this.dexIrFactory = dexIrFactory;
        this.className = className;
        this.cha = cha;
    }

    public IR makeIR() throws ClassNotFoundException {
        IClass clazz = cha.lookupClass(TypeReference.find(ClassLoaderReference.Application, className));
        if (clazz == null)
            throw new ClassNotFoundException("Cannot find class " + className + " in class hierarchy");
        // TODO: Implement this
        return null;
    }
}
