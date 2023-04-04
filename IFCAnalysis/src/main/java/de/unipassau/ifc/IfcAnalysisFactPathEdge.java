package de.unipassau.ifc;

import java.util.Objects;

public class IfcAnalysisFactPathEdge {
    private final IfcAnalysisFact u;
    private final IfcAnalysisFact v;

    protected IfcAnalysisFactPathEdge(IfcAnalysisFact u, IfcAnalysisFact v) {
        this.u = u;
        this.v = v;
    }

    public IfcAnalysisFact getU() {
        return u;
    }

    public IfcAnalysisFact getV() {
        return v;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        IfcAnalysisFactPathEdge that = (IfcAnalysisFactPathEdge) o;
        return Objects.equals(u, that.u) && Objects.equals(v, that.v);
    }

    @Override
    public int hashCode() {
        return Objects.hash(u, v);
    }

    @Override
    public String toString() {
        return "< " + u + "-->" + v + " >";
    }

    public static IfcAnalysisFactPathEdge make(IfcAnalysisFact u, IfcAnalysisFact v) {
        return new IfcAnalysisFactPathEdge(u, v);
    }
}
