package de.unipassau.modifiedpaths;

import com.ibm.wala.classLoader.CallSiteReference;
import com.ibm.wala.classLoader.IField;
import com.ibm.wala.dataflow.IFDS.*;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.ssa.*;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.types.ClassLoaderReference;
import com.ibm.wala.types.FieldReference;
import com.ibm.wala.types.MethodReference;
import com.ibm.wala.types.TypeReference;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.collections.HashMapFactory;
import com.ibm.wala.util.intset.IntSet;
import com.ibm.wala.util.intset.MutableIntSet;
import com.ibm.wala.util.intset.MutableSparseIntSet;
import de.unipassau.accesspaths.AccessGraph;
import de.unipassau.accesspaths.FieldGraph;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Set;

/**
 * Flow functions for modified path analysis
 */
public class ModifiedPathAnalysis {
    private final ICFGSupergraph supergraph;
    private final CGNode bridgeNode;
    private final HashMap<Object, Object> fakeReturns;
    private final AccessPathsDomain domain;

    private final int FAKE_RETURN_VALUE = Integer.MAX_VALUE;

    public ModifiedPathAnalysis(CallGraph callGraph, CGNode bridgeNode) {
        this.supergraph = ICFGSupergraph.make(callGraph);
        this.bridgeNode = bridgeNode;
        this.domain = new AccessPathsDomain();
        fakeReturns = HashMapFactory.make();
    }


    public AccessPathsDomain domain() {
        return this.domain;
    }

    public CGNode bridgemethod() {
        return this.bridgeNode;
    }

    private MutableIntSet entryBlockDataflowFacts(BasicBlockInContext<IExplodedBasicBlock> entryBlk) {
        MutableIntSet entryfacts = MutableSparseIntSet.makeEmpty();
        // Ininitalize the facts of all parameters for computing reachabiblity
        var symbolTable = getSymbolTable(entryBlk);
        for (int i=0; i < symbolTable.getMaxValueNumber(); ++i) {
            AccessGraph variable = new AccessGraph(entryBlk.getNode(), i);
            int fact = domain.add(variable);
            entryfacts.add(fact);
        }
//        var params = getParameterValueNumbers(entryBlk);
//        for (int param : params) {
//            AccessGraph paramNode = new AccessGraph(entryBlk.getNode(), param);
//            int fact = domain.add(paramNode);
//            entryfacts.add(fact);
//        }
        return entryfacts;
    }

    private int[] getParameterValueNumbers(BasicBlockInContext<IExplodedBasicBlock> entryBlk) {
        return entryBlk.getNode().getIR().getParameterValueNumbers();
    }

    private SymbolTable getSymbolTable(BasicBlockInContext<IExplodedBasicBlock> entryBlk) {
        return entryBlk.getNode().getIR().getSymbolTable();
    }

    protected class Flowfunctions implements IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> {
        @Override
        public IUnaryFlowFunction getNormalFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dst) {
            MutableIntSet entryfacts = MutableSparseIntSet.makeEmpty();

            if (src.isEntryBlock()) {
                entryfacts = entryBlockDataflowFacts(src);
            }

            SSAInstruction instr = getInstruction(src);


            if (instr instanceof SSANewInstruction) {
                return getNewInstructionFlowFunction((SSANewInstruction) instr, entryfacts);
            }

            if (instr instanceof SSAPutInstruction) {
                return getPutFieldFlowFunction((SSAPutInstruction) instr, entryfacts);
            }

            if (instr instanceof SSAGetInstruction) {
                return getGetFieldFlowFunction((SSAGetInstruction) instr, entryfacts);
            }

            if (instr instanceof SSAPhiInstruction) {
                return getPhiInstructionFlowFunction((SSAPhiInstruction) instr, entryfacts);
            }

            if (instr instanceof SSAReturnInstruction) {
                return getReturnInstructionFlowFunction((SSAReturnInstruction) instr, src.getNode(), entryfacts);
            }

            if (src.isEntryBlock()) {
                return identity(entryfacts);
            } else {
                return IdentityFlowFunction.identity();
            }
        }

        /**
         * Map the return value to a fake return value. The fake return value will be prpoagated to the caller function
         */
        private IUnaryFlowFunction getReturnInstructionFlowFunction(SSAReturnInstruction instr, CGNode node, MutableIntSet entryfacts) {
            int vr = instr.getUse(0);
            return new IUnaryFlowFunction() {
                @Override
                public IntSet getTargets(int d1) {
                    AccessGraph graph = domain.getMappedObject(d1);
                    if (graph == null) {
                        return entryfacts;
                    }
                    if (graph.hasBase(vr)) {
                        //Create a fake return value and add it to the
                        AccessGraph returnValue = new AccessGraph(node, FAKE_RETURN_VALUE);
                        fakeReturns.put(node, returnValue);
                        int id = domain.add(returnValue);
                        entryfacts.add(id);
                    }
                    return entryfacts;
                }
            };
        }

        private IUnaryFlowFunction getPhiInstructionFlowFunction(SSAPhiInstruction instr, MutableIntSet entry) {
        /*
            propagate the dataflow facts for phi instruction v1 = phi(v2, v3)
         */
            int v1 = instr.getDef();
            int v2 = instr.getUse(0);
            int v3 = instr.getUse(1);
            Set<Integer> uses = Set.of(v2, v3);
            return d1 -> {
                AccessGraph ag = domain.getMappedObject(d1);
                if (uses.contains(ag.getBaseVariable())) {
                    AccessGraph dst = new AccessGraph(ag.getCgNode(), v1);
                    int id = domain.add(dst);
                    entry.add(id);
                }
                return entry;
            };
        }

    /*
        for each x = v.f, add the field to the dataflow entry

     */

        private IUnaryFlowFunction getGetFieldFlowFunction(SSAGetInstruction get, MutableIntSet entry) {
            int src = get.getUse(0);
            var field = get.getDeclaredField().getName().toString();
            int dest = get.getDef();

            return i -> {
                var accessgraph = domain.getMappedObject(i);
                if (accessgraph.hasBase(src)) {
                    AccessGraph newAccessgrpah = new AccessGraph(bridgeNode, dest, accessgraph.fieldGraph());
                    int id = domain.add(newAccessgrpah);
                    entry.add(id);
                    return entry;
                }
                return entry;
            };
        }

        /*
            for each x.f = v, add the field and put the dataflow
         */
        private IUnaryFlowFunction getPutFieldFlowFunction(SSAPutInstruction put, MutableIntSet entry) {
            int dest = put.getUse(0); // x
            int src = put.getUse(1); // v
            var field = resolveFieldReference(bridgeNode.getClassHierarchy(), put.getDeclaredField());


            return i -> {
                var accessgraph = domain.getMappedObject(i);
                if (accessgraph.hasBase(dest)) {
                    AccessGraph newAccessgraph = new AccessGraph(bridgeNode, src, FieldGraph.of(field));
                    int id = domain.add(newAccessgraph);
                    entry.add(id);
                }
                return entry; // identity function
            };
        }

        private IField resolveFieldReference(IClassHierarchy cha, FieldReference fr) {
            IField f = cha.resolveField(fr);
            assert f != null : "unable to resolve field [" + fr + "]";
            return f;
        }

        private IUnaryFlowFunction union(IUnaryFlowFunction f1, IUnaryFlowFunction f2) {
            return d1 -> f1.getTargets(d1).union(f2.getTargets(d1));
        }

        private IUnaryFlowFunction getNewInstructionFlowFunction(SSANewInstruction inst, MutableIntSet entry) {
            return d1 -> {
                AccessGraph newgraph = new AccessGraph(bridgeNode, inst.getDef());
                entry.add(domain.add(newgraph));
                return entry;
            };
        }


        private IUnaryFlowFunction identity(MutableIntSet entry) {
            return d1 -> MutableSparseIntSet.make(entry);
        }

        /**
         * Returns  { (d1, d3) | (d1, d2) in f1 and (d2, d3) in f2 }
         */
        private IUnaryFlowFunction compose(IUnaryFlowFunction f1, IUnaryFlowFunction f2) {
            return d1 -> {
                MutableSparseIntSet result = MutableSparseIntSet.make(f1.getTargets(d1));
                f2.getTargets(d1).foreach(d2 -> result.addAll(f1.getTargets(d2)));
                return result;
            };
        }

        private SSAInstruction getInstruction(BasicBlockInContext<IExplodedBasicBlock> src) {
            return src.getDelegate().getInstruction();
        }

        private boolean isAndroidLibraryMethodCall(CallSiteReference callsite) {
            MethodReference method = callsite.getDeclaredTarget();
            TypeReference clazz = method.getDeclaringClass();
            return clazz.getName().toString().startsWith("LAndroid");
        }
        /**
         * @param src Call Instruction
         * @param dst Entry of the callee
         * @param ret the return value !! I don't fucking know why is this thing is required here!!
         * @return The flow function for the
         */
        @Override
        public IUnaryFlowFunction getCallFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dst, BasicBlockInContext<IExplodedBasicBlock> ret) {
            SSAInvokeInstruction invoke = (SSAInvokeInstruction) getInstruction(src);

            if (isLibraryFunctionCall(invoke.getCallSite())) {
                // Skip library calls and replace them with identity function
                return IdentityFlowFunction.identity();
            }

            if (isAndroidLibraryMethodCall(invoke.getCallSite())) {
                return IdentityFlowFunction.identity();
            }

            if (invoke.getCallSite().isVirtual()) {

            }
            // map the positional parameters and propagate the reachable parameters
            // map d1 to the dataflow fact of the called function

            /*
             * For each function call at site f(x, y, z) to a function f(a, b, c), map the access graph of x to a, y to b, and z to c
             */
            return d1 -> {
                MutableIntSet result = MutableSparseIntSet.makeEmpty();
                for (int i = 0; i < invoke.getNumberOfPositionalParameters(); ++i) {
                    AccessGraph graph = domain.getMappedObject(d1);
                    int vi = invoke.getUse(i);
                    if (graph.hasBase(vi)) {
                        AccessGraph newgraph = new AccessGraph(dst.getNode(), i, graph.fieldGraph());
                        int id = domain.add(newgraph);
                        result.add(id);
                    }
                }
                return result;
            };
        }

        private boolean isLibraryFunctionCall(CallSiteReference callsite) {
            return callsite.getDeclaredTarget().getDeclaringClass().getClassLoader().equals(ClassLoaderReference.Primordial);
        }

//        private boolean isAndroidLibraryCall(CallSiteReference callsite) {
//            if (callsite.)
//        }

        private IUnaryFlowFunction empty() {
            return d1 -> MutableSparseIntSet.makeEmpty();
        }

        @Override
        public IFlowFunction getReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> call, BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dst) {
            // src in the called function, dst is in caller function
            SSAInvokeInstruction invoke = (SSAInvokeInstruction) getInstruction(call);
            if (!invoke.hasDef()) {
                // don't propagate as there is no variable which captures the return value
                return empty();
            }
            int callerDef = invoke.getDef();
            return (IUnaryFlowFunction) d1 -> {
                AccessGraph returnvalue = domain.getMappedObject(d1);
                MutableIntSet result = MutableSparseIntSet.makeEmpty();
                if (returnvalue.hasBase(FAKE_RETURN_VALUE)) {
                    AccessGraph capturingVariable = new AccessGraph(call.getNode(), callerDef);
                    result.add(domain.add(capturingVariable));
                }
                return result;
            };
        }

        @Override
        public IUnaryFlowFunction getCallToReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> ssaInstructions, BasicBlockInContext<IExplodedBasicBlock> t1) {
            return IdentityFlowFunction.identity();
        }

        @Override
        public IUnaryFlowFunction getCallNoneToReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> ssaInstructions, BasicBlockInContext<IExplodedBasicBlock> t1) {
            return IdentityFlowFunction.identity();
        }
    } // end of flow functions

    public ICFGSupergraph supergraph() {
        return supergraph;
    }

    protected class MPAProblem implements TabulationProblem<BasicBlockInContext<IExplodedBasicBlock>, CGNode, AccessGraph> {

        private final Flowfunctions flowfunctions = new Flowfunctions();

        @Override
        public ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> getSupergraph() {
            return supergraph();
        }

        @Override
        public TabulationDomain<AccessGraph, BasicBlockInContext<IExplodedBasicBlock>> getDomain() {
            return domain;
        }

        @Override
        public IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> getFunctionMap() {
            return this.flowfunctions;
        }

        @Override
        public Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> initialSeeds() {
            CGNode entryMethod = bridgemethod();
            ArrayList<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> seeds = new ArrayList<>();
            var entryBlock = entryMethod.getIR().getControlFlowGraph().entry().getGraphNodeId();
            // add all parameters of the bridge method as seed values
            // essentially, for every f(n1, n2, ..., nn), it creates the pathedge <f, n_i> --> <f, n_i> for n_i in {n1, .., nn}
            var entrySuperblock = supergraph().getLocalBlock(entryMethod, entryBlock);
            for (int param : entryMethod.getIR().getParameterValueNumbers()) {
                // ignore the first parameter as it denotes "this" parameter.
                if (param != 0) {
                    AccessGraph paramI = new AccessGraph(entryMethod, param);
                    int id = domain.add(paramI);
                    seeds.add(PathEdge.createPathEdge(entrySuperblock, id, entrySuperblock, id));
                }
            }
            return seeds;
        }

        @Override
        public IMergeFunction getMergeFunction() {
            return null;
        }
    } // end of MPA Problem

    public TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, AccessGraph> analyze() {
        var solver = TabulationSolver.make(new MPAProblem());
        try {
            return solver.solve();
        } catch (CancelException e) {
            throw new IllegalStateException("Cannot solve the constraints");
        }
    }
}
