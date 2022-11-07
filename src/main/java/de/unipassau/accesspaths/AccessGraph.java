package de.unipassau.accesspaths;

import com.ibm.wala.classLoader.IClass;
import com.ibm.wala.classLoader.IField;

import java.util.HashSet;
import java.util.Set;

public class AccessGraph {

  private int baseVariable;
  private IClass basevartype;
  FieldGraph graph;

  public AccessGraph(int baseVariable, IClass basevarClass) {
    this.baseVariable = baseVariable;
    this.graph = null;
    this.basevartype = basevarClass;
  }

  public AccessGraph(int baseVariable, FieldGraph graph, IClass basevarClass) {
    this.baseVariable = baseVariable;
    this.graph = graph;
    this.basevartype = basevarClass;
  }

  public int getBaseVariable() {
    return baseVariable;
  }

  public FieldGraph getGraph() {
    return graph;
  }

  public boolean matchesBaseAndFirstfield(int base, IField f) {
    return graph != null && base == baseVariable && graph.isHead(f);
  }

  public boolean matchBase(int base) {
    return baseVariable == base;
  }

  public AccessGraph clone() throws CloneNotSupportedException {
    AccessGraph clone = (AccessGraph) super.clone();
    clone.basevartype = this.basevartype;
    clone.graph = (this.graph == null) ? null : (FieldGraph) this.graph.clone();
    clone.baseVariable = this.baseVariable;
    return clone;
  }

  public AccessGraph changeBase(int base) throws CloneNotSupportedException {
    AccessGraph newGraph = clone();
    newGraph.baseVariable = base;
    return newGraph;
  }

  public AccessGraph changeBaseAddField(int base, IField field) throws CloneNotSupportedException {
    AccessGraph newGraph = clone();
    newGraph.baseVariable = base;
    if (newGraph.graph == null) {
      newGraph.graph = new FieldGraph(new IField[] {field});
    } else newGraph.graph = this.graph.prependHead(field);
    return newGraph;
  }

  public Set<AccessGraph> changeBaseRemoveHead(int baseVariable) throws CloneNotSupportedException {
    Set<AccessGraph> graphs = new HashSet<>();
    for (FieldGraph headRemoved : this.graph.removeHead()) {
      AccessGraph newGraph = clone();
      newGraph.graph = headRemoved;
      newGraph.baseVariable = baseVariable;
      graphs.add(newGraph);
    }
    return graphs;
  }

  @Override
  public String toString() {
    return "AccessGraph{" +
            "baseVariable=" + baseVariable +
            ", basevarClass=" + basevartype +
            ", graph=" + graph +
            '}';
  }
}
