package de.unipassau.accesspaths;

import com.ibm.wala.analysis.typeInference.TypeInference;
import com.ibm.wala.cfg.ControlFlowGraph;
import com.ibm.wala.classLoader.IField;
import com.ibm.wala.ipa.cha.IClassHierarchy;
import com.ibm.wala.ssa.*;
import de.unipassau.modifiedpaths.ModifiedPathsAnalysis;

import java.util.*;

public class FunctionSummary {

  private static final boolean VERBOSE = true;

  ModifiedPathsAnalysis analysis;

  private final IR ir;
  private final IClassHierarchy cha;

  private class TransferFunctionVisitor implements SSAInstruction.IVisitor {

    private boolean change = false;

    public void visitGoto(SSAGotoInstruction instruction) {
      if (VERBOSE) System.err.println("..... not handling goto .....");
    }

    public void visitArrayLoad(SSAArrayLoadInstruction instruction) {
      // use[0] of an array load instruction maps to the array variable and use[1] map to an index
      var accessGraphs = analysis.getAccessgraphsForLocalVariable(instruction.getUse(0));
      analysis.updateAll(instruction.iIndex(), accessGraphs);
      change = true;
    }

    public void visitArrayStore(SSAArrayStoreInstruction instruction) {
      // use[0] defines the target of arraystore instruction and use[2] determines the source.
      var accessGraphs = analysis.getAccessgraphsForLocalVariable(instruction.getUse(0));
      analysis.updateAll(instruction.iIndex(), accessGraphs);
      change = true;
    }

    public void visitBinaryOp(SSABinaryOpInstruction instruction) {
      if (VERBOSE) System.err.println("..... not handling binary op .....");
    }

    public void visitUnaryOp(SSAUnaryOpInstruction instruction) {
      if (VERBOSE) System.err.println("..... not handling unary op .....");
    }

    public void visitConversion(SSAConversionInstruction instruction) {
      if (VERBOSE) System.err.println("..... not handling conversion .....");
    }

    public void visitComparison(SSAComparisonInstruction instruction) {
      if (VERBOSE) System.err.println("..... not handling comparison .....");
    }

    public void visitConditionalBranch(SSAConditionalBranchInstruction instruction) {
      if (VERBOSE) System.err.println("..... not handling conditional branch  .....");
    }

    public void visitSwitch(SSASwitchInstruction instruction) {}

    public void visitReturn(SSAReturnInstruction instruction) {
      int result = instruction.getResult();
      if (result != -1) {
        System.err.println(".... no return value... ignoring " + ir.getMethod());
        return;
      }
      analysis.updateReturnValue(analysis.getAccessgraphsForLocalVariable(result));
      change = true;
    }

    public void visitGet(SSAGetInstruction instruction) {
      // generate the constraint for get dstValue = x.f as [x.f] &subseteq; [dstValue]
      IField fld = getCha().resolveField(instruction.getDeclaredField());
      if (fld == null) {
        System.err.println("\tUnable to resolve field");
        return;
      }
      Set<AccessGraph> sourceGraphs =
          analysis.getAccessgraphsForLocalVarAndHead(instruction.getUse(1), fld);
      Set<AccessGraph> destGraphs = new HashSet<>();
      for (AccessGraph sourceGraph : sourceGraphs) {
        destGraphs.addAll(sourceGraph.changeBaseRemoveHead(instruction.getUse(0)));
      }
      change = true;
    }

    public void visitPut(SSAPutInstruction instruction) {

      // generate the constraint for put instruction x.f = w as [w] &subseteq; [x.f]
      //      Path loadValue = new Variable(instruction.getUse(0), getCgnode());
      IField fld = getCha().resolveField(instruction.getDeclaredField());
      if (fld == null) {
        System.err.println("\tUnable to resolve field");
        return;
      }

      if (instruction.isStatic()) {
        System.out.println("We don't handle static fields");
        return;
      }

      Set<AccessGraph> sourceGraphs =
          analysis.getAccessgraphsForLocalVariable(instruction.getUse(1));
      Set<AccessGraph> destGraphs = new HashSet<>();
      for (AccessGraph sourceGraph : sourceGraphs) {
        destGraphs.add(sourceGraph.changeBaseAddField(instruction.getUse(0), fld));
      }
      analysis.updateAll(instruction.iIndex(), destGraphs);
      change = true;
    }

    public void visitInvoke(SSAInvokeInstruction instruction) {
//      System.err.println("\t\t We don't handle interprocedural cases");
      if (instruction.isStatic()) {

      }
    }

    public void visitNew(SSANewInstruction instruction) {
      // generate an abstract object
      int def = instruction.getDef();
//      IClass klass = TypeInference.make(getIr(), false).getType(def).getType();
      analysis.update(instruction.iIndex(), new AccessGraph(def));
    }

    public void visitArrayLength(SSAArrayLengthInstruction instruction) {
      if (VERBOSE) System.err.println("..... not handling array length .....");
    }

    public void visitThrow(SSAThrowInstruction instruction) {
      if (VERBOSE) System.err.println("..... not handling throw .....");
    }

    public void visitMonitor(SSAMonitorInstruction instruction) {
      if (VERBOSE) System.err.println("..... not handling monitor ......");
    }

    public void visitCheckCast(SSACheckCastInstruction instruction) {
      Set<AccessGraph> sourceGraphs =
          analysis.getAccessgraphsForLocalVariable(instruction.getVal());
      Set<AccessGraph> destGraphs = new HashSet<>();
      for (AccessGraph sourceGraph : sourceGraphs) {
        destGraphs.add(sourceGraph.changeBase(instruction.getResult()));
      }
      analysis.updateAll(instruction.iIndex(), destGraphs);
      change = true;
    }

    public void visitInstanceof(SSAInstanceofInstruction instruction) {
      if (VERBOSE) System.err.println(".... not handling instanceof ....");
    }

    public void visitPhi(SSAPhiInstruction instruction) {
      // For dst = \phi(phi1, phi2) create constraints [phi1] \subseteq [dst] /\ [phi2] \subseteq
      // [dst]
      Set<AccessGraph> phi1 = analysis.getAccessgraphsForLocalVariable(instruction.getUse(0));
      Set<AccessGraph> phi2 = analysis.getAccessgraphsForLocalVariable(instruction.getUse(1));
      analysis.updateAll(instruction.getDef(), phi1);
      analysis.updateAll(instruction.getDef(), phi2);
      change = true;
    }

    public void visitPi(SSAPiInstruction instruction) {
      if (VERBOSE) System.err.println(".... not handling pi instructions ....");
    }

    public void visitGetCaughtException(SSAGetCaughtExceptionInstruction instruction) {
      if (VERBOSE) System.err.println(".... not handling get caught instructions ....");
    }

    public void visitLoadMetadata(SSALoadMetadataInstruction instruction) {
      if (VERBOSE) System.err.println(".... not loadmetadata instructions ....");
    }

    public boolean hasChanged() {
      return this.change;
    }
  }

  public FunctionSummary(IR function, IClassHierarchy cha) {
    this.ir = function;
    this.cha = cha;
    analysis = new ModifiedPathsAnalysis(this.ir, function.getMethod());
    buildAccesspathsForArguments();
  }

  private void buildAccesspathsForArguments() {
    IR ir = this.ir;
    SymbolTable table  = ir.getSymbolTable();
    int i = this.ir.getMethod().isStatic() ? 0 : 1;
    for (;i < ir.getNumberOfParameters(); ++i) {
      int j = this.ir.getMethod().isStatic() ? i : i-1; // if the method is an instnace method then then the index of arguemnt is at i-1
      int param = ir.getParameter(i);
      var type = TypeInference.make(ir, false).getType(param).getType();
      if (type.isArrayClass()) {
        analysis.update(0, new AccessGraph(param));
      } else {
        analysis.update(0, new AccessGraph(param));
      }
    }
  }

  public void compute() {
    IR ir = this.ir;
    Queue<ISSABasicBlock> worklist = new LinkedList<>();

    // Initialize the worklist with all basic blocks
    TransferFunctionVisitor transferFunction = new TransferFunctionVisitor();
    ControlFlowGraph<SSAInstruction, ISSABasicBlock> cfg = ir.getControlFlowGraph();
    for (ISSABasicBlock basicBlock : cfg) {
      worklist.add(basicBlock);
    }

    while (!worklist.isEmpty()) {
      var basicBlock = worklist.poll();
      if (basicBlock == null) {
        continue;
      }

      for (SSAInstruction instruction : basicBlock) {
        if (instruction != null) {
          instruction.visit(transferFunction);
          if (transferFunction.hasChanged()) {
            // add the basic blocks affected by the change
            cfg.getSuccNodes(basicBlock)
                .forEachRemaining(
                    q -> {
                      if (!worklist.contains(q)) worklist.add(q);
                    });
          }
        }
      }
    }
    if (VERBOSE) System.err.println("Fixed point computation completed");
  }

  public IClassHierarchy getCha() {
    return this.cha;
  }

  public IR getIr() {
    return this.ir;
  }

  public Collection<AccessGraph> getAnalysis() {
    return analysis.getAnalysis();
  }


  @Override
  public String toString() {
    StringBuilder builder = new StringBuilder();
    builder.append("FUNCTION SUMMARY ");
    builder.append(ir).append("\n");
    getAnalysis().forEach( q -> builder.append("\t").append(q.toString()).append("\n"));
    builder.append("\n");
    return builder.toString();
  }
}
