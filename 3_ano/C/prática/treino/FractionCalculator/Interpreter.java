import java.util.Map;
import java.util.Scanner;
import java.util.HashMap;

@SuppressWarnings("CheckReturnValue")
public class Interpreter extends FractionCalculatorBaseVisitor<String> {
   Map<String,String> variables = new HashMap<>();
   Scanner sc = new Scanner(System.in);

   class Fraction {
      int numerator;
      int denominator = 1;

      public Fraction(int numerator, int denominator) {
         if(denominator == 0) {
            System.err.println("ERROR: cannot divide by 0!");
            System.exit(1);
         }
         this.numerator = numerator;
         this.denominator = denominator;
      }

      public Fraction(int numerator) {
         this.numerator = numerator;
      }

      public Fraction reduce() {
         int mdc = mdc(denominator, numerator);
         this.numerator = numerator/mdc;
         this.denominator = denominator/mdc;
         return this;
      }

      private int mdc(int a, int b) {
         if(b == 0) {
            return a;
         }
         return mdc(b, a % b);
      }

      @Override
      public String toString() {
         if (denominator == 1)
            return String.format("%d", numerator);
         if (numerator == 0)
            return "0";
         return String.format("%d/%d", numerator, denominator);
      }
   }

   @Override public String visitPrint(FractionCalculatorParser.PrintContext ctx) {
      String value = visit(ctx.expr());
      if (ctx.expr().isVariable) {
         value = getValue(value);
      }
      System.out.println(value);
      return value;
   }

   @Override public String visitAssignment(FractionCalculatorParser.AssignmentContext ctx) {
      String value = visit(ctx.expr(0));
      String var = visit(ctx.expr(1));
      if (!ctx.expr(1).isVariable) {
         System.err.println("ERROR: " + var + " cannot be a variable!");
         System.exit(1);
      }
      if (ctx.expr(0).isVariable) {
         value = getValue(value);
      }
      variables.put(var, value);
      return value + "->" + var;
   }

   @Override public String visitExprRead(FractionCalculatorParser.ExprReadContext ctx) {
      ctx.isVariable = false;
      ctx.isText = false;
      String text = visit(ctx.expr());
      System.out.print(text + ": ");
      return sc.nextLine();
   }

   @Override public String visitExprPot(FractionCalculatorParser.ExprPotContext ctx) {
      ctx.isVariable = false;
      ctx.isText = false;
      String expr0 = visit(ctx.expr(0));
      String expr1 = visit(ctx.expr(1));

      if(ctx.expr(0).isText || ctx.expr(1).isText) {
         System.err.println("ERROR: cannot operate with String!");
         System.exit(1);
      }

      if(ctx.expr(0).isVariable)
         expr0 = getValue(expr0);
      if(ctx.expr(1).isVariable)
         expr1 = getValue(expr1);
      
      if(expr1.contains("/")){
         System.err.println("ERROR: cannot use fraction as power of a number!");
         System.exit(1);
      }

      Fraction f = stringToFraction(expr0.split("/"));
      int pot = Integer.parseInt(expr1);
      return pot(f, pot).toString();
   }

   @Override public String visitExprMulDiv(FractionCalculatorParser.ExprMulDivContext ctx) {
      ctx.isVariable = false;
      ctx.isText = false;
      String expr0 = visit(ctx.expr(0));
      String expr1 = visit(ctx.expr(1));

      if(ctx.expr(0).isText || ctx.expr(1).isText) {
         System.err.println("ERROR: cannot operate with String!");
         System.exit(1);
      }

      if(ctx.expr(0).isVariable)
         expr0 = getValue(expr0);
      if(ctx.expr(1).isVariable)
         expr1 = getValue(expr1);
      
      Fraction f1 = stringToFraction(expr0.split("/"));
      Fraction f2 = stringToFraction(expr1.split("/"));

      switch(ctx.op.getText()){
         case "*":
            return mul(f1, f2).toString();
         case ":":
            return div(f1, f2).toString();
         default:
            return "";
      }      
   }

   @Override public String visitExprAddSub(FractionCalculatorParser.ExprAddSubContext ctx) {
      ctx.isVariable = false;
      ctx.isText = false;
      String expr0 = visit(ctx.expr(0));
      String expr1 = visit(ctx.expr(1));

      if(ctx.expr(0).isText || ctx.expr(1).isText) {
         System.err.println("ERROR: cannot operate with String!");
         System.exit(1);
      }

      if(ctx.expr(0).isVariable)
         expr0 = getValue(expr0);
      if(ctx.expr(1).isVariable)
         expr1 = getValue(expr1);
      
      Fraction f1 = stringToFraction(expr0.split("/"));
      Fraction f2 = stringToFraction(expr1.split("/"));

      switch(ctx.op.getText()){
         case "+":
            return add(f1, f2).toString();
         case "-":
            return sub(f1, f2).toString();
         default:
            return "";
      }  
   }

   @Override public String visitExprUnary(FractionCalculatorParser.ExprUnaryContext ctx) {
      ctx.isVariable = false;
      ctx.isText = false;
      switch(ctx.sign.getText()){
         case "-":
            return "-" + visit(ctx.expr());
         case "+":
            return visit(ctx.expr());
         default:
            return "";
      } 
   }

   @Override public String visitExprParent(FractionCalculatorParser.ExprParentContext ctx) {
      String value = visit(ctx.expr());

      if (ctx.expr().isVariable)
         ctx.isVariable = true;
      else
         ctx.isVariable = false;

      if (ctx.expr().isText)
         ctx.isText = true;
      else
         ctx.isText = false;

      return value;
   }

   @Override public String visitExprReduce(FractionCalculatorParser.ExprReduceContext ctx) {
      ctx.isVariable = false;
      ctx.isText = false;
      String res = visit(ctx.expr());

      if(ctx.expr().isText) {
         System.err.println("ERROR: cannot reduce with String!");
         System.exit(1);
      }

      if(ctx.expr().isVariable)
         res = getValue(res);

      Fraction aux = stringToFraction(res.split("/"));
      return aux.reduce().toString();
   }

   @Override public String visitExprFraction(FractionCalculatorParser.ExprFractionContext ctx) {
      ctx.isVariable = false;
      ctx.isText = false;
      return ctx.FRACTION().getText();
   }

   @Override public String visitExprID(FractionCalculatorParser.ExprIDContext ctx) {
      ctx.isVariable = true;
      ctx.isText = false;
      return ctx.ID().getText();
   }

   @Override public String visitExprString(FractionCalculatorParser.ExprStringContext ctx) {
      ctx.isVariable = false;
      ctx.isText = true;
      String res = ctx.STRING().getText();
      return res.substring(1, res.length()-1);
   }

   private Fraction stringToFraction(String[] string) {
      int numerator = Integer.parseInt(string[0]);
      if(string.length > 1) {
         int denominator = Integer.parseInt(string[1]);
         return new Fraction(numerator, denominator);
      }
      return new Fraction(numerator);
   }

   private String getValue(String varName) {
      if (!variables.containsKey(varName)) {
         System.err.println("ERROR: variable " + varName + " not found!");
         System.exit(1);
      }
      return variables.get(varName);
   }
   
   private Fraction add(Fraction f1, Fraction f2) {
      int numerator = f1.numerator * f2.denominator + f2.numerator * f1.denominator;
      int denominator = f1.denominator * f2.denominator;
      return new Fraction(numerator, denominator);
   }

   private Fraction sub(Fraction f1, Fraction f2) {
      int numerator = f1.numerator * f2.denominator - f2.numerator * f1.denominator;
      int denominator = f1.denominator * f2.denominator;
      return new Fraction(numerator, denominator);
   }

   private Fraction div(Fraction f1, Fraction f2) {
      int numerator = f1.numerator * f2.denominator;
      int denominator = f1.denominator * f2.numerator;
      return new Fraction(numerator, denominator);
   }

   private Fraction mul(Fraction f1, Fraction f2) {
      int numerator = f1.numerator * f2.numerator;
      int denominator = f1.denominator * f2.denominator;
      return new Fraction(numerator, denominator);
   }

   private Fraction pot(Fraction f, int pot){
      if (pot > 0)
         return new Fraction((int) Math.pow(f.numerator, pot), (int) Math.pow(f.denominator, pot));
      pot = pot * -1;
      // negativo inverte numerador com denominador
      return new Fraction((int) Math.pow(f.denominator, pot), (int) Math.pow(f.numerator, pot));
   }

}
