package de.unipassau.ifc;

import com.ibm.wala.ipa.callgraph.CGNode;
import de.unipassau.accesspaths.AccessGraph;
import de.unipassau.accesspaths.FieldGraph;

import java.util.Objects;
import java.util.StringJoiner;

public class FlowFact {

    private final AccessGraph graph;
    private final IFCLabel taintinfo;

    public FlowFact(AccessGraph graph, IFCLabel taintinfo) {
        this.graph = graph;
        this.taintinfo = taintinfo;
    }

    public FlowFact(CGNode node, int base, FieldGraph graph, IFCLabel taint) {
        this.graph = new AccessGraph(node, base, graph);
        this.taintinfo = taint;
    }

    public CGNode getCGNode() {
        return graph.getCGNode();
    }

    public int getBase() {
        return this.graph.getBaseVariable();
    }

    public FieldGraph fieldgraph() {
        return this.graph.fieldGraph();
    }

    public IFCLabel ifclabel() {
        return this.taintinfo;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        FlowFact that = (FlowFact) o;
        return Objects.equals(graph, that.graph) && taintinfo == that.taintinfo;
    }

    @Override
    public int hashCode() {
        return Objects.hash(graph, taintinfo);
    }

    @Override
    public String toString() {
        return new StringJoiner(" ", "FF{", "}")
                .add("CGNODE=" + graph.getCGNode().toString())
                .add("VAR=" + graph.getBaseVariable())
                .add("FIELD=" + graph.fieldGraph())
                .add("LABEL=" + taintinfo).toString();
    }
}
