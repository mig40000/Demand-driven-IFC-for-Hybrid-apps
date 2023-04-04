package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.ISupergraph;
import com.ibm.wala.dataflow.IFDS.PathEdge;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.IR;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.types.TypeReference;
import de.unipassau.utils.SourceSinkManager;

import java.util.ArrayList;
import java.util.Collection;

public class ForwardIFCAnalysisProblem extends AbstractIFCAnalysisProblem {

    public ForwardIFCAnalysisProblem(CGNode node, IFCAnalysisFactDomain domain, ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph, SourceSinkManager manager) {
        super(node, domain, supergraph, manager);
    }

    @Override
    public Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> initialSeeds() {
        //initialise every symbol in the symbol table
        IR ir = entrypoint.getIR();
        var symbolTable = ir.getSymbolTable();
        Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> initPathEdges = new ArrayList<>();
        var entryBlock = ir.getControlFlowGraph().entry().getGraphNodeId();
        // add all parameters of the bridge method as seed values
        // essentially, for every f(n1, n2, ..., nn), it creates the pathedge <f, n_i> --> <f, n_i> for n_i in {n1, .., nn}
        var entrySuperblock = this.supergraph.getLocalBlock(this.entrypoint, entryBlock);
        initPathEdges.add(PathEdge.createPathEdge(entrySuperblock, 0, entrySuperblock, 0));
//        for (int i = 0; i < symbolTable.getMaxValueNumber(); ++i) {
//            int factId = this.domain.add(new IfcAnalysisFact(this.entrypoint, i, null, IFCLabel.PUBLIC));
//            initPathEdges.add(PathEdge.createPathEdge(entrySuperblock, factId, entrySuperblock, factId));
//        }
        return initPathEdges;
    }
}
