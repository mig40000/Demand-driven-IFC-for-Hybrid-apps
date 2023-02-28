package de.unipassau.ifds;

import de.unipassau.accesspaths.Datafact;

/**
 * Pathedge <from, s1> -> <to, s2>
 */
public record PathEdge(Statement from, Datafact d1, Statement to, Datafact d2) {
    @Override
    public String toString() {
        return "<%s,%s> -> <%s,%s>".formatted(from.toString(), d1.toString(), to.toString(), d2.toString());
    }
}
