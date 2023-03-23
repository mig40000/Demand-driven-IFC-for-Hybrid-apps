package de.unipassau.ifc;

import com.ibm.wala.ipa.callgraph.CGNode;
import de.unipassau.accesspaths.AccessGraph;
import de.unipassau.accesspaths.FieldGraph;

import java.util.Objects;

public class IfcAnalysisFact {

    private final AccessGraph graph;
    private final IFCLabel taintinfo;

    public IfcAnalysisFact(AccessGraph graph, IFCLabel taintinfo) {
        this.graph = graph;
        this.taintinfo = taintinfo;
    }

    public IfcAnalysisFact(CGNode node, int base, FieldGraph graph, IFCLabel taint) {
        this.graph = new AccessGraph(node, base, graph);
        this.taintinfo = taint;
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
        IfcAnalysisFact that = (IfcAnalysisFact) o;
        return Objects.equals(graph, that.graph) && taintinfo == that.taintinfo;
    }

    @Override
    public int hashCode() {
        return Objects.hash(graph, taintinfo);
    }
}
