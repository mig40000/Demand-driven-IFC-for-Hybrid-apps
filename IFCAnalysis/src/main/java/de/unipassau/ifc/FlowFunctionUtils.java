package de.unipassau.ifc;

import com.ibm.wala.classLoader.CallSiteReference;
import com.ibm.wala.classLoader.IClass;
import com.ibm.wala.classLoader.IField;
import com.ibm.wala.classLoader.IMethod;
import com.ibm.wala.dataflow.IFDS.IUnaryFlowFunction;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.ssa.SSAInstruction;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.types.ClassLoaderReference;
import com.ibm.wala.types.FieldReference;
import com.ibm.wala.types.Selector;
import com.ibm.wala.types.TypeReference;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.intset.MutableIntSet;
import com.ibm.wala.util.intset.MutableSparseIntSet;
import de.unipassau.analysis.AndroidAnalysis;
import de.unipassau.dbinterfaces.BridgedMethod;
import de.unipassau.utils.SourceSinkManager;
import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;

import java.util.Optional;

public class FlowFunctionUtils {

    private FlowFunctionUtils() {}

    protected static SSAInstruction getInstruction(BasicBlockInContext<IExplodedBasicBlock> block) {
        if (block.getDelegate() == null) {
            return null;
        }
        return block.getDelegate().getInstruction();
    }

    @Contract(pure = true)
    public static @NotNull IUnaryFlowFunction identityFunction() {
        return d1 -> {
            MutableIntSet results = MutableSparseIntSet.makeEmpty();
            results.add(d1);
            return results;
        };
    }

    @Contract(pure = true)
    public static @NotNull IUnaryFlowFunction emptyFunction() {
        return d1 -> MutableSparseIntSet.makeEmpty();
    }

    protected static IField resolveField(@NotNull IClassHierarchy cha, FieldReference f) {
        IField field = cha.resolveField(f);
        assert field != null;
        return field;
    }

    protected static boolean isSensitiveSource(SourceSinkManager manager, CallSiteReference functionCallSite) {
        String method = functionCallSite.getDeclaredTarget().getName().toString();
        return manager.isSourceMethod(method);
    }

    protected static boolean isLibraryCall(CallSiteReference callSite) {
        String methodName = callSite.getDeclaredTarget().getName().toString();
        String className = callSite.getDeclaredTarget().getDeclaringClass().getName().toString();
        return new AndroidLibraryList().contains(className, methodName);
    }

    static public Optional<CGNode> findCGNodeForBridgeMethod(BridgedMethod method, AndroidAnalysis analysis) throws CancelException {
        IClass clazz = analysis.getCha().lookupClass(TypeReference.find(ClassLoaderReference.Application, method.clazz()));
        assert clazz != null;
        IMethod entrypointmethod = clazz.getMethod(Selector.make(method.signature()));
        assert entrypointmethod != null;
        return analysis.callgraph().stream().filter(node -> node.getMethod().equals(entrypointmethod)).findFirst();
    }

    static public Optional<CGNode> findCGNodeForBridgeMethod(String sclazz, String method, AndroidAnalysis analysis) throws CancelException {

//        analysis.getCha().forEach(c -> {
//            if (c.getName().toString().contains("MainActivity")) {
//                System.err.println(c.getName());
//            }
//        });
        IClass clazz = analysis.getCha().lookupClass(TypeReference.find(ClassLoaderReference.Application, sclazz));
        assert clazz != null : "Class is null";
        IMethod entrypointmethod = clazz.getMethod(Selector.make(method));
        assert entrypointmethod != null;
        return analysis.callgraph().stream().filter(node -> node.getMethod().equals(entrypointmethod)).findFirst();
    }
}
