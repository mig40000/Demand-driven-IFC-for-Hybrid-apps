package de.unipassau.modifiedpaths;

import com.ibm.wala.dataflow.IFDS.IFlowFunction;
import com.ibm.wala.dataflow.IFDS.IFlowFunctionMap;
import com.ibm.wala.dataflow.IFDS.IUnaryFlowFunction;
import com.ibm.wala.dataflow.IFDS.TabulationProblem;
import de.unipassau.accesspaths.AccessGraph;

public class ModifiedPathFlowFunction implements IFlowFunctionMap<AccessGraph> {

    @Override
    public IUnaryFlowFunction getNormalFlowFunction(AccessGraph accessGraph, AccessGraph t1) {
        return null;
    }

    @Override
    public IUnaryFlowFunction getCallFlowFunction(AccessGraph accessGraph, AccessGraph t1, AccessGraph t2) {
        return null;
    }

    @Override
    public IFlowFunction getReturnFlowFunction(AccessGraph accessGraph, AccessGraph t1, AccessGraph t2) {
        return null;
    }

    @Override
    public IUnaryFlowFunction getCallToReturnFlowFunction(AccessGraph accessGraph, AccessGraph t1) {
        return null;
    }

    @Override
    public IUnaryFlowFunction getCallNoneToReturnFlowFunction(AccessGraph accessGraph, AccessGraph t1) {
        return null;
    }
}
