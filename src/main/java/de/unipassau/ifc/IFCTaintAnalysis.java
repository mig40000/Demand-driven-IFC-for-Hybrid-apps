package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.dataflow.IFDS.IFlowFunction;
import com.ibm.wala.dataflow.IFDS.IFlowFunctionMap;
import com.ibm.wala.dataflow.IFDS.IUnaryFlowFunction;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.SSAInstruction;
import com.ibm.wala.ssa.SSANewInstruction;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.collections.HashMapFactory;
import com.ibm.wala.util.intset.IntSet;
import com.ibm.wala.util.intset.MutableIntSet;
import com.ibm.wala.util.intset.MutableSparseIntSet;
import de.unipassau.modifiedpaths.AccessPathsDomain;

import java.util.HashMap;

public class IFCTaintAnalysis {
    private final ICFGSupergraph supergraph;
    private final CGNode bridgeNode;
    private final HashMap<Object, Object> fakeReturns;
    private final TaintAnalysisFactDomain domain;

    public IFCTaintAnalysis(CallGraph cg, CGNode bridgeNode) {
        domain = new TaintAnalysisFactDomain();
        fakeReturns = HashMapFactory.make();
        this.bridgeNode = bridgeNode;
        this.supergraph = ICFGSupergraph.make(cg);
    }

    private  class TaintAnalysisFlowFunctions implements IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> {

        private SSAInstruction getInstruction(BasicBlockInContext<IExplodedBasicBlock> block) {
            return block.getDelegate().getInstruction();
        }

        public IUnaryFlowFunction indentity() {
            return new IUnaryFlowFunction() {
                @Override
                public IntSet getTargets(int d1) {
                    MutableIntSet results = MutableSparseIntSet.makeEmpty();
                    results.add(domain.getMappedIndex(d1));
                    return  results;
                }
            };
        }

        @Override
        public IUnaryFlowFunction getNormalFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dst) {
            SSAInstruction inst = getInstruction(src);
            if (inst instanceof SSANewInstruction) {
                return buildNewInstructionFunction();
            } else {
                return indentity();
            }
        }

        public IUnaryFlowFunction buildNewInstructionFunction() {

        }

        @Override
        public IUnaryFlowFunction getCallFlowFunction(BasicBlockInContext<IExplodedBasicBlock> ssaInstructions, BasicBlockInContext<IExplodedBasicBlock> t1, BasicBlockInContext<IExplodedBasicBlock> t2) {
            return null;
        }

        @Override
        public IFlowFunction getReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> ssaInstructions, BasicBlockInContext<IExplodedBasicBlock> t1, BasicBlockInContext<IExplodedBasicBlock> t2) {
            return null;
        }

        @Override
        public IUnaryFlowFunction getCallToReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> ssaInstructions, BasicBlockInContext<IExplodedBasicBlock> t1) {
            return null;
        }

        @Override
        public IUnaryFlowFunction getCallNoneToReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> ssaInstructions, BasicBlockInContext<IExplodedBasicBlock> t1) {
            return null;
        }
    }
}
