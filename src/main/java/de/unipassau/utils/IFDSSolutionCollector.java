package de.unipassau.utils;

import com.ibm.wala.dataflow.IFDS.TabulationDomain;
import com.ibm.wala.dataflow.IFDS.TabulationResult;

import java.util.*;

public class IFDSSolutionCollector<T, P, F> {
    private final TabulationResult<T, P, F> result;
    private final TabulationDomain<F, T> domain;

    public IFDSSolutionCollector(TabulationResult<T, P, F> result, TabulationDomain<F, T> domain) {
        this.result = result;
        this.domain = domain;
    }

    public Collection<F> collectSolutions() {
        var pathEdges = result.getSeeds();
        Set<F> solutions = new HashSet<>();
        pathEdges.forEach(edge -> {
            var from = domain.getMappedObject(edge.getD1());
            var to = domain.getMappedObject(edge.getD2());
            solutions.add(from);
            solutions.add(to);
        });
        return solutions;
    }
}
