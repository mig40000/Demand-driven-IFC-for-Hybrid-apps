package de.unipassau.modifiedpaths;

import com.ibm.wala.dataflow.IFDS.ISupergraph;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import com.ibm.wala.util.collections.FilterIterator;
import com.ibm.wala.util.graph.Graph;
import com.ibm.wala.util.intset.IntSet;
import de.unipassau.dbinterfaces.BridgedMethod;

import java.util.Iterator;
import java.util.stream.Stream;

public class ModifiedPathSupergraph<T, P> implements ISupergraph<T, P> {

    ISupergraph<T, P> delegate;

    CGNode bridgeMethod;

    ModifiedPathSupergraph(ISupergraph<T, P> delegate, CGNode bridgeMethod) {
        this.delegate = delegate;
        this.bridgeMethod = bridgeMethod;
    }

    @Override
    public Graph getProcedureGraph() {
        return delegate.getProcedureGraph();
    }

    @Override
    public boolean isCall(T node) {
        return delegate.isCall(node);
    }

    @Override
    public Iterator getCalledNodes(T ret) {
        return FilterIterator<>(delegate.getCalledNodes(bridgeMethod));
    }

    @Override
    public Iterator getNormalSuccessors(Object o) {
        return null;
    }

    @Override
    public Iterator getReturnSites(Object o, Object o2) {
        return null;
    }

    @Override
    public Iterator getCallSites(Object o, Object o2) {
        return null;
    }

    @Override
    public boolean isExit(Object o) {
        return false;
    }

    @Override
    public Object getProcOf(Object o) {
        return null;
    }

    @Override
    public Object[] getEntriesForProcedure(Object o) {
        return new Object[0];
    }

    @Override
    public Object[] getExitsForProcedure(Object o) {
        return new Object[0];
    }

    @Override
    public int getNumberOfBlocks(Object o) {
        return 0;
    }

    @Override
    public int getLocalBlockNumber(Object o) {
        return 0;
    }

    @Override
    public Object getLocalBlock(Object o, int i) {
        return null;
    }

    @Override
    public boolean isReturn(Object o) {
        return false;
    }

    @Override
    public boolean isEntry(Object o) {
        return false;
    }

    @Override
    public byte classifyEdge(Object o, Object t1) {
        return 0;
    }

    @Override
    public void removeNodeAndEdges(Object o) throws UnsupportedOperationException {

    }

    @Override
    public IntSet getSuccNodeNumbers(Object o) {
        return null;
    }

    @Override
    public IntSet getPredNodeNumbers(Object o) {
        return null;
    }

    @Override
    public Iterator getPredNodes(Object o) {
        return null;
    }

    @Override
    public int getPredNodeCount(Object o) {
        return 0;
    }

    @Override
    public Iterator getSuccNodes(Object o) {
        return null;
    }

    @Override
    public int getSuccNodeCount(Object o) {
        return 0;
    }

    @Override
    public void addEdge(Object o, Object t1) {

    }

    @Override
    public void removeEdge(Object o, Object t1) throws UnsupportedOperationException {

    }

    @Override
    public void removeAllIncidentEdges(Object o) throws UnsupportedOperationException {

    }

    @Override
    public void removeIncomingEdges(Object o) throws UnsupportedOperationException {

    }

    @Override
    public void removeOutgoingEdges(Object o) throws UnsupportedOperationException {

    }

    @Override
    public boolean hasEdge(Object o, Object t1) {
        return false;
    }

    @Override
    public int getNumber(Object o) {
        return 0;
    }

    @Override
    public Object getNode(int i) {
        return null;
    }

    @Override
    public int getMaxNumber() {
        return 0;
    }

    @Override
    public Iterator iterateNodes(IntSet intSet) {
        return null;
    }

    @Override
    public Stream stream() {
        return null;
    }

    @Override
    public int getNumberOfNodes() {
        return 0;
    }

    @Override
    public void addNode(Object o) {

    }

    @Override
    public void removeNode(Object o) throws UnsupportedOperationException {

    }

    @Override
    public boolean containsNode(Object o) {
        return false;
    }
}
