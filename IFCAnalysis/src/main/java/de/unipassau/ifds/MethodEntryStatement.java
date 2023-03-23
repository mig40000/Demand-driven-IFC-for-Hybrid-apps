package de.unipassau.ifds;

import com.ibm.wala.ipa.callgraph.CGNode;

import java.util.Objects;

public class MethodEntryStatement extends Statement {
    private final CGNode node;
    private final int parameter;
    MethodEntryStatement(CGNode node, int parameter) {
        this.node = node;
        this.parameter = parameter;
    }

    public CGNode getNode() {
        return node;
    }

    public int getParameter() {
        return parameter;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MethodEntryStatement that = (MethodEntryStatement) o;
        return parameter == that.parameter && node.equals(that.node);
    }

    @Override
    public int hashCode() {
        return Objects.hash(node, parameter);
    }

    @Override
    public String toString() {
        return "MethodEntryStatement{" +
                "node=" + node +
                ", parameter=" + parameter +
                '}';
    }

    @Override
    public String getStatement() {
        return "Entry[%s]".formatted(this.node.getMethod().toString());
    }
}
