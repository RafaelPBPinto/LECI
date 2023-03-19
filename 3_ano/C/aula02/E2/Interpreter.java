@SuppressWarnings("CheckReturnValue")
public class Interpreter extends SuffixCalculatorBaseVisitor<Double> {

   @Override public Double visitProgram(SuffixCalculatorParser.ProgramContext ctx) {
      return visitChildren(ctx);
   }

   @Override public Double visitStat(SuffixCalculatorParser.StatContext ctx) {
      Double res = null;
      if (ctx.expr() != null) {
         res = visit(ctx.expr());
         System.out.println(res);
      }
      return res;
   }

   @Override public Double visitExprNumber(SuffixCalculatorParser.ExprNumberContext ctx) {
      return Double.parseDouble(ctx.Number().getText());
   }

   @Override public Double visitExprSuffix(SuffixCalculatorParser.ExprSuffixContext ctx) {
      Double res = null;
      switch (ctx.op.getText()) {
         case "+":
            res = visit(ctx.expr(0)) + visit(ctx.expr(1));
            break;
         case "-":
            res = visit(ctx.expr(0)) - visit(ctx.expr(1));
            break;
         case "*":
            res = visit(ctx.expr(0)) * visit(ctx.expr(1));
            break;
         case "/":
            res = visit(ctx.expr(0)) / visit(ctx.expr(1));
            break;
         default:
            System.err.println("Unknown operator: " + ctx.op.getText());
            break;
      }
      return res;
   }
}
