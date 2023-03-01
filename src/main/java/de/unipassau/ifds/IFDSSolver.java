package de.unipassau.ifds;

import com.ibm.wala.classLoader.IMethod;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.cfg.InterproceduralCFG;
import com.ibm.wala.ssa.IR;
import de.unipassau.accesspaths.AccessGraph;

public class IFDSSolver<N extends ESGNode, E extends  ESGEdge> {

    CGNode method;
    IFDSResult result;
    InterproceduralCFG cfg;
    Worklist worklist;

    IFDSSolver(CGNode node, InterproceduralCFG cfg) {
        this.cfg = cfg;
        this.method = node;
        result = new IFDSResult();
    }

    private IR getIR(CGNode node) {
        return node.getIR();
    }

    public void initialize() {
        IR ir = getIR(this.method);
        int[] parameters = this.method.getIR().getParameterValueNumbers();

        for (int i=0; i < ir.getNumberOfParameters(); ++i) {
            ESGNode node = new ESGNode(new MethodEntryStatement(method, i), new AccessGraph(method, parameters[i]));
        }
    }

    public void propagate() {

    }
}
