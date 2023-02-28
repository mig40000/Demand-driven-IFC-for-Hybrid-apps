package de.unipassau.ifds;

import com.ibm.wala.cfg.ControlFlowGraph;
import com.ibm.wala.classLoader.IMethod;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.InterproceduralCFG;
import com.ibm.wala.ssa.ISSABasicBlock;
import com.ibm.wala.ssa.SSAInstruction;

public class InterproceduralCFGView {
    private InterproceduralCFG cfg;
    private CGNode node;

    public InterproceduralCFGView(InterproceduralCFG cfg, CGNode node) {
        this.cfg = cfg;
        this.node = node;
    }

    private ControlFlowGraph<SSAInstruction, ISSABasicBlock> findStart() {
       return cfg.getCFG(this.node);
    }

}
