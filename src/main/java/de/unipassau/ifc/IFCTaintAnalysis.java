package de.unipassau.ifc;

import com.ibm.wala.classLoader.IField;
import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.dataflow.IFDS.IFlowFunction;
import com.ibm.wala.dataflow.IFDS.IFlowFunctionMap;
import com.ibm.wala.dataflow.IFDS.IUnaryFlowFunction;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.ssa.*;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.types.FieldReference;
import com.ibm.wala.util.collections.HashMapFactory;
import com.ibm.wala.util.intset.IntSet;
import com.ibm.wala.util.intset.MutableIntSet;
import com.ibm.wala.util.intset.MutableSparseIntSet;
import de.unipassau.accesspaths.AccessGraph;
import de.unipassau.accesspaths.FieldGraph;

import java.util.HashMap;
import java.util.Iterator;

public class IFCTaintAnalysis {
    private final ICFGSupergraph supergraph;
    private final CGNode bridgeNode;
    private final HashMap<Object, Object> fakeReturns;
    private final TaintAnalysisFactDomain domain;
    private final HashMap<CGNode, TaintAnalysisFact> returnFacts;
    private final static int RETURN_VALUE = Integer.MAX_VALUE;

    public IFCTaintAnalysis(CallGraph cg, CGNode bridgeNode) {
        domain = new TaintAnalysisFactDomain();
        fakeReturns = HashMapFactory.make();
        this.bridgeNode = bridgeNode;
        this.supergraph = ICFGSupergraph.make(cg);
        this.returnFacts = HashMapFactory.make();
    }

    private class TaintAnalysisFlowFunctions implements IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> {

        private SSAInstruction getInstruction(BasicBlockInContext<IExplodedBasicBlock> block) {
            return block.getDelegate().getInstruction();
        }

        public IUnaryFlowFunction identity() {
            return d1 -> {
                MutableIntSet results = MutableSparseIntSet.makeEmpty();
                results.add(d1);
                return results;
            };
        }

        @Override
        public IUnaryFlowFunction getNormalFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dst) {
            SSAInstruction inst = getInstruction(src);

            if (inst instanceof SSANewInstruction) {
                return buildNewInstructionFunction((SSANewInstruction) inst, src.getNode());
            } else if (inst instanceof SSAPutInstruction) {
                return buildPutInstructionFunction((SSAPutInstruction) inst, src.getNode());
            } else if (inst instanceof SSAGetInstruction) {
                return buildGetInstruction((SSAGetInstruction) inst, src.getNode());
            } else if (inst instanceof SSAReturnInstruction) {
                return buildReturnInstruction((SSAReturnInstruction) inst, src.getNode());
            } else if (inst instanceof SSAPhiInstruction) {
                return buildPhiInstruction((SSAPhiInstruction) inst, src.getNode());
            }else {
                return identity();
            }
        }

        private IUnaryFlowFunction buildPhiInstruction(SSAPhiInstruction inst, CGNode node) {
            return new IUnaryFlowFunction() {
                @Override
                public IntSet getTargets(int d1) {
                    MutableIntSet result = MutableSparseIntSet.makeEmpty();
                    for (int i=0; i < inst.getNumberOfUses(); ++i) {
                        int use = inst.getUse(i);
                        var srcFact = domain.getMappedObject(d1);
                        if (srcFact.getBase() == use) {
                            TaintAnalysisFact fact = new TaintAnalysisFact(node, RETURN_VALUE, null, srcFact.taintinfo());
                            result.add(domain.add(fact));
                        } else {
                            result.add(d1);
                        }
                    }
                    return result;
                }
            };
        }

        private IUnaryFlowFunction buildReturnInstruction(SSAReturnInstruction inst, CGNode node) {
            return d1 -> {
                final MutableIntSet result = MutableSparseIntSet.makeEmpty();
                int src = inst.getUse(0);
                var fact = domain.getMappedObject(d1);
                if (fact.getBase() == src) {
                    AccessGraph graph = new AccessGraph(node, RETURN_VALUE, null);
                    result.add(domain.add(new TaintAnalysisFact(graph, fact.taintinfo())))
                } else {
                    result.add(d1);
                }
                return result;
            };
        }

        private IUnaryFlowFunction buildGetInstruction(SSAGetInstruction inst, CGNode node) {
            return d1 -> {
                int src = inst.getUse(0);
                int dst = inst.getDef();
                IField field = resolveField(node.getClassHierarchy(), inst.getDeclaredField());
                MutableIntSet result = MutableSparseIntSet.makeEmpty();
                var srcTaintInfo = domain.getMappedObject(d1);
                if (srcTaintInfo.getBase() == src) {
                    if (srcTaintInfo.fieldgraph() == null) {
                        AccessGraph srcWithField = new AccessGraph(node, src, new FieldGraph(new IField[]{field}));
                        TaintAnalysisFact fieldFact = new TaintAnalysisFact(srcWithField, srcTaintInfo.taintinfo());
                        result.add(domain.add(fieldFact));
                    }
                    AccessGraph dest = new AccessGraph(node, dst);
                    TaintAnalysisFact dstFact = new TaintAnalysisFact(dest, srcTaintInfo.taintinfo());
                    result.add(domain.add(dstFact));
                } else {
                    result.add(d1);
                }
                return result;
            };
        }

        private IUnaryFlowFunction buildPutInstructionFunction(SSAPutInstruction inst, CGNode node) {
            return d1 -> {
                int dst = inst.getUse(0);
                int src = inst.getUse(1);
                IField field = resolveField(bridgeNode.getClassHierarchy(), inst.getDeclaredField());
                MutableIntSet result = MutableSparseIntSet.makeEmpty();
                var srcTaintInfo = domain.getMappedObject(d1);
                if (srcTaintInfo.getBase() == src) {
                    TaintAnalysisFact fact = new TaintAnalysisFact(new AccessGraph(node, dst, new FieldGraph(new IField[]{field})), srcTaintInfo.taintinfo());
                    int x = domain.add(fact);
                    result.add(x);
                } else {
                    result.add(d1); // return identify function
                }
                return result;
            };
        }

        private IField resolveField(IClassHierarchy cha, FieldReference f) {
            IField field = cha.resolveField(f);
            assert field != null;
            return field;
        }

        public IUnaryFlowFunction buildNewInstructionFunction(SSANewInstruction inst, CGNode node) {
            return d1 -> {
                int def = inst.getDef();
                MutableIntSet result = MutableSparseIntSet.makeEmpty();
                TaintAnalysisFact fact = new TaintAnalysisFact(new AccessGraph(node, def), TaintInformation.UNTAINTED);
                int x = domain.add(fact);
                result.add(x);
                result.add(d1);
                return result;
            };
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
            return identity();
        }
    }
}
