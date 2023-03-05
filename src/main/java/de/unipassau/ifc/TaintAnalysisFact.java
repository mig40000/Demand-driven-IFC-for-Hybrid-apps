package de.unipassau.ifc;

import com.ibm.wala.ipa.callgraph.CGNode;
import de.unipassau.accesspaths.AccessGraph;
import de.unipassau.accesspaths.FieldGraph;

import java.util.Objects;

public class TaintAnalysisFact {

    private final AccessGraph graph;
    private final TaintInformation taintinfo;

    public TaintAnalysisFact(AccessGraph graph, TaintInformation taintinfo) {
        this.graph = graph;
        this.taintinfo = taintinfo;
    }

    public TaintAnalysisFact(CGNode node, int base, FieldGraph graph, TaintInformation taint) {
        this.graph = new AccessGraph(node, base, graph);
        this.taintinfo = taint;
    }

    public int getBase() {
        return this.graph.getBaseVariable();
    }

    public FieldGraph fieldgraph() {
        return this.graph.fieldGraph();
    }

    public TaintInformation taintinfo() {
        return this.taintinfo;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        TaintAnalysisFact that = (TaintAnalysisFact) o;
        return Objects.equals(graph, that.graph) && taintinfo == that.taintinfo;
    }

    @Override
    public int hashCode() {
        return Objects.hash(graph, taintinfo);
    }
}
