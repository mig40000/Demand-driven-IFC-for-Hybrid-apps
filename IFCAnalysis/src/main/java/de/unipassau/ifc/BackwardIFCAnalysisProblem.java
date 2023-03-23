package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.ISupergraph;
import com.ibm.wala.dataflow.IFDS.PathEdge;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.SymbolTable;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;

import java.util.ArrayList;
import java.util.Collection;

public class BackwardIFCAnalysisProblem extends AbstractIFCAnalysisProblem {

    protected BackwardIFCAnalysisProblem(CGNode entrypoint, IFCAnalysisFactDomain domain, ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph) {
        super(entrypoint, domain, supergraph);
    }

    @Override
    public Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> initialSeeds() {
        Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> pathEdges = new ArrayList<>();
        var entrypointsg = supergraph.getEntriesForProcedure(entrypoint)[0];
        SymbolTable symbolTable = entrypoint.getIR().getSymbolTable();
        for (int i=0; i < symbolTable.getMaxValueNumber(); ++i) {
            IfcAnalysisFact fact = new IfcAnalysisFact(this.entrypoint, i, null, IFCLabel.PUBLIC);
            int id = addToDomain(fact);
            PathEdge<BasicBlockInContext<IExplodedBasicBlock>> edge = PathEdge.createPathEdge(entrypointsg, id, entrypointsg, id);
            pathEdges.add(edge);
        }
        return pathEdges;
    }
}
