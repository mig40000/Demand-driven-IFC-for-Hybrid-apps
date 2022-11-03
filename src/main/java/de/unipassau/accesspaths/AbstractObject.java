package de.unipassau.accesspaths;

import java.util.Objects;

public class AbstractObject {

    private String abstractObj;

    public AbstractObject(String abstractObj) {
        this.abstractObj = abstractObj;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AbstractObject that = (AbstractObject) o;
        return Objects.equals(abstractObj, that.abstractObj);
    }

    @Override
    public int hashCode() {
        return Objects.hash(abstractObj);
    }

    @Override
    public String toString() {
        return "AbstractObject{" +
                "abstractObj='" + abstractObj + '\'' +
                '}';
    }
}
