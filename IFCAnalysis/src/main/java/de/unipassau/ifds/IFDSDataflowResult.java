package de.unipassau.ifds;

import com.ibm.wala.classLoader.IField;
import com.ibm.wala.ipa.cha.ClassHierarchy;
import com.ibm.wala.ipa.cha.ClassHierarchyFactory;
import com.ibm.wala.shrike.sourcepos.Debug;
import com.ibm.wala.ssa.*;
import de.unipassau.accesspaths.AccessGraph;
import de.unipassau.utils.Config;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.slf4j.event.Level;

import java.util.HashSet;
import java.util.Set;

public class IFDSDataflowResult<AG extends AccessGraph> implements SSAInstruction.IVisitor {

    private static final Logger logger = LoggerFactory.getLogger(Config.ToolName);
    private static boolean VERBOSE = false;

    static {
        logger.isEnabledForLevel(Level.DEBUG);
    }

    private final AccessGraph in;
    private final Set<AccessGraph> out;
    private final ClassHierarchy cha;

    public IFDSDataflowResult(AccessGraph in, ClassHierarchy cha) {
        this.in = in;
        this.out = new HashSet<>();
        this.cha = cha;
    }

    public Set<AccessGraph> out() {
        return this.out;
    }

    public AccessGraph in() {
        return this.in;
    }

    public void visitGoto(SSAGotoInstruction instruction) {
        logger.debug("Skipping goto instructions");
    }

    public void visitArrayLoad(SSAArrayLoadInstruction instruction) {
        logger.debug("");
//            out.changeBase(instruction.getUse(0));

    }

    public void visitArrayStore(SSAArrayStoreInstruction instruction) {
        out.add(in.changeBase(instruction.getUse(0)));
    }

    public void visitBinaryOp(SSABinaryOpInstruction instruction) {
        logger.debug("Skipping binary operations");
    }

    public void visitUnaryOp(SSAUnaryOpInstruction instruction) {
        logger.debug("Skipping unary operations");
    }

    public void visitConversion(SSAConversionInstruction instruction) {
        logger.debug("Skipping conversion operations");
    }

    public void visitComparison(SSAComparisonInstruction instruction) {
        logger.debug("Skipping comparison operations");
    }

    public void visitConditionalBranch(SSAConditionalBranchInstruction instruction) {
        logger.debug("Skipping conditional branch instructions");
    }

    public void visitSwitch(SSASwitchInstruction instruction) {
        logger.debug("Skipping switch instructions");
    }

    public void visitReturn(SSAReturnInstruction instruction) {
        int result = instruction.getResult();
        if (result == -1) {
            logger.debug("No return value in " + instruction + ". Skipping this instruction");
        } else {
            out.add(in.changeBase(result));
        }
    }

    public void visitGet(SSAGetInstruction instruction) {
        // dstValue = x.f ==> copy the access path from f to the edge
        IField fld = cha.resolveField(instruction.getDeclaredField());
        if (fld == null) {
            logger.error("Invalid field instruction with null field [" + instruction + "]");
        }
        if (in.matchesBaseAndFirstfield(instruction.getUse(1), fld)) {
            out.addAll(in.changeBaseRemoveHead(instruction.getUse(0)));
        }
    }

    public void visitPut(SSAPutInstruction instruction) {
        // x.f = dstValue ==> copy the access paths of the
        IField fld = cha.resolveField(instruction.getDeclaredField());
        if (fld == null) {
            logger.error("Putfield: Invalid field instruction with null field [" + instruction + "]");
        }
    }

    public void visitInvoke(SSAInvokeInstruction instruction) {
    }

    public void visitNew(SSANewInstruction instruction) {
    }

    public void visitArrayLength(SSAArrayLengthInstruction instruction) {
    }

    public void visitThrow(SSAThrowInstruction instruction) {
    }

    public void visitMonitor(SSAMonitorInstruction instruction) {
    }

    public void visitCheckCast(SSACheckCastInstruction instruction) {
    }

    public void visitInstanceof(SSAInstanceofInstruction instruction) {
    }

    public void visitPhi(SSAPhiInstruction instruction) {
    }

    public void visitPi(SSAPiInstruction instruction) {
    }

    public void visitGetCaughtException(SSAGetCaughtExceptionInstruction instruction) {
    }

    public void visitLoadMetadata(SSALoadMetadataInstruction instruction) {
    }

}
