package de.unipassau.jsanalysis;

import com.ibm.wala.dataflow.IFDS.ISupergraph;
import com.ibm.wala.dataflow.IFDS.PathEdge;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.IR;
import com.ibm.wala.ssa.SymbolTable;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import de.unipassau.ifc.AbstractIFCAnalysisProblem;
import de.unipassau.ifc.IFCAnalysisFactDomain;
import de.unipassau.ifc.IFCLabel;
import de.unipassau.ifc.IfcAnalysisFact;
import de.unipassau.utils.SourceSinkManager;

import java.util.ArrayList;
import java.util.Collection;

public class JSIfcAnalysis extends AbstractIFCAnalysisProblem  {

    Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> bridgesummaries;
    protected JSIfcAnalysis(CGNode entrypoint, IFCAnalysisFactDomain domain, ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph, Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> bridgesummaries, SourceSinkManager manager) {
        super(entrypoint, domain, supergraph, manager);
        this.bridgesummaries = bridgesummaries;
    }


    BasicBlockInContext<IExplodedBasicBlock> getEntryblock() {
        return this.supergraph.getEntriesForProcedure(this.entrypoint)[0];
    }

    @Override
    public Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> initialSeeds() {
        IR ir = entrypoint.getIR();
        SymbolTable symbolTable = ir.getSymbolTable();
        Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> edges = new ArrayList<>();
        for (int i=0; i < symbolTable.getMaxValueNumber(); ++i) {
            IfcAnalysisFact fact = new IfcAnalysisFact(entrypoint, i, null, IFCLabel.PUBLIC);
            int id = addToDomain(fact);
            var entryblock = getEntryblock();
            edges.add(PathEdge.createPathEdge(entryblock, id, entryblock, id));
        }
        return edges;
    }
}
