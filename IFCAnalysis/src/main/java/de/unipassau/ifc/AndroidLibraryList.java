package de.unipassau.ifc;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class AndroidLibraryList {

    public static class LibraryFunc {
        public String className;
        public String functionName;

        public LibraryFunc(String className, String functionName) {
            this.className = className;
            this.functionName = functionName;
        }

        public static LibraryFunc make(String className, String functionName) {
            return new LibraryFunc(className, functionName);
        }

        @Override
        public boolean equals(Object o) {
            if (this == o) return true;
            if (o == null || getClass() != o.getClass()) return false;
            LibraryFunc that = (LibraryFunc) o;
            return className.equals(that.className) && functionName.equals(that.functionName);
        }

        @Override
        public int hashCode() {
            return Objects.hash(className, functionName);
        }
    }

    protected List<LibraryFunc> libraries;

    public AndroidLibraryList() {
        libraries = new ArrayList<>();
        populate();
    }

    public void populate() {
        libraries.add(LibraryFunc.make("Landroid/os/Handler", "sendMessage"));
        libraries.add(LibraryFunc.make("Landroid/os/Handler", "obtainMessage"));
    }

    public boolean contains(String className, String method) {
        return libraries.contains(LibraryFunc.make(className, method));
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AndroidLibraryList that = (AndroidLibraryList) o;
        return libraries.equals(that.libraries);
    }

    @Override
    public int hashCode() {
        return Objects.hash(libraries);
    }
}
