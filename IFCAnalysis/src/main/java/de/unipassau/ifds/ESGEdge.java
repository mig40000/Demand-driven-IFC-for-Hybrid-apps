package de.unipassau.ifds;

public record ESGEdge(ESGNode from, ESGNode to) {
    @Override
    public String toString() {
        return from.toString() + "->" + to.toString();
    }
}
