package de.unipassau.ifc;

import com.ibm.wala.classLoader.CallSiteReference;
import com.ibm.wala.classLoader.IField;
import com.ibm.wala.dataflow.IFDS.IUnaryFlowFunction;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.ssa.SSAInstruction;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.types.FieldReference;
import com.ibm.wala.util.intset.MutableIntSet;
import com.ibm.wala.util.intset.MutableSparseIntSet;
import de.unipassau.utils.SourceSinkManager;
import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.NotNull;

public class FlowFunctionUtils {

    private FlowFunctionUtils() {}

    protected static SSAInstruction getInstruction(BasicBlockInContext<IExplodedBasicBlock> block) {
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
}
