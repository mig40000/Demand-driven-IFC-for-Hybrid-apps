package de.unipassau.accesspaths;

import com.google.common.collect.MultimapBuilder;
import com.google.common.collect.SetMultimap;
import com.ibm.wala.classLoader.IField;
import com.ibm.wala.ssa.IR;

import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.stream.Collectors;

public class Analysis {

  /*
    Map from value number to the set of access graph
  */
  private SetMultimap<Integer, AccessGraph> analysisResult =
      MultimapBuilder.treeKeys().hashSetValues().build();

  private final IR node;

  private final int returnValuenum;

  Analysis(IR node) {
    this.node = node;
    // assign the last value number to the return node
    this.returnValuenum = node.getSymbolTable().getMaxValueNumber() + 1;
  }

  void update(int iindex, AccessGraph graph) {
    analysisResult.put(iindex, graph);
  }

  void updateAll(int iindex, Set<AccessGraph> graphs) {
    for (AccessGraph graph : graphs) {
      analysisResult.put(iindex, graph);
    }
  }

  public Set<AccessGraph> getAcesspathsAtIndex(int iindex) {
    return analysisResult.get(iindex);
  }

  void updateReturnValue(Set<AccessGraph> returnValues) {
    updateAll(this.returnValuenum, returnValues);
  }

  public Set<AccessGraph> getAccessgraphsForLocalVariable(int localVar) {
    return analysisResult.values().stream()
        .filter(q -> q.matchBase(localVar))
        .collect(Collectors.toSet());
  }

  public Set<AccessGraph> getAccessgraphsForLocalVarAndHead(int localvar, IField field) {
    return analysisResult.values().stream()
        .filter(q -> q.matchesBaseAndFirstfield(localvar, field))
        .collect(Collectors.toSet());
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    Analysis analysis = (Analysis) o;
    return returnValuenum == analysis.returnValuenum && Objects.equals(analysisResult, analysis.analysisResult) && Objects.equals(node, analysis.node);
  }

  @Override
  public int hashCode() {
    return Objects.hash(analysisResult, node, returnValuenum);
  }

  @Override
  public String toString() {
    return "Analysis{" +
            "analysisResult=" + analysisResult +
            ", node=" + node +
            ", returnValuenum=" + returnValuenum +
            '}';
  }

  public IR getNode() {
    return node;
  }

  public Collection<AccessGraph> getAnalysis() {
    return analysisResult.values();
  }
}
