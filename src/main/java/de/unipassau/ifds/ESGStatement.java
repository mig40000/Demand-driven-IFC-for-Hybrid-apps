package de.unipassau.ifds;

import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ssa.SSAInstruction;
import org.jetbrains.annotations.NotNull;

import java.util.Objects;

public class ESGStatement extends Statement {
    private final int index;
    private final CGNode node;

    public ESGStatement(@NotNull CGNode node, int index) {
        this.node = node;
        this.index = index;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ESGStatement that = (ESGStatement) o;
        return index == that.index && node.equals(that.node);
    }

    @Override
    public int hashCode() {
        return Objects.hash(index, node);
    }

    public SSAInstruction statement() {
        return this.node.getIR().getInstructions()[this.index];
    }

    @Override
    public String getStatement() {
        return  (statement() != null) ? statement().toString() : "null statement";
    }
}
