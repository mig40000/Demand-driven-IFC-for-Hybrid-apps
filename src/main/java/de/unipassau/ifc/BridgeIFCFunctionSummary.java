package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.*;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.*;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.collections.HashMapFactory;
import de.unipassau.utils.IFDSSolutionCollector;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

public class BridgeIFCFunctionSummary {
    private final ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> supergraph;
    private final CGNode bridgeNode;
    private final AccessGraphDomain domain;

    public BridgeIFCFunctionSummary(CallGraph cg, CGNode bridgeNode) {
        domain = new AccessGraphDomain();
        this.bridgeNode = bridgeNode;
        this.supergraph = ICFGSupergraph.make(cg);
    }

    protected class IFCTaintAnalysisProblem implements TabulationProblem<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IfcAnalysisFact> {

        IfcAnalysisFlowFunctions flowFunctions = new IfcAnalysisFlowFunctions(bridgeNode, domain);

        @Override
        public ISupergraph<BasicBlockInContext<IExplodedBasicBlock>, CGNode> getSupergraph() {
            return supergraph;
        }

        @Override
        public TabulationDomain<IfcAnalysisFact, BasicBlockInContext<IExplodedBasicBlock>> getDomain() {
            return domain;
        }

        @Override
        public IFlowFunctionMap<BasicBlockInContext<IExplodedBasicBlock>> getFunctionMap() {
            return flowFunctions;
        }

        @Override
        public Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> initialSeeds() {
            //initialise every symbol in the symbol table
            IR ir = bridgeNode.getIR();
            var symbolTable = ir.getSymbolTable();
            Collection<PathEdge<BasicBlockInContext<IExplodedBasicBlock>>> initPathEdges = new ArrayList<>();
            var entryBlock = ir.getControlFlowGraph().entry().getGraphNodeId();
            // add all parameters of the bridge method as seed values
            // essentially, for every f(n1, n2, ..., nn), it creates the pathedge <f, n_i> --> <f, n_i> for n_i in {n1, .., nn}
            var entrySuperblock = supergraph.getLocalBlock(bridgeNode, entryBlock);
            for (int i=0; i < symbolTable.getMaxValueNumber(); ++i) {
                int factId = domain.add(new IfcAnalysisFact(bridgeNode, symbolTable.getIntValue(i), null, IFCLabel.PUBLIC));
                initPathEdges.add(PathEdge.createPathEdge(entrySuperblock, factId, entrySuperblock, factId));
            }
            return initPathEdges;
        }

        @Override
        public IMergeFunction getMergeFunction() {
            return null;
        }
    }

    public TabulationResult<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IfcAnalysisFact> analyze() {
        var solver = TabulationSolver.make(new IFCTaintAnalysisProblem());
        try {
            return solver.solve();
        } catch (CancelException e) {
            throw new IllegalStateException("Failed to solve the constraints");
        }
    }

    public Collection<IfcAnalysisFact> collectSolutions() {
        IFDSSolutionCollector<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IfcAnalysisFact> solution = new IFDSSolutionCollector<>(analyze(), domain);
        return solution.collectSolutions();
    }
}
