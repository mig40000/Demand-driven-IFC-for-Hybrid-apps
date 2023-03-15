package de.unipassau.utils;

import java.util.Arrays;

public class LibraryCallManager {
    public static String libraryFunctions[] = {
            "add library functions"
    };

    public static boolean isLibraryCall(String method) {
        return Arrays.stream(libraryFunctions).anyMatch(q -> q.contains(method));
    }
}
