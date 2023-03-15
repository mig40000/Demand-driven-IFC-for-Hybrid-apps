package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.PathEdge;
import com.ibm.wala.dataflow.IFDS.TabulationDomain;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.intset.MutableMapping;

public class AccessGraphDomain extends MutableMapping<IfcAnalysisFact> implements TabulationDomain<IfcAnalysisFact, BasicBlockInContext<IExplodedBasicBlock>> {
    @Override
    public boolean hasPriorityOver(PathEdge<BasicBlockInContext<IExplodedBasicBlock>> pathEdge, PathEdge<BasicBlockInContext<IExplodedBasicBlock>> pathEdge1) {
        return false;
    }
}
