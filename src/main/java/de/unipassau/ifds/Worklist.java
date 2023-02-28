package de.unipassau.ifds;

import java.util.ArrayDeque;
import java.util.Queue;

public class Worklist {

    private Queue<ESGEdge> worklist = new ArrayDeque<>();

    Worklist() {
    }

    void add(ESGEdge edge) {
        worklist.add(edge);
    }

    void remove() {
        var elem = worklist.peek();
        worklist.remove();
    }

    boolean isEmpty() {
        return worklist.isEmpty();
    }
}
