package de.unipassau.accesspaths;

import com.ibm.wala.classLoader.IField;
import com.ibm.wala.ipa.callgraph.CGNode;
import de.unipassau.utils.Config;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashSet;
import java.util.Set;

public class AccessGraph implements Datafact {

  private int baseVariable;
  private FieldGraph graph;
  private CGNode cgNode;

  private final Logger logger = LoggerFactory.getLogger(Config.ToolName);

  public AccessGraph(CGNode node, int baseVariable) {
    this.cgNode = node;
    this.baseVariable = baseVariable;
    this.graph = null;
  }

  public AccessGraph(CGNode node, int baseVariable, FieldGraph graph) {
    this.baseVariable = baseVariable;
    this.cgNode = node;
    this.graph = graph;
  }

  public int getBaseVariable() {
    return baseVariable;
  }


  public boolean matchesBaseAndFirstfield(int base, IField f) {
    return graph != null && base == baseVariable && graph.isHead(f);
  }

  public boolean hasBase(int base) {
    return baseVariable == base;
  }

  public AccessGraph clone() {
    try {
      AccessGraph clone = (AccessGraph) super.clone();
      clone.graph = (this.graph == null) ? null : (FieldGraph) this.graph.clone();
      clone.baseVariable = this.baseVariable;
      return clone;
    } catch (CloneNotSupportedException e) {
      logger.error("Failed to clone accessgraph [ " + e.getMessage() + "]");
      e.printStackTrace();
      return null;
    }
  }

  public AccessGraph changeBase(int base)  {
    AccessGraph newGraph = clone();
    newGraph.baseVariable = base;
    return newGraph;
  }

  public AccessGraph changeBaseAddField(int base, IField field) {
    AccessGraph newGraph = clone();
    newGraph.baseVariable = base;
    if (newGraph.graph == null) {
      newGraph.graph = new FieldGraph(new IField[] {field});
    } else newGraph.graph = this.graph.prependHead(field);
    return newGraph;
  }

  public Set<AccessGraph> changeBaseRemoveHead(int baseVariable) {
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
  public FieldGraph fieldGraph() {
    return this.graph;
  }

  @Override
  public String toString() {
    return "AccessGraph{" +
            "baseVariable=" + baseVariable +
            ", graph=" + graph +
            '}';
  }

  public CGNode getCgNode() {
    return cgNode;
  }
}