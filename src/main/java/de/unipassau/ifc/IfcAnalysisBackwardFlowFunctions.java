package de.unipassau.ifc;

import com.ibm.wala.classLoader.IField;
import com.ibm.wala.dataflow.IFDS.IFlowFunction;
import com.ibm.wala.dataflow.IFDS.IUnaryFlowFunction;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.SSAGetInstruction;
import com.ibm.wala.ssa.SSAPutInstruction;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.intset.IntSet;
import com.ibm.wala.util.intset.MutableIntSet;
import com.ibm.wala.util.intset.MutableSparseIntSet;
import de.unipassau.accesspaths.AccessGraph;
import de.unipassau.accesspaths.FieldGraph;

public class IfcAnalysisBackwardFlowFunctions extends  IfcAnalysisFlowFunctions {

    public IfcAnalysisBackwardFlowFunctions(CGNode entryPoint, AccessGraphDomain domain) {
        super(entryPoint, domain);
    }

    /**
     * x.f = y; it adds a new node
     * @param inst
     * @param node
     * @return
     */
    @Override
    protected IUnaryFlowFunction buildPutInstructionFunction(SSAPutInstruction inst, CGNode node) {
        return d1 -> {
            MutableIntSet result = MutableSparseIntSet.makeEmpty();
            result.add(d1);

            int src = inst.getUse(1);
            int dst = inst.getUse(0);
            IfcAnalysisFact dstFact = domain.getMappedObject(d1);
            if (dstFact.getBase() == dst) {
                IfcAnalysisFact srcFact = new IfcAnalysisFact(node, src, dstFact.fieldgraph(), dstFact.ifclabel());
                result.add(domain.add(srcFact));
            }
            return result;
        };
    }

    /**
     * x = y.f;
     * @param inst
     * @param node
     * @return
     */
    @Override
    protected IUnaryFlowFunction buildGetInstruction(SSAGetInstruction inst, CGNode node) {
        return d1 -> {
            MutableIntSet result = MutableSparseIntSet.makeEmpty();
            result.add(d1);

            int src = inst.getUse(1);
            int dst = inst.getDef();
            var srcFact = domain.getMappedObject(d1);
            if (srcFact.getBase() == src) {
                IfcAnalysisFact dstFact = new IfcAnalysisFact(node, dst, srcFact.fieldgraph(), srcFact.ifclabel());
                result.add(domain.add(dstFact));
            }
            return result;
        };
    }


    @Override
    public IUnaryFlowFunction getCallFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dst, BasicBlockInContext<IExplodedBasicBlock> ret) {
        return (IUnaryFlowFunction) super.getReturnFlowFunction(dst, src, ret);
    }

    @Override
    public IFlowFunction getReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> call, BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dest) {
        return super.getCallFlowFunction(dest, src, call);
    }
}
