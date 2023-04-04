package de.unipassau.ifc;

import com.ibm.wala.dataflow.IFDS.LocalPathEdges;
import com.ibm.wala.dataflow.IFDS.PathEdge;
import com.ibm.wala.dataflow.IFDS.TabulationProblem;
import com.ibm.wala.dataflow.IFDS.TabulationSolver;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import com.ibm.wala.util.MonitorUtil;

import javax.management.monitor.Monitor;
import java.util.ArrayList;
import java.util.List;

public class IfsIfdsSolver extends TabulationSolver<BasicBlockInContext<IExplodedBasicBlock>, CGNode, IfcAnalysisFact> {
    /**
     * @param p       a description of the dataflow problem to solve
     * @param monitor
     * @throws IllegalArgumentException if p is null
     */
    protected IfsIfdsSolver(AbstractIFCAnalysisProblem problem, MonitorUtil.IProgressMonitor monitor) {
        super(problem, monitor);
    }

    public static IfsIfdsSolver make(AbstractIFCAnalysisProblem problem) {
        return new IfsIfdsSolver(problem, null);
    }

    public List<LocalPathEdges> pathedges(CGNode entrypoint) {
        List<LocalPathEdges> result = new ArrayList<>();
        for (var node : supergraph.getEntriesForProcedure(entrypoint)) {
            var edges = getLocalPathEdges(node);
            System.out.println(edges.getReachedNodeNumbers());
        }
        return result;
    }

    public List<BasicBlockInContext<IExplodedBasicBlock>> getBasicblocksInNode(CGNode node) {
        ArrayList<BasicBlockInContext<IExplodedBasicBlock>> result = new ArrayList<>();
        for (var bbnode : supergraph) {
            if (bbnode.getNode().equals(node)) {
                result.add(bbnode);
            }
        }
        return result;
    }
//    public LocalPathEdges getPathEdges(BasicBlockInContext<IExplodedBasicBlock> entry) {
//        int srcnb = supergraph.getLocalBlockNumber(entry);
//        int reachablfacts =
//    }
}
