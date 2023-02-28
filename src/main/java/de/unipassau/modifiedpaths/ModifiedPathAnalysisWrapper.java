package de.unipassau.modifiedpaths;

import com.ibm.wala.dataflow.IFDS.*;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.*;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.intset.IntSet;
import com.ibm.wala.util.intset.MutableIntSet;
import com.ibm.wala.util.intset.MutableSparseIntSet;
import de.unipassau.accesspaths.AccessGraph;
import de.unipassau.accesspaths.FieldGraph;

import java.util.Set;

public class ModifiedPathAnalysisWrapper implements IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> {
    private final ICFGSupergraph supergraph;
    private final CGNode bridgeNode;

    private final AccessPathsDomain domain;

    public ModifiedPathAnalysisWrapper(CallGraph callGraph, CGNode bridgeNode) {
        this.supergraph = ICFGSupergraph.make(callGraph);
        this.bridgeNode = bridgeNode;
        this.domain = new AccessPathsDomain();
    }


    private MutableIntSet entryBlockDataflowFacts(BasicBlockInContext<IExplodedBasicBlock> entryBlk) {
        MutableIntSet entryfacts = MutableSparseIntSet.makeEmpty();
        // Ininitalize the facts of all parameters for computing reachabiblity
        var symbolTable = getSymbolTable(entryBlk);
        var params = getParameterValueNumbers(entryBlk);
        entryBlk.getDelegate().getInstruction()
        for (int param : params) {
            AccessGraph paramNode = new AccessGraph(param);
            int fact = domain.add(paramNode);
            entryfacts.add(fact);
        }
        return entryfacts;
    }

    private int[] getParameterValueNumbers(BasicBlockInContext<IExplodedBasicBlock> entryBlk) {
        return entryBlk.getNode().getIR().getParameterValueNumbers();
    }

    private SymbolTable getSymbolTable(BasicBlockInContext<IExplodedBasicBlock> entryBlk) {
        return entryBlk.getNode().getIR().getSymbolTable();
    }


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

        if (src.isEntryBlock()) {
            return identity(entryfacts);
        } else {
            return IdentityFlowFunction.identity();
        }
    }

    private IUnaryFlowFunction getPhiInstructionFlowFunction(SSAPhiInstruction instr, MutableIntSet entry) {
        /*
            propagate the dataflow facts for phi instruction v1 = phi(v2, v3)
         */
        int v1 = instr.getDef();
        int v2 = instr.getUse(0);
        int v3 = instr.getUse(1);
        Set<Integer> uses = Set.of(v2, v3);
        return new IUnaryFlowFunction() {
            @Override
            public IntSet getTargets(int i) {
                AccessGraph ag = domain.getMappedObject(i);
                if (uses.contains(ag.getBaseVariable())) {
                    AccessGraph dst = new AccessGraph(v1);
                    int id = domain.add(dst);
                    entry.add(id);
                    return entry;
                } else {
                    // return the identity function
                    return entry;
                }
            }
        };
    }

    /*
        for each x = v.f, add the field to the dataflow entry

     */

    private IUnaryFlowFunction getGetFieldFlowFunction(SSAGetInstruction get, MutableIntSet entry) {
        int src = get.getUse(0);
        var field = get.getDeclaredField().getName().toString();
        int dest = get.getDef();

        return new IUnaryFlowFunction() {
            @Override
            public IntSet getTargets(int i) {
                var accessgraph = domain.getMappedObject(i);
                if (accessgraph.matchBase(src)) {
                    AccessGraph newAccessgrpah = new AccessGraph(dest, accessgraph.fieldGraph());
                    int id = domain.add(newAccessgrpah);
                    entry.add(id);
                    return entry;
                }
                return entry;
            }
        };
    }

    /*
        for each x.f = v, add the field and put the dataflow
     */
    private IUnaryFlowFunction getPutFieldFlowFunction(SSAPutInstruction put, MutableIntSet entry) {
        int dest = put.getUse(0); // x
        int src = put.getUse(1); // v
        var field = put.getDeclaredField();


        return new IUnaryFlowFunction() {
            @Override
            public IntSet getTargets(int i) {
                var accessgraph = domain.getMappedObject(i);
                if (accessgraph.matchBase(dest)) {
                    AccessGraph newAccessgraph = new AccessGraph(src, new FieldGraph(new String[]{field}));
                    int id = domain.add(newAccessgraph);
                    entry.add(id);
                }
                return entry; // identity function
            }
        };
    }

    private IUnaryFlowFunction union(IUnaryFlowFunction f1, IUnaryFlowFunction f2) {
        return d1 -> f1.getTargets(d1).union(f2.getTargets(d1));
    }

    private IUnaryFlowFunction getNewInstructionFlowFunction(SSANewInstruction inst, MutableIntSet entry) {
        return d1 -> {
            AccessGraph newgraph = new AccessGraph(inst.getDef());
            entry.add(domain.add(newgraph));
            return entry;
        };
    }


    private IUnaryFlowFunction identity(MutableIntSet entry) {
        return new IUnaryFlowFunction() {
            @Override
            public IntSet getTargets(int i) {
                MutableIntSet result = MutableSparseIntSet.make(entry);
                return result;
            }
        };
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

    /**
     *
     * @param src Call Instruction
     * @param dst Entry of the callee
     * @param ret the return value !! I don't fucking know why is this thing is required here!!
     * @return The flow function for the
     */
    @Override
    public IUnaryFlowFunction getCallFlowFunction(BasicBlockInContext<IExplodedBasicBlock> src, BasicBlockInContext<IExplodedBasicBlock> dst, BasicBlockInContext<IExplodedBasicBlock> ret) {
        SSAInvokeInstruction invoke =  (SSAInvokeInstruction) getInstruction(src);

        return new IUnaryFlowFunction() {
            // map d1 to the dataflow fact of the called function
            @Override
            public IntSet getTargets(int d1) {
                MutableIntSet result = MutableSparseIntSet.makeEmpty();

                // map the actual parameters in d1 to the formal parameters in the called function

                for (int i=0; i < invoke.getNumberOfPositionalParameters(); ++i) {
                    AccessGraph graph = domain.getMappedObject(d1);
                    int vi = invoke.getUse(i);
                    if (graph.matchBase(vi)) {
                        AccessGraph newgraph = new AccessGraph(dst.getNode())
                    }
                }

                return result;
            }
        };
    }

    @Override
    public IFlowFunction getReturnFlowFunction(BasicBlockInContext<IExplodedBasicBlock> ssaInstructions, BasicBlockInContext<IExplodedBasicBlock> t1, BasicBlockInContext<IExplodedBasicBlock> t2) {

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
