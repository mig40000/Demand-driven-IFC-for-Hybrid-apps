package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.PathEdge;
import com.ibm.wala.dataflow.IFDS.TabulationDomain;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.ISSABasicBlock;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.intset.MutableMapping;

public class TaintAnalysisFactDomain extends MutableMapping<TaintAnalysisFact> implements TabulationDomain<TaintAnalysisFact, BasicBlockInContext<IExplodedBasicBlock>> {
    @Override
    public boolean hasPriorityOver(PathEdge<BasicBlockInContext<IExplodedBasicBlock>> pathEdge, PathEdge<BasicBlockInContext<IExplodedBasicBlock>> pathEdge1) {
        return false;
    }
}
