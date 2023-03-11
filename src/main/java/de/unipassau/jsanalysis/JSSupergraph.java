package de.unipassau.jsanalysis;

import com.ibm.wala.dataflow.IFDS.ICFGSupergraph;
import com.ibm.wala.ipa.cfg.BasicBlockInContext;
import com.ibm.wala.ipa.cfg.ExplodedInterproceduralCFG;
import com.ibm.wala.ssa.analysis.IExplodedBasicBlock;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.util.Iterator;


public class JSSupergraph extends ICFGSupergraph {

    protected static final Logger logger = LogManager.getLogger(JSSupergraph.class.getName());
    
    protected JSSupergraph(ExplodedInterproceduralCFG cfg) {
        super(cfg);
    }

    public static JSSupergraph make(ExplodedInterproceduralCFG cfg) {
        return new JSSupergraph(cfg);
    }

    @Override
    public Iterator<BasicBlockInContext<IExplodedBasicBlock>> getCalledNodes(BasicBlockInContext<IExplodedBasicBlock> call) {
        var nodes = getSuccNodes(call);
        logger.debug(call);
        return nodes;
    }


}
