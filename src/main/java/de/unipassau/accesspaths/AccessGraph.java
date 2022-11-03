package de.unipassau.accesspaths;

import com.ibm.wala.classLoader.IClass;
import com.ibm.wala.classLoader.IField;

import java.util.HashSet;
import java.util.Set;

public class AccessGraph {

  private int baseVariable;

  private IClass basevartype;

//  private TypeReference baseVariableType;


  FieldGraph graph;
  AbstractObject object;

  private boolean hasObject;

  private AccessGraph() {}

  public AccessGraph(int baseVariable, FieldGraph graph, AbstractObject object, IClass basevarClass) {
    this.baseVariable = baseVariable;
    this.graph = graph;
    this.object = object;
    this.basevartype = basevarClass;
    if (object != null) {
      hasObject = true;
    }
  }

  public AccessGraph(int baseVariable, AbstractObject object, IClass basevarClass) {
    this(baseVariable, null, object, basevarClass);
  }

  public AccessGraph(int baseVariable, IClass basevarClass) {
    this(baseVariable, null, null, basevarClass);
  }

  public AccessGraph(int baseVariable, IClass basevartype, IField head) {
    this(baseVariable, new FieldGraph(head), null, basevartype);
  }

  public AccessGraph(int baseVariable, IClass basevartype, IField head, AbstractObject object) {
    this(baseVariable, new FieldGraph(head), object, basevartype);
  }

  public int getBaseVariable() {
    return baseVariable;
  }

  public FieldGraph getGraph() {
    return graph;
  }

  public AbstractObject getObject() {
    return object;
  }

  public boolean matchesBaseAndFirstfield(int base, IField f) {
    return graph != null && base == baseVariable && graph.isHead(f);
  }

  public boolean matchBase(int base) {
    return baseVariable == base;
  }

  public AccessGraph clone() throws CloneNotSupportedException {
    AccessGraph cloned = new AccessGraph();
    cloned.baseVariable = this.baseVariable;
    if (this.graph != null) cloned.graph = (FieldGraph) this.graph.clone();
    else this.graph = null;
    cloned.object = this.object;
    return cloned;
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

  /**
   * Makes a set of access graphs for a local variable with each field
   * @param localVar
   * @param localvarType
   * @return
   */
  public static Set<AccessGraph> makeAccessgraphsForLocalVariable(int localVar, IClass localvarType) {
    Set<AccessGraph> graphs = new HashSet<>();
    for (IField field : localvarType.getAllInstanceFields()) {
      graphs.add(new AccessGraph(localVar, localvarType, field));
    }
    return graphs;
  }

  public static Set<AccessGraph> makeAccessgraphsForLocalVariable(int localVar, IClass localvarType, AbstractObject object) {
    Set<AccessGraph> graphs = new HashSet<>();
    if (localvarType.isArrayClass()) {
      graphs.add(new AccessGraph(localVar, localvarType));
      return graphs;
    }

    for (IField field : localvarType.getAllInstanceFields()) {
      graphs.add(new AccessGraph(localVar, localvarType, field, object));
    }
    return graphs;
  }

  @Override
  public String toString() {
    return "AccessGraph{" +
            "baseVariable=" + baseVariable +
            ", basevarClass=" + basevartype +
            ", graph=" + graph +
            ", object=" + object +
            ", hasObject=" + hasObject +
            '}';
  }
}
