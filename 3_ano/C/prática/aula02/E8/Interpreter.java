@SuppressWarnings("CheckReturnValue")
public class Interpreter extends CalculatorBaseVisitor<String> {

   @Override public String visitProgram(CalculatorParser.ProgramContext ctx) {
      return visitChildren(ctx);
   }

   @Override public String visitStat(CalculatorParser.StatContext ctx) {
      String res = null;
      if(ctx.assignment() != null) {
         res = visit(ctx.assignment());
      } else if(ctx.expr() != null) {
         res = visit(ctx.expr());
      }
      if(res != null)
            System.out.println(res);
      return res;
   }

   @Override public String visitAssignment(CalculatorParser.AssignmentContext ctx) {
      String var = visit(ctx.ID());
      String expr = visit(ctx.expr());
      return var + " = " + expr; 
   }

   @Override public String visitExprAddSub(CalculatorParser.ExprAddSubContext ctx) {
      String num1 = visit(ctx.expr(0));
      String op = ctx.op.getText();
      String num2 = visit(ctx.expr(1));
      switch(op){
         case "+":
            return num1 + " " + num2 + " " + "+";
         case "-":
            return num1 + " " + num2 + " " + "-";
         default:
            System.err.println("Error");
            break;
      }
      return null;
   }
   
   @Override public String visitExprParent(CalculatorParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override public String visitExprUnary(CalculatorParser.ExprUnaryContext ctx) {
      String op = ctx.op.getText();
      String nums = visit(ctx.expr());
      return nums + " !" + op;
   }

   @Override public String visitExprInteger(CalculatorParser.ExprIntegerContext ctx) {
      return ctx.Integer().getText();
   }

   @Override public String visitExprID(CalculatorParser.ExprIDContext ctx) {
      return ctx.ID().getText();
   }

   @Override public String visitExprMultDivMod(CalculatorParser.ExprMultDivModContext ctx) {
      String num1 = visit(ctx.expr(0));
      String op = ctx.op.getText();
      String num2 = visit(ctx.expr(1));
      switch(op){
         case "*":
            return num1 + " " + num2 + " " + "*";
         case "/":
            return num1 + " " + num2 + " " + "/";
         case "%":
            return num1 + " " + num2 + " " + "%";
         default:
            System.err.println("Error");
            break;
      }
      return null;
   }
}
