package de.unipassau.accesspaths;

import com.ibm.wala.classLoader.IField;

import java.util.Set;

public interface Datafact {
    public int getBaseVariable();
    AccessGraph changeBase(int base);
    AccessGraph changeBaseAddField(int base, IField field);
    Set<AccessGraph> changeBaseRemoveHead(int baseVariable);
    public FieldGraph fieldGraph();
}
