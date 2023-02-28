package de.unipassau.ifds;

import java.util.HashSet;
import java.util.Set;

public class IFDSResult {
    private Set<ESGEdge> edges;
    private Set<ESGEdge> summaryEdges;

    IFDSResult() {
        edges = new HashSet<>();
        summaryEdges = new HashSet<>();
    }

    void insert(ESGEdge edge) {
        edges.add(edge);
    }

    public Set<ESGEdge> getResult() {
        return edges;
    }

    public Set<ESGEdge> getSummaryEdges() {
        return this.summaryEdges;
    }
}
