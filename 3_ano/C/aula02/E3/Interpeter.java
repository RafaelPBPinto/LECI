@SuppressWarnings("CheckReturnValue")
public class Interpeter extends CalculatorBaseVisitor<Long> {

   @Override public Long visitProgram(CalculatorParser.ProgramContext ctx) {
      return visitChildren(ctx);
   }

   @Override public Long visitStat(CalculatorParser.StatContext ctx) {
      if(ctx.expr() != null) {
         Long res = visit(ctx.expr());
         System.out.println(res);
      }
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

   @Override public Long visitExprInteger(CalculatorParser.ExprIntegerContext ctx) {
      return Long.parseLong(ctx.Integer().getText());
   }

   @Override public Long visitExprMultDivMod(CalculatorParser.ExprMultDivModContext ctx) {
      switch (ctx.op.getText()) {
         case "*":
            return visit(ctx.expr(0)) * visit(ctx.expr(1));
         case "/":
            return visit(ctx.expr(0)) / visit(ctx.expr(1));
         case "%":
            return visit(ctx.expr(0)) % visit(ctx.expr(1));
         default:
            System.err.println("Unknown operator: " + ctx.op.getText());
            break;
      }
      return null;
   }

   @Override public Long visitExprUnary(CalculatorParser.ExprUnaryContext ctx) {
      switch(ctx.op.getText()) {
         // Unary operators
	      case "+": 
            return + Long.parseLong(ctx.expr().getText());
         case "-": 
            return - Long.parseLong(ctx.expr().getText());
         default:
            System.err.println("Unknown operator: " + ctx.op.getText());
            break;
      }
      return null;
   }
}
