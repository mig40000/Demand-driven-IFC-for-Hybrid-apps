package de.unipassau.accesspaths;

import com.google.common.graph.Graph;
import com.google.common.graph.GraphBuilder;
import com.google.common.graph.MutableGraph;
import com.ibm.wala.classLoader.IField;

import java.util.*;

public class FieldGraph implements Cloneable {

  private int head;

  private int tail;

  private MutableGraph<Integer> fieldGraph = GraphBuilder.directed().build();

  private List<IField> fieldtoIntMap = new LinkedList<>();

  public FieldGraph(IField fields[]) {
    assert fields != null && fields.length > 0;

    for (int i = 0; i < fields.length; ++i) {
      fieldGraph.addNode(fieldToInt(fields[i]));
    }

    head = fieldToInt(fields[0]);
    IField from = fields[0];
    for (int i = 1; i < fields.length; ++i) {
      IField to = fields[i];
      fieldGraph.putEdge(fieldToInt(from), fieldToInt(to));
      from = to;
    }
    tail = fieldToInt(fields[fields.length - 1]);
  }

  private int fieldToInt(IField field) {
    if (fieldtoIntMap.contains(field)) {
      return fieldtoIntMap.indexOf(field);
    } else {
      fieldtoIntMap.add(field);
      return fieldtoIntMap.size() - 1;
    }
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    FieldGraph that = (FieldGraph) o;
    return head == that.head
        && tail == that.tail
        && Objects.equals(fieldGraph, that.fieldGraph)
        && Objects.equals(fieldtoIntMap, that.fieldtoIntMap);
  }

  @Override
  public int hashCode() {
    return Objects.hash(head, tail, fieldGraph, fieldtoIntMap);
  }

  public Object clone() throws CloneNotSupportedException {
    FieldGraph cloned = (FieldGraph) super.clone();
    cloned.fieldGraph = this.fieldGraph;
    cloned.head = this.head;
    cloned.tail = this.tail;
    cloned.fieldtoIntMap = this.fieldtoIntMap;
    return cloned;
  }

  private boolean inALoop(int src) {
    // checks if the src is reachable from itself
    Queue<Integer> q = new LinkedList<>();
    q.add(src);
    while (!q.isEmpty()) {
      var successors = fieldGraph.successors(q.remove());
      if (successors.contains(q)) return true;
      q.addAll(successors);
    }
    return false;
  }

  public Set<FieldGraph> removeHead() throws CloneNotSupportedException {
    // get the successors of head. For each successor of head, create a new field graph and return
    boolean headInLoop = inALoop(head);
    Set<FieldGraph> graphs = new HashSet<>();
    for (int successor : fieldGraph.successors(head)) {
      FieldGraph cloned = (FieldGraph) clone();
      if (!headInLoop) {
        cloned.fieldGraph.removeNode(head);
      }
      cloned.head = successor;
      graphs.add(cloned);
    }
    return graphs;
  }

  /**
   * Prepend the field f to a field graph
   *
   * @param f
   * @return
   */
  public FieldGraph prependHead(IField f) throws CloneNotSupportedException {
    FieldGraph cloned = (FieldGraph) clone();
    int fieldId = cloned.fieldToInt(f);
    if (fieldGraph.nodes().isEmpty()) {
      fieldGraph.addNode(fieldId);
    } else {
      cloned.fieldGraph.putEdge(fieldId, head);
    }
    cloned.head = fieldId;
    return cloned;
  }

  public boolean isHead(IField f) {
    return fieldToInt(f) == head;
  }

  public boolean isTail(IField f) {
    return fieldToInt(f) == tail;
  }

  @Override
  public String toString() {
    return "FieldGraph{"
        + "head="
        + head
        + ", tail="
        + tail
        + ", fieldGraph="
        + fieldGraph
        + ", fieldtoIntMap="
        + fieldtoIntMap
        + '}';
  }
}
