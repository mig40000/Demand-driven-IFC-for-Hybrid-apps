package de.unipassau.ifc;

import com.ibm.wala.classLoader.IField;
import com.ibm.wala.dataflow.IFDS.IFlowFunction;
import com.ibm.wala.dataflow.IFDS.IFlowFunctionMap;
import com.ibm.wala.dataflow.IFDS.IUnaryFlowFunction;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.ssa.*;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.collections.HashMapFactory;
import com.ibm.wala.util.intset.MutableIntSet;
import com.ibm.wala.util.intset.MutableSparseIntSet;
import de.unipassau.accesspaths.AccessGraph;
import de.unipassau.accesspaths.FieldGraph;
import de.unipassau.utils.SourceSinkManager;

import java.util.HashMap;

public class BridgeSummaryFlowfunctions implements IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> {

    protected FlowPathFactDomain domain;
    protected CGNode entryPoint;
    protected HashMap<CGNode, FlowFact> returnFacts = HashMapFactory.make();
    protected static final int RETURN_VALUE = Integer.MAX_VALUE;
    protected SourceSinkManager ssm;


    public BridgeSummaryFlowfunctions(FlowPathFactDomain domain, CGNode entryPoint, SourceSinkManager ssm) {
        this.domain = domain;
        this.entryPoint = entryPoint;
        this.ssm = ssm;
    }

    public MutableIntSet buildEntryBlockFunction(BasicBlockInContext<IExplodedBasicBlock> src) {
        MutableIntSet intset = MutableSparseIntSet.makeEmpty();
        IR ir = src.getNode().getIR();
        for (int vn = 1; vn <= ir.getSymbolTable().getMaxValueNumber(); ++vn) {
            FlowFact newFact = new FlowFact(src.getNode(), vn, null, IFCLabel.PUBLIC);
            FlowPathFact pathFact = FlowPathFact.make(newFact);
            int id = domain.add(pathFact);
            intset.add(id);
        }
        System.out.println("BuildEntryBlockFunction " + intset);
        return intset;
    }


    /**
     * @param src
     * @param dest
     * @return the flow function for a "normal" edge in the supergraph from src -&gt; dest
     */
    @Override
    public IUnaryFlowFunction getNormalFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dest) {
        var inst = FlowFunctionUtils.getInstruction(src);

        MutableIntSet entryfacts = MutableSparseIntSet.makeEmpty();
        if (src.isEntryBlock()) {
            entryfacts = buildEntryBlockFunction(src);
        }

        IUnaryFlowFunction result = null;
        if (inst instanceof SSANewInstruction newInst) {
            result = buildNewInstructionFunction(newInst, src.getNode(), entryfacts);
        } else if (inst instanceof SSAPutInstruction put) {
            result = buildPutInstructionFunction(put, src.getNode(), entryfacts);
        } else if (inst instanceof SSAGetInstruction get) {
            result = buildGetInstruction(get, src.getNode(), entryfacts);
        } else if (inst instanceof SSAReturnInstruction returnInst) {
            result = buildReturnInstruction(returnInst, src.getNode(), entryfacts);
        } else if (inst instanceof SSAPhiInstruction phiInst) {
            result = buildPhiInstruction(phiInst, src.getNode(), entryfacts);
        } else {
            result = FlowFunctionUtils.identityFunction();
        }
        return result;
    }

    private IUnaryFlowFunction buildPhiInstruction(SSAPhiInstruction phiInst, CGNode node, MutableIntSet entryfacts) {
        return d1 -> {
            MutableIntSet result = MutableSparseIntSet.make(entryfacts);
            result.add(d1);

            for (int i = 0; i < phiInst.getNumberOfUses(); ++i) {
                int use = phiInst.getUse(i);
                var srcPath = domain.getMappedObject(d1);
                for (var srcFact : srcPath) {
                    if (srcFact.getBase() == use) {
                        FlowFact newFact = new FlowFact(node, RETURN_VALUE, null, srcFact.ifclabel());
                        FlowPathFact newPath = FlowPathFact.make(newFact);
                        newPath.append(newFact);
                        int id = domain.add(newPath);
                        result.add(id);
                    }
                }
            }
            return result;

        };
    }

    private IUnaryFlowFunction buildReturnInstruction(SSAReturnInstruction returnInst, CGNode node, MutableIntSet entryfacts) {
        return d1 -> {
            final MutableIntSet result = MutableSparseIntSet.make(entryfacts);
            result.add(d1);

            int src = returnInst.getUse(0);
            FlowPathFact path = domain.getMappedObject(d1);
            FlowFact fact = path.last();
            if (fact.getBase() == src) {
                FlowFact newFact = new FlowFact(node, RETURN_VALUE, null, fact.ifclabel());
                FlowPathFact newPath = FlowPathFact.make(path);
                newPath.append(newFact);
                int id = domain.add(newPath);
                result.add(id);
            }

            return result;
        };
    }

    private IUnaryFlowFunction buildGetInstruction(SSAGetInstruction inst, CGNode node, MutableIntSet entryfacts) {
        return d1 -> {
            MutableIntSet result = MutableSparseIntSet.make(entryfacts);
            
            int src = inst.getUse(0);
            int dst = inst.getDef();
            IField field = FlowFunctionUtils.resolveField(node.getClassHierarchy(), inst.getDeclaredField());
            result.add(d1);

            FlowPathFact pathfact = domain.getMappedObject(d1);
            FlowFact fact = pathfact.last();
            if (fact.getBase() == src) {
                FlowFact newFact = new FlowFact(node, dst, fact.fieldgraph(), fact.ifclabel());
                FlowPathFact pathFact = FlowPathFact.make(pathfact);
                pathFact.append(newFact);
                int newPathId = domain.add(pathFact);
                result.add(newPathId);
            }
            return result;
        };
    }

    private IUnaryFlowFunction buildPutInstructionFunction(SSAPutInstruction inst, CGNode node, MutableIntSet entryfacts) {
        return d1 -> {
            MutableIntSet result = MutableSparseIntSet.make(entryfacts);

            int dst = inst.getUse(0);
            int src = inst.getUse(1);
            IField field = FlowFunctionUtils.resolveField(getClassHierarchy(), inst.getDeclaredField());
            result.add(d1);
            FlowPathFact srcPath = domain.getMappedObject(d1);
            FlowFact fact = srcPath.last();
            if (fact.getBase() == src) {
                FlowFact newFact = new FlowFact(node, dst, FieldGraph.of(field), fact.ifclabel());
                FlowPathFact newPath = FlowPathFact.make(srcPath);
                newPath.append(newFact);
                result.add(domain.add(newPath));
            }
            return result;
        };
    }

    private IUnaryFlowFunction buildNewInstructionFunction(SSANewInstruction newInst, CGNode node, MutableIntSet entryfacts) {
        return d1 -> {
            MutableIntSet result = MutableSparseIntSet.make(entryfacts);
            int def = newInst.getDef();
            FlowPathFact fact = FlowPathFact.make(new FlowFact(new AccessGraph(node, def), IFCLabel.PUBLIC));
            int factId = domain.add(fact);
            result.add(factId);
            result.add(d1);
            return result;
        };
    }

    /**
     * @param src  the call block
     * @param dest the entry of the callee
     * @param ret  the block that will be returned to, in the caller. This can be null .. signifying
     *             that facts can flow into the callee but not return
     * @return the flow function for a "call" edge in the supergraph from src -&gt; dest
     */
    @Override
    public IUnaryFlowFunction getCallFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dest, BasicBlockInContext<IExplodedBasicBlock> ret) {
        SSAInvokeInstruction invoke = (SSAInvokeInstruction) FlowFunctionUtils.getInstruction(src);
        if (FlowFunctionUtils.isSensitiveSource(ssm, invoke.getCallSite())) {
            return d1 -> {
                MutableIntSet result = MutableSparseIntSet.makeEmpty();
                result.add(d1);

                int def = invoke.getDef();
                if (def != -1) {
                    FlowFact fact = new FlowFact(src.getNode(), def, null, IFCLabel.SECRET);
                    FlowPathFact pathFact = FlowPathFact.make(fact);
                    int id = domain.add(pathFact);
                    result.add(id);
                }
                return result;
            };
        }

        if (FlowFunctionUtils.isLibraryCall(invoke.getCallSite())) {
            // propagate library calls by replqcing it with identity functions
            return FlowFunctionUtils.emptyFunction();
        }

        // skip analysing these calls and replace it with identity functions
        return d1 -> {
            MutableIntSet result = MutableSparseIntSet.makeEmpty();
            var path = domain.getMappedObject(d1);
            var fact = path.last();
            for (int i = 0; i < invoke.getNumberOfPositionalParameters(); ++i) {
                int use = invoke.getUse(i);
                if (use == fact.getBase()) {
                    if (i != 0) {
                        FlowFact newfact = new FlowFact(dest.getNode(), i + 1, fact.fieldgraph(), fact.ifclabel());
                        FlowPathFact newPath = FlowPathFact.make(path);
                        newPath.append(newfact);
                        int id = domain.add(newPath);
                        result.add(id);
                    }
                }
            }
            return result;
        };
    }

    /**
     * @param call supergraph node of the call instruction for this return edge.
     * @param src
     * @param dest
     * @return the flow function for a "return" edge in the supergraph from src -&gt; dest
     */
    @Override
    public IFlowFunction getReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> call, BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dest) {
        SSAInvokeInstruction callInstruction = (SSAInvokeInstruction) FlowFunctionUtils.getInstruction(call);
        SSAReturnInstruction returnInst = (SSAReturnInstruction) FlowFunctionUtils.getInstruction(src);

        // In case the return instruction is null, pass the empty set
        if (returnInst == null) {
            return FlowFunctionUtils.emptyFunction();
        }

        if (FlowFunctionUtils.isLibraryCall(callInstruction.getCallSite())) {
            return (IUnaryFlowFunction) d1 -> {
                MutableIntSet result = MutableSparseIntSet.makeEmpty();
                result.add(d1);

                FlowFact newflowfact = new FlowFact(src.getNode(), RETURN_VALUE, null, IFCLabel.PUBLIC);
                FlowPathFact fact = FlowPathFact.make(newflowfact);
                int newFactId = domain.add(fact);
                result.add(newFactId);

                return result;
            };
        }

        return (IUnaryFlowFunction) d1 -> {
            MutableIntSet result = MutableSparseIntSet.makeEmpty();
            // if the use of d1 is reachable
            var flowPath = domain.getMappedObject(d1);
            var flowFact = flowPath.last();
            if (flowFact.getBase() == returnInst.getUse(0)) {
                int def = callInstruction.getDef();
                if (def != -1) {
                    var fakeReturn = returnFacts.get(src.getNode());
                    var newFlowFact = new FlowFact(call.getNode(), def, null, fakeReturn.ifclabel());
                    var newFlowPath = FlowPathFact.make(newFlowFact);
                    result.add(domain.add(newFlowPath));
                }
            }
            return result;
        };
    }

    /**
     * @param src
     * @param dest
     * @return the flow function for a "call-to-return" edge in the supergraph from src -&gt; dest
     */
    @Override
    public IUnaryFlowFunction getCallToReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dest) {
        return FlowFunctionUtils.identityFunction();
    }

    /**
     * @param src
     * @param dest
     * @return the flow function for a "call-to-return" edge in the supergraph from src -&gt; dest,
     * when the supergraph does not contain any callees of src. This happens via, e.g., slicing.
     */
    @Override
    public IUnaryFlowFunction getCallNoneToReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dest) {
        return FlowFunctionUtils.identityFunction();
    }

    protected IClassHierarchy getClassHierarchy() {
        return entryPoint.getClassHierarchy();
    }
}
