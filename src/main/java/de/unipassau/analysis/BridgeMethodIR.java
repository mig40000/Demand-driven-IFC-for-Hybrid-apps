package de.unipassau.analysis;

import com.ibm.wala.classLoader.IClass;
import com.ibm.wala.classLoader.IMethod;
import com.ibm.wala.dalvik.classLoader.DexIRFactory;
import com.ibm.wala.ipa.callgraph.impl.Everywhere;
import com.ibm.wala.ipa.cha.ClassHierarchy;
import com.ibm.wala.ssa.IR;
import com.ibm.wala.ssa.SSAOptions;
import com.ibm.wala.types.ClassLoaderReference;
import com.ibm.wala.types.Selector;
import com.ibm.wala.types.TypeReference;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.nio.file.Paths;

/**
 * Constructs the IR from the given class
 */
public class BridgeMethodIR {
    private DexIRFactory dexIrFactory;
    private String className;
    private ClassHierarchy cha;
    private SSAOptions options;
    private String methodName;

    private static final Logger LOGGER = LoggerFactory.getLogger(BridgeMethodIR.class);

    public BridgeMethodIR(String className, String methodName, DexIRFactory dexIrFactory, ClassHierarchy cha, SSAOptions options) {
        this.dexIrFactory = dexIrFactory;
        this.className = className;
        this.cha = cha;
        this.options = options;
        this.methodName = methodName;

        if (options == null) {
            LOGGER.info("Using default SSA options");
            options = SSAOptions.defaultOptions();
        }
    }

    /**
     * Constructs the IR for the given methdo
     * @return IR
     * @throws ClassNotFoundException
     */
    public IR makeIR() throws ClassNotFoundException {
        IClass clazz = cha.lookupClass(TypeReference.find(ClassLoaderReference.Application, className));
        if (clazz == null)
            throw new IllegalArgumentException("Cannot find class " + className + " in class hierarchy");
        IMethod method = clazz.getMethod(Selector.make(methodName));
        if (method == null) {
            throw new IllegalArgumentException("Cannot found method " + methodName + " in class " + className);
        }
        return dexIrFactory.makeIR(method, Everywhere.EVERYWHERE, this.options);
    }
}
