package de.unipassau.ifds;

import com.ibm.wala.ssa.SSAInstruction;
import de.unipassau.accesspaths.AccessGraph;

import java.util.Objects;
import java.util.StringJoiner;

public final class ESGNode {
    private final Statement statement;
    private final AccessGraph graph;

    public ESGNode(Statement statement, AccessGraph graph) {
        this.statement = statement;
        this.graph = graph;
    }

    @Override
    public String toString() {
        StringJoiner repr = new StringJoiner(",", "<", ">");
        repr.add(this.statement.toString());
        repr.add(graph.toString());
        return repr.toString();
    }

    public Statement statement() {
        return statement;
    }

    public AccessGraph graph() {
        return graph;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) return true;
        if (obj == null || obj.getClass() != this.getClass()) return false;
        var that = (ESGNode) obj;
        return Objects.equals(this.statement, that.statement) &&
                Objects.equals(this.graph, that.graph);
    }

    @Override
    public int hashCode() {
        return Objects.hash(statement, graph);
    }

}
