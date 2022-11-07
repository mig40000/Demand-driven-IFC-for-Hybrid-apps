package de.unipassau.accesspaths;

import com.ibm.wala.classLoader.IClass;
import com.ibm.wala.classLoader.IMethod;
import com.ibm.wala.core.util.config.AnalysisScopeReader;
import com.ibm.wala.ipa.callgraph.AnalysisCache;
import com.ibm.wala.ipa.callgraph.AnalysisCacheImpl;
import com.ibm.wala.ipa.callgraph.AnalysisScope;
import com.ibm.wala.ipa.callgraph.impl.Everywhere;
import com.ibm.wala.ipa.cha.ClassHierarchyException;
import com.ibm.wala.ipa.cha.ClassHierarchyFactory;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.ssa.IR;
import com.ibm.wala.types.*;
import de.unipassau.analysis.AndroidAnalysis;
import de.unipassau.dbinterfaces.BridgedMethodList;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.jar.JarFile;

import static org.junit.jupiter.api.Assertions.*;

class FunctionSummaryTest {

    @Test
    void getAnalysis() throws IOException, ClassHierarchyException {
        // setup the analysis
        AnalysisScope scope = AnalysisScopeReader.instance.makeJavaBinaryAnalysisScope("/Users/jyotiprakash/Research/HybridAppsIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/src/test/resources/", null);

//        scope.addToScope(ClassLoaderReference.Application, new JarFile("/Users/jyotiprakash/Research/HybridAppsIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/src/test/resources/test1.jar"));
        IClassHierarchy cha = ClassHierarchyFactory.make(scope);
        IClass clazz = cha.lookupClass(TypeReference.find(ClassLoaderReference.Application, TypeName.string2TypeName("SummaryFunction1")));
        IMethod method = clazz.getMethod(Selector.make("foo()Object"));
        Assertions.assertNotEquals(null, method);
        AnalysisCache cache = new AnalysisCacheImpl();
        IR ir = cache.getIR(method, Everywhere.EVERYWHERE);

        // compute the function summary
        FunctionSummary summary = new FunctionSummary(ir, cha);
        System.out.println(summary.getAnalysis());
    }
}