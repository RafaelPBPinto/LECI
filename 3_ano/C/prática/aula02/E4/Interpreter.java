@SuppressWarnings("CheckReturnValue")
public class Interpreter extends PrefixCalculatorBaseVisitor<Double> {

   @Override public Double visitProgram(PrefixCalculatorParser.ProgramContext ctx) {
      return visitChildren(ctx);
   }

   @Override public Double visitStat(PrefixCalculatorParser.StatContext ctx) {
      Double res = null;
      if (ctx.expr() != null) {
         res = visit(ctx.expr());
         System.out.println(res);
      }
      return res;
   }

   @Override public Double visitExprPrefix(PrefixCalculatorParser.ExprPrefixContext ctx) {
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

   @Override public Double visitNumber(PrefixCalculatorParser.NumberContext ctx) {
      return Double.parseDouble(ctx.Number().getText());
   }
}
