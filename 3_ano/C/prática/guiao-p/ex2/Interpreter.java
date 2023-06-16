import java.util.Map;
import java.util.HashMap;
import java.util.Scanner;

@SuppressWarnings("CheckReturnValue")
public class Interpreter extends FracLangBaseVisitor<String> {
   private Map<String, String> variables = new HashMap<>();
   private Scanner sc = new Scanner(System.in);

   class Fraction {
      private int numerator;
      private int denominator;

      public Fraction(int numerator, int denominator){
         if (denominator == 0) {
            System.err.println("ERROR: cannot divide by zero!");
            System.exit(0);
         }
         this.numerator = numerator;
         this.denominator = denominator;
      }

      public Fraction(int numerator) {
         this.numerator = numerator;
         denominator = 1;
      }

      public int numerator() {
         return numerator;
      }

      public int denominator() {
         return denominator;
      }

      public Fraction simplify() {
         int mdc = mdc(denominator, numerator);
         this.numerator = this.numerator/mdc;
         this.denominator = this.denominator/mdc;
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
         if(numerator == 0)
            return "0";
         if(denominator == 1)
            return String.format("%d", numerator);
         return String.format("%d/%d", numerator, denominator);
      }
   }

   @Override public String visitDisplay(FracLangParser.DisplayContext ctx) {
      String res = visit(ctx.expr());
      boolean negative = false;
      if (res.charAt(0) == '-'){
         res = res.replace("-","");
         negative = true;
      }
      if (ctx.expr().isVariable) {
         res = getValue(res);
      }
      if (negative && res.charAt(0) == '-') {
         res = res.replace("-","");
         System.out.println(res);
      } else if (negative && res.charAt(0) != '-') {
         System.out.println("-" + res);
      } else {
         System.out.println(res);
      }
      return res;
   }

   @Override public String visitAssignment(FracLangParser.AssignmentContext ctx) {
      String var = visit(ctx.expr(0));
      if (!ctx.expr(0).isVariable) {
         System.err.println("ERROR: variable \""+ var + "\" is invalid variable name!");
         System.exit(1);
      }
      String value = visit(ctx.expr(1));
      variables.put(var, value);
      return var + "<=" + value;
   }

   @Override public String visitExprMulDiv(FracLangParser.ExprMulDivContext ctx) {
      String frac1 = visit(ctx.expr(0));
      String frac2 = visit(ctx.expr(1));

      if (ctx.expr(0).isVariable)
         frac1 = getValue(frac1);
      if (ctx.expr(1).isVariable)
         frac2 = getValue(frac2);

      String[] splitFrac1 = frac1.split("/");
      String[] splitFrac2 = frac2.split("/");

      int numerator1;
      if (splitFrac1[0].charAt(0) == '-'){
         numerator1 = - Integer.parseInt(splitFrac1[0].replace("-", ""));
      } else {
         numerator1 = Integer.parseInt(splitFrac1[0]);
      }
      int denominator1;
      if (splitFrac1.length > 1) { 
         denominator1 = Integer.parseInt(splitFrac1[1]);
      } else {
         denominator1 = 1;
      }
      Fraction fraction1 = new Fraction(numerator1, denominator1);

      int numerator2;
      if (splitFrac2[0].charAt(0) == '-'){
         numerator2 = - - Integer.parseInt(splitFrac2[0].replace("-", ""));
      } else {
         numerator2 = Integer.parseInt(splitFrac2[0]);
      }
      int denominator2;
      if (splitFrac2.length > 1) { 
         denominator2 = Integer.parseInt(splitFrac2[1]);
      } else {
         denominator2 = 1;
      }
      Fraction fraction2 = new Fraction(numerator2, denominator2);

      Fraction res =  new Fraction(0);
      switch(ctx.op.getText()) {
         case "*":
            res = mul(fraction1, fraction2);
            break;
         case ":":
            res = div(fraction1, fraction2);
            break;
         default:
            break;
      }
      ctx.isVariable = false;
      ctx.isText = false;
      return res.toString();
   }

   @Override public String visitExprAddSub(FracLangParser.ExprAddSubContext ctx) {
      String frac1 = visit(ctx.expr(0));
      String frac2 = visit(ctx.expr(1));

      if (ctx.expr(0).isVariable)
         frac1 = getValue(frac1);
      if (ctx.expr(1).isVariable)
         frac2 = getValue(frac2);

      String[] splitFrac1 = frac1.split("/");
      String[] splitFrac2 = frac2.split("/");

      int numerator1;
      int denominator1;
      if (splitFrac1[0].charAt(0) == '-'){
         numerator1 = - Integer.parseInt(splitFrac1[0].replace("-", ""));
      } else {
         numerator1 = Integer.parseInt(splitFrac1[0]);
      }
      if (splitFrac1.length > 1) { 
         denominator1 = Integer.parseInt(splitFrac1[1]);
      } else {
         denominator1 = 1;
      }
      Fraction fraction1 = new Fraction(numerator1, denominator1);

      int numerator2;
      int denominator2;
      if (splitFrac2[0].charAt(0) == '-'){
         numerator2 = - Integer.parseInt(splitFrac2[0].replace("-", ""));
      } else {
         numerator2 = Integer.parseInt(splitFrac2[0]);
      }
      if (splitFrac2.length > 1) { 
         denominator2 = Integer.parseInt(splitFrac2[1]);
      } else {
         denominator2 = 1;
      }
      Fraction fraction2 = new Fraction(numerator2, denominator2);

      Fraction res =  new Fraction(0);
      switch(ctx.op.getText()) {
         case "+":
            res = add(fraction1, fraction2);
            break;
         case "-":
            res = sub(fraction1, fraction2);
            break;
         default:
            break;
      }

      ctx.isVariable = false;
      ctx.isText = false;
      return res.toString();
   }

   @Override public String visitExprUnary(FracLangParser.ExprUnaryContext ctx) {
      String value = visit(ctx.expr());
      ctx.isText = false;
      if (ctx.expr().isVariable) {
         ctx.isVariable = true;
      } else {
         ctx.isVariable = false;
      }
      switch(ctx.sign.getText()) {
         case "-":
            return "-" + visit(ctx.expr());
         case "+":
            return visit(ctx.expr());
         default:
            return "";
      }
   }

   @Override public String visitExprParentesis(FracLangParser.ExprParentesisContext ctx) {
      ctx.isVariable = false;
      ctx.isText = false;
      return visit(ctx.expr());
   }

   @Override public String visitExprID(FracLangParser.ExprIDContext ctx) {
      ctx.isVariable = true;
      ctx.isText = false;
      return ctx.ID().getText();
   }

   @Override public String visitExprFraction(FracLangParser.ExprFractionContext ctx) {
      ctx.isVariable = false;
      ctx.isText = false;
      return visit(ctx.fraction());
   }

   @Override public String visitFraction(FracLangParser.FractionContext ctx) {
      String numerator = ctx.INTEGER(0).getText();
      if (ctx.INTEGER(1) != null) {
         String denominator = ctx.INTEGER(1).getText();
         return numerator + '/' + denominator;
      }
      return numerator;
   }

   @Override public String visitExprRead(FracLangParser.ExprReadContext ctx) {
      ctx.isVariable = false;
      ctx.isText = false;
      String text = visit(ctx.expr());
      if(!ctx.expr().isText) {
         System.err.println("ERROR: read text is of incorrect type! Must be a String!");
         System.exit(1);
      }
      System.out.print(text + ": ");
      return sc.nextLine();
   }

   @Override public String visitExprText(FracLangParser.ExprTextContext ctx) {
      ctx.isVariable = false;
      ctx.isText = true;
      String text = ctx.TEXT().getText();
      return text.substring(1, text.length()-1);
   }

   @Override public String visitExprReduce(FracLangParser.ExprReduceContext ctx) {
      ctx.isVariable = false;
      ctx.isText = false;
      String fraction = visit(ctx.expr());
      if (ctx.expr().isText) {
         System.out.println("Reduce expecting a fraction, found a String!");
         System.exit(1);
      }
      if (ctx.expr().isVariable) {
         fraction = getValue(fraction);
      }
      String[] splitFrac = fraction.split("/");
      int numerator;
      int denominator;
      if (splitFrac[0].charAt(0) == '-'){
         numerator = - Integer.parseInt(splitFrac[0].replace("-", ""));
      } else {
         numerator = Integer.parseInt(splitFrac[0]);
      }
      if (splitFrac.length > 1) { 
         denominator = Integer.parseInt(splitFrac[1]);
      } else {
         denominator = 1;
      }
      Fraction simplified = new Fraction(numerator, denominator).simplify();
      return simplified.toString();
   }

   public String getValue(String var) {
      if (!variables.containsKey(var)) {
         System.err.println("ERROR: variable \"" + var + "\" not found!");
         System.exit(0);
      }
      return variables.get(var);
   }

   public Fraction add(Fraction f1, Fraction f2) {
      int numerator = f1.numerator() * f2.denominator() + f2.numerator() * f1.denominator();
      int denominator = f1.denominator() * f2.denominator();
      return new Fraction(numerator, denominator);
   }

   public Fraction sub(Fraction f1, Fraction f2) {
      int numerator = f1.numerator() * f2.denominator() - f2.numerator() * f1.denominator();
      int denominator = f1.denominator() * f2.denominator();
      return new Fraction(numerator, denominator);
   }

   public Fraction mul(Fraction f1, Fraction f2) {
      int numerator = f1.numerator() * f2.numerator();
      int denominator = f1.denominator() * f2.denominator();
      return new Fraction(numerator, denominator);
   }

   public Fraction div(Fraction f1, Fraction f2) {
      int numerator = f1.numerator() * f2.denominator();
      int denominator = f1.denominator() * f2.numerator();
      return new Fraction(numerator, denominator);
   }
}
