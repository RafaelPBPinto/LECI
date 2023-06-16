import java.util.Scanner;
import java.util.Map;
import java.util.HashMap;

@SuppressWarnings("CheckReturnValue")
public class Interpreter extends FractionCalculatorBaseVisitor<String> {
   
   class Fraction {
      int numerator;
      int denominator;

      public Fraction (int numerator, int denominator) {
         this.numerator =  numerator;
         this.denominator = denominator;
      }

      public Fraction (int numerator) {
         this.numerator = numerator;
         this.denominator = 1;
      }

      @Override
      public String toString() {
         if (denominator == 1)
            return Integer.toString(numerator);
         if (numerator == 0)
            return "0";
         return numerator + "/" + denominator;
      }
   }

   public Fraction add(Fraction num1, Fraction num2){
      if (num1.denominator == num2.denominator)
         return new Fraction(num1.numerator + num2.numerator, num1.denominator);
      int numerator = num1.numerator * num2.denominator + num2.numerator * num1.denominator;
      int denominator = num1.denominator * num2.denominator;
      return new Fraction(numerator, denominator);
   }

   public Fraction sub(Fraction num1, Fraction num2){
      if (num1.denominator == num2.denominator)
         return new Fraction(num1.numerator - num2.numerator, num1.denominator);
      int numerator = num1.numerator * num2.denominator - num2.numerator * num1.denominator;
      int denominator = num1.denominator * num2.denominator;
      return new Fraction(numerator, denominator);
   }

   public Fraction mult(Fraction num1, Fraction num2){
      int numerator = num1.numerator * num2.numerator;
      int denominator = num1.denominator * num2.denominator;
      return new Fraction(numerator, denominator);
   }

   public Fraction div(Fraction num1, Fraction num2){
      int numerator = num1.numerator * num2.denominator;
      int denominator = num1.denominator * num2.numerator;
      return new Fraction(numerator, denominator);
   }

   public Fraction reduce(Fraction f){
      int mdc = mdc(f.numerator, f.denominator);
      return new Fraction(f.numerator/mdc, f.denominator/mdc);
   }

   public int mdc(int a, int b){
      if (b == 0) return a;
      return mdc(b, a % b);
   }

   public Fraction pot(Fraction f, int num){
      if (num > 0)
         return new Fraction((int) Math.pow(f.numerator, num), (int) Math.pow(f.denominator, num));
      num = num * -1;
      int denominator = (int) Math.pow(f.numerator, num);
      int numerator = (int) Math.pow(f.denominator, num);
      return new Fraction(numerator, denominator);
   }

   Map<String,String> vars = new HashMap<String,String>();

   @Override public String visitProgram(FractionCalculatorParser.ProgramContext ctx) {
      return visitChildren(ctx);
   }

   @Override public String visitStat(FractionCalculatorParser.StatContext ctx) {
      String res = null;
      if(ctx.assign() != null) 
         res = visit(ctx.assign());

      if(ctx.print() != null) 
         res = visit(ctx.print()); 

      if(res != null)
            System.out.println(res);

      return null;
   }

   @Override public String visitPrint(FractionCalculatorParser.PrintContext ctx) {
      return visit(ctx.expr());
   }

   @Override public String visitAssign(FractionCalculatorParser.AssignContext ctx) {
      String var = ctx.Var().getText();
      String res = visit(ctx.expr());
      vars.put(var, res);
      return var + "=" + res;
   }

   @Override public String visitExprAddSub(FractionCalculatorParser.ExprAddSubContext ctx) {
      String op = ctx.op.getText();
      String num1 = visit(ctx.expr(0));
      String num2 = visit(ctx.expr(1));

      String[] aux = num1.split("/");
      int num1_numerator = Integer.parseInt(aux[0]);
      Fraction f1;
      if (aux.length > 1){
         int num1_denominator = Integer.parseInt(aux[1]);
         f1 = new Fraction(num1_numerator, num1_denominator);
      } else {
         f1 = new Fraction(num1_numerator);
      }

      aux = num2.split("/");
      int num2_numerator = Integer.parseInt(aux[0]);
      Fraction f2;
      if (aux.length > 1){
         int num2_denominator = Integer.parseInt(aux[1]);
         f2 = new Fraction(num2_numerator, num2_denominator);
      } else {
         f2 = new Fraction(num2_numerator);
      }

      switch(op) {
         case "+":
            return add(f1, f2).toString();
         case "-":
            return sub(f1, f2).toString();
         default:
            System.err.println("Error");
            break;
      }
      return null;
   }

   @Override public String visitExprPot(FractionCalculatorParser.ExprPotContext ctx) {
      String num1 = visit(ctx.expr(0));
      String num2 = visit(ctx.expr(1));

      String[] aux = num1.split("/");
      int num1_numerator = Integer.parseInt(aux[0]);
      Fraction f1;
      if (aux.length > 1){
         int num1_denominator = Integer.parseInt(aux[1]);
         f1 = new Fraction(num1_numerator, num1_denominator);
      } else {
         f1 = new Fraction(num1_numerator);
      }

      int potencia = Integer.parseInt(num2);

      return pot(f1, potencia).toString();
   }
   
   @Override public String visitExprRead(FractionCalculatorParser.ExprReadContext ctx) {
      Scanner sc = new Scanner(System.in);
      System.out.printf("%s: ", ctx.String().getText());
      String num = sc.nextLine();
      sc.close();
      String[] aux = num.split("/");
      int numerator = Integer.parseInt(aux[0]);
      Fraction f;
      if (aux.length > 1){
         int denominator = Integer.parseInt(aux[1]);
         f = new Fraction(numerator, denominator);
      }
      f = new Fraction(numerator);
      vars.put(ctx.String().getText(), f.toString());
      return f.toString();
   }

   @Override public String visitExprParent(FractionCalculatorParser.ExprParentContext ctx) {
      return visit(ctx.expr());
   }

   @Override public String visitExprUnary(FractionCalculatorParser.ExprUnaryContext ctx) {
      String op = ctx.op.getText();
      String num = visit(ctx.expr());
      String[] aux = num.split("/");
      int numerator = Integer.parseInt(aux[0]);
      Fraction f;
      if (aux.length > 1){
         int denominator = Integer.parseInt(aux[1]);      
         f = new Fraction(numerator, denominator);      
      } else {
         f = new Fraction(numerator);
      }

      switch(op){
         case "+":
            return f.toString();
         case "-":
            return "-" + f.toString();
         default:
            System.err.println("Error: Unary");
      }
      return null;
   }

   @Override public String visitFraction(FractionCalculatorParser.FractionContext ctx){
      return ctx.Integer(0).getText() + "/" + ctx.Integer(1).getText();
   }

   @Override public String visitExprInteger(FractionCalculatorParser.ExprIntegerContext ctx) {
      return ctx.Integer().getText();
   }

   @Override public String visitExprReduce(FractionCalculatorParser.ExprReduceContext ctx) {
      String num = visit(ctx.expr());
      String[] aux = num.split("/");
      int numerator = Integer.parseInt(aux[0]);
      Fraction f;
      if (aux.length > 1){
         int denominator = Integer.parseInt(aux[1]);      
         f = new Fraction(numerator, denominator);      
      } else {
         f = new Fraction(numerator);
      }
      return reduce(f).toString();
   }

   @Override public String visitExprFraction(FractionCalculatorParser.ExprFractionContext ctx) {
      return visit(ctx.fraction());
   }

   @Override public String visitExprMultDivMod(FractionCalculatorParser.ExprMultDivModContext ctx) {
      String op = ctx.op.getText();
      String num1 = visit(ctx.expr(0));
      String num2 = visit(ctx.expr(1));

      String[] aux = num1.split("/");
      int num1_numerator = Integer.parseInt(aux[0]);
      Fraction f1;
      if (aux.length > 1){
         int num1_denominator = Integer.parseInt(aux[1]);
         f1 = new Fraction(num1_numerator, num1_denominator);
      } else {
         f1 = new Fraction(num1_numerator);
      }

      aux = num2.split("/");
      int num2_numerator = Integer.parseInt(aux[0]);
      Fraction f2;
      if (aux.length > 1){
         int num2_denominator = Integer.parseInt(aux[1]);
         f2 = new Fraction(num2_numerator, num2_denominator);
      } else {
         f2 = new Fraction(num2_numerator);
      }

      switch(op) {
         case "*":
            return mult(f1, f2).toString();
         case ":":
            return div(f1, f2).toString();
         default:
            System.err.println("Error");
            break;
      }
      return null;
   }

   @Override public String visitExprVar(FractionCalculatorParser.ExprVarContext ctx) {
      String var = ctx.Var().getText();
      if(vars.containsKey(var))
         return vars.get(var);
      else
         System.err.println("Variable " + var + " not found");
      return null;
   }
}
