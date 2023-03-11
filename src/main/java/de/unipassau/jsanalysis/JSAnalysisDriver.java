package de.unipassau.jsanalysis;

import com.ibm.wala.cast.js.ipa.callgraph.JSCallGraphUtil;
import com.ibm.wala.cast.js.ssa.JavaScriptInvoke;
import com.ibm.wala.cast.js.translator.CAstRhinoTranslatorFactory;
import com.ibm.wala.cast.js.util.JSCallGraphBuilderUtil;
import com.ibm.wala.ipa.callgraph.CGNode;
import com.ibm.wala.ipa.callgraph.CallGraph;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.ssa.DefUse;
import com.ibm.wala.util.CancelException;
import com.ibm.wala.util.WalaException;
import com.ibm.wala.util.collections.FilterIterator;
import com.ibm.wala.util.collections.Iterator2Iterable;
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

    public IClassHierarchy getClassHierarchy() {
        return cg.getClassHierarchy();
    }

    public CallGraph getCallgraph() {
        return cg;
    }

    public static void main(String[] args) throws WalaException, IOException, CancelException {
        JSAnalysisDriver driver = new JSAnalysisDriver("/Users/jyotiprakash/Research/HybridAppsIfcAnalysis/Demand-driven-IFC-for-Hybrid-apps/src/main/resources/", "sample.js");
        CallGraph cg = driver.getCallgraph();
        FilterIterator<CGNode> applicationNodes = new FilterIterator<>(cg.iterator(), cgNode -> cgNode.getMethod().getDeclaringClass().getName().toString().startsWith("Lsample"));
        for (var node : new Iterator2Iterable<>(applicationNodes)) {
            logger.debug(node.getMethod().getName());
            for (var successor : new Iterator2Iterable<>(cg.getSuccNodes(node))) {
                logger.debug("\t|--> {} ", successor.getMethod());
            }
            logger.debug(node);
            for (var instruction : node.getIR().getInstructions()) {
                if (instruction != null) {
                    if (instruction instanceof JavaScriptInvoke invoke) {
                        logger.debug("INVOKE:: {}", invoke);
                        logger.debug("\t\t\tINVOCATIONTARGET:: {}", invoke.getFunction());
                        DefUse du = new DefUse(node.getIR());
                        logger.debug("\t\t\tUses:: {}",  du.getDef(invoke.getFunction()));
                    } else {
                        logger.debug("\t {}", instruction);
                    }
                }
            }
        }
    }
}
