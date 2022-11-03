package de.unipassau.analysis;

import com.ibm.wala.classLoader.IMethod;
import de.unipassau.accesspaths.FunctionSummary;

import java.util.HashMap;
import java.util.Map;

/**
 * Map from Methods->Summary
 */
public class MethodSummaries {
    Map<IMethod, FunctionSummary> methodSummaries = new HashMap<>();

}
