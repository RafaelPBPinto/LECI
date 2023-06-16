import java.util.Map;
import java.util.HashMap;

@SuppressWarnings("CheckReturnValue")
public class Interpreter extends CalculatorBaseVisitor<Long> {
   private final Map<String, Long> vars = new HashMap<>();

   @Override public Long visitProgram(CalculatorParser.ProgramContext ctx) {
      Long res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Long visitStat(CalculatorParser.StatContext ctx) {
      Long res = null;
      if(ctx.assignment() != null) {
         res = visit(ctx.assignment());
      } else if(ctx.expr() != null) {
         res = visit(ctx.expr());
      }
      if(res != null)
            System.out.println(res);
      return null;
   }

   @Override public Long visitExprAddSub(CalculatorParser.ExprAddSubContext ctx) {
      switch(ctx.op.getText()) {
         case "+":
            return visit(ctx.expr(0)) + visit(ctx.expr(1));
         case "-":
            return visit(ctx.expr(0)) - visit(ctx.expr(1));
         default:
            System.err.println("Unknown operator: " + ctx.op.getText());
            break;
      }
      return null;
   }

   @Override public Long visitExprParent(CalculatorParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override public Long visitExprUnary(CalculatorParser.ExprUnaryContext ctx) {
      switch(ctx.op.getText()) {
	      case "+": 
            return visit(ctx.expr());
         case "-": 
            return - visit(ctx.expr());
         default:
            System.err.println("Unknown operator: " + ctx.op.getText());
            break;
      }
      return null;
   }

   @Override public Long visitExprInteger(CalculatorParser.ExprIntegerContext ctx) {
      return Long.parseLong(ctx.Integer().getText());
   }

   @Override public Long visitExprID(CalculatorParser.ExprIDContext ctx) {
      if(vars.containsKey(ctx.ID().getText())) {
         return vars.get(ctx.ID().getText());
      }else {
         System.err.println("Unknown variable: " + ctx.ID().getText());
      }
      return null;
   }

   @Override public Long visitExprMultDivMod(CalculatorParser.ExprMultDivModContext ctx) {
      switch (ctx.op.getText()) {
         case "*":
            return visit(ctx.expr(0)) * visit(ctx.expr(1));
         case "/":
            if(visit(ctx.expr(1)) != 0)
               return visit(ctx.expr(0)) / visit(ctx.expr(1));
            else {
               System.err.println("Division by zero");
               return null;
            }
         case "%":
            return visit(ctx.expr(0)) % visit(ctx.expr(1));
         default:
            System.err.println("Unknown operator: " + ctx.op.getText());
            break;
      }
      return null;
   }

   @Override public Long visitAssignment(CalculatorParser.AssignmentContext ctx) {
      Long res = visit(ctx.expr());
      vars.put(ctx.ID().getText(), res);
      return res;
   }
}
