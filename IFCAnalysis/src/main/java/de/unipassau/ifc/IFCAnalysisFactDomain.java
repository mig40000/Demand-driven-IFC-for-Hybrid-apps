package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.PathEdge;
import com.ibm.wala.dataflow.IFDS.TabulationDomain;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.collections.HashSetFactory;
import com.ibm.wala.util.intset.MutableMapping;
import com.ibm.wala.util.intset.OrdinalSetMapping;
import org.jetbrains.annotations.NotNull;

import java.util.HashSet;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.stream.Stream;

public class IFCAnalysisFactDomain extends MutableMapping<IfcAnalysisFact> implements TabulationDomain<IfcAnalysisFact, BasicBlockInContext<IExplodedBasicBlock>> {


    @Override
    public boolean hasPriorityOver(PathEdge<BasicBlockInContext<IExplodedBasicBlock>> p1, PathEdge<BasicBlockInContext<IExplodedBasicBlock>> p2) {
        return true;
    }

}
