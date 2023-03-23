package de.unipassau.jsanalysis;

import com.ibm.wala.cast.js.ipa.callgraph.JSCallGraphUtil;
import com.ibm.wala.cast.js.translator.CAstRhinoTranslatorFactory;
import com.ibm.wala.cast.js.util.JSCallGraphBuilderUtil;
import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.ipa.callgraph.AnalysisScope;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.ssa.IR;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.WalaException;
import com.ibm.wala.util.collections.FilterIterator;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;

public class JSAnalysisDriver {
    private final CallGraph cg;
    private static final Logger logger = LogManager.getLogger(JSAnalysisDriver.class);

    public JSAnalysisDriver(String dir, String file) throws WalaException, IOException, CancelException {
        JSCallGraphUtil.setTranslatorFactory(new CAstRhinoTranslatorFactory());
        this.cg = JSCallGraphBuilderUtil.makeScriptCG(dir, file);
    }

    public boolean isApplicationScope(CGNode node) {
        AnalysisScope scope = cg.getClassHierarchy().getScope();
        return scope.isApplicationLoader(node.getMethod().getDeclaringClass().getClassLoader()) &&
                !node.getMethod().toString().startsWith("Lprologue.js");
    }

    public boolean isPrimordialScope(CGNode node) {
        return !isApplicationScope(node);
    }

    public IClassHierarchy getClassHierarchy() {
        return cg.getClassHierarchy();
    }

    public CallGraph getCallgraph() {
        return cg;
    }

    public static void main(String[] args) throws WalaException, IOException, CancelException {
        JSAnalysisDriver driver = new JSAnalysisDriver("/Users/jyotiprakash/Research/HybridAppsIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/apps/HelloHybrid/assets/www", "name.js");
        CallGraph cg = driver.getCallgraph();
        FilterIterator<CGNode> applicationNodes = new FilterIterator<>(cg.iterator(), driver::isApplicationScope);
        ICFGSupergraph supergraph = ICFGSupergraph.make(cg);
//        applicationNodes.forEachRemaining(System.err::println);
        applicationNodes.forEachRemaining(node -> {
            System.err.printf("===================== %s ============================%n", node);
            IR ir = node.getIR();
            for (var instruction : ir.getInstructions()) {
                System.err.println(instruction);
            }
        });
//        cg.forEach(System.err::println);
//        supergraph.forEach(System.err::println);
//        for (var node : new Iterator2Iterable<>(applicationNodes)) {
//            logger.debug(node.getMethod().getName());
//            for (var successor : new Iterator2Iterable<>(cg.getSuccNodes(node))) {
//                logger.debug("\t|--> {} ", successor.getMethod());
//            }
//            logger.debug(node);
//            for (var instruction : node.getIR().getInstructions()) {
//                if (instruction != null) {
//                    if (instruction instanceof JavaScriptInvoke invoke) {
//                        logger.debug("INVOKE:: {}", invoke);
//                        logger.debug("\t\t\tINVOCATIONTARGET:: {}", invoke.getFunction());
//                        DefUse du = new DefUse(node.getIR());
//                        logger.debug("\t\t\tUses:: {}",  du.getDef(invoke.getFunction()));
//                    } else {
//                        logger.debug("\t {}", instruction);
//                    }
//                }
//            }
//        }
    }
}
