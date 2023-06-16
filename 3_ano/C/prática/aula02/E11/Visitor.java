import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.HashMap;
import org.antlr.v4.runtime.tree.*;

@SuppressWarnings("CheckReturnValue")
public class Visitor extends CalculatorBaseVisitor<String> {
   Map<String,List<String>> variables = new HashMap<>();

   @Override public String visitStatement(CalculatorParser.StatementContext ctx) {
      List<String> aux = new ArrayList<>();
      if (ctx.assignment() != null) {
         visit(ctx.assignment());
         aux = ctx.assignment().result;
      } else {
         visit(ctx.expr());
         aux = ctx.expr().result;
      }
      System.out.print("result: {");
      for (int i=0; i < aux.size(); i++) {
         if (i != aux.size() - 1){
            System.out.printf("%s,", aux.get(i));
         } else {
            System.out.printf("%s", aux.get(i));
         }  
      } 
      System.out.println("}");
      return "";
   }

   @Override public String visitAssignment(CalculatorParser.AssignmentContext ctx) {
      String var = visit(ctx.expr(0));
      if (!ctx.expr(0).isVariable) {
         System.err.println("ERROR: " + var + " cannot be a variable!");
         System.exit(1);
      }
      String res = visit(ctx.expr(1));
      if (ctx.expr(1).isVariable && ctx.expr(1).result == null) {
         System.out.printf("ERROR: variable " + res + "not found!");
         System.exit(1);
      }
      variables.put(var, ctx.expr(1).result); 
      ctx.result = ctx.expr(1).result;
      return "";
   }

   @Override public String visitExprParentesis(CalculatorParser.ExprParentesisContext ctx) {
      String res = visit(ctx.expr());
      ctx.result = ctx.expr().result;
      ctx.isVariable = false;
      return res;
   }

   @Override public String visitExprInterception(CalculatorParser.ExprInterceptionContext ctx) {
      visit(ctx.expr(0));
      visit(ctx.expr(1));

      List<String> expr0 = ctx.expr(0).result;
      List<String> expr1 = ctx.expr(1).result;
      ctx.result = new ArrayList<>();

      if (expr0.size() > expr1.size()) {
         for(String s : expr0) {
            if(expr1.contains(s)) {
               ctx.result.add(s);
            }
         }
      } else {
         for(String s : expr1) {
            if(expr0.contains(s)) {
               ctx.result.add(s);
            }
         }
      }
      ctx.isVariable = false;
      return "";
   }

   @Override public String visitExprConjunto(CalculatorParser.ExprConjuntoContext ctx) {
      visit(ctx.conjunto());
      ctx.result = ctx.conjunto().set;
      ctx.isVariable = false;
      return "";
   }

   @Override public String visitExprUnion(CalculatorParser.ExprUnionContext ctx) {
      visit(ctx.expr(0));
      visit(ctx.expr(1));

      List<String> expr0 = ctx.expr(0).result;
      List<String> expr1 = ctx.expr(1).result;
      ctx.result =  new ArrayList<>();

      for(String s : expr0) {
         ctx.result.add(s);
      }
      for(String s : expr1) {
         if (!ctx.result.contains(s)) {
            ctx.result.add(s);
         }
      }
      ctx.isVariable = false;
      return "";
   }

   @Override public String visitExprVariable(CalculatorParser.ExprVariableContext ctx) {
      ctx.isVariable = true;
      if (variables.containsKey(ctx.VARIABLE().getText())){
         ctx.result = variables.get(ctx.VARIABLE().getText());
      }
      return ctx.VARIABLE().getText();
   }

   @Override public String visitExprDif(CalculatorParser.ExprDifContext ctx) {
      visit(ctx.expr(0));
      visit(ctx.expr(1));

      List<String> expr0 = ctx.expr(0).result;
      List<String> expr1 = ctx.expr(1).result;
      ctx.result = new ArrayList<>();

      for (String s : expr0) {
         if (!expr1.contains(s)) {
            ctx.result.add(s);
         }
      }
      ctx.isVariable = false;
      return "";
   }

   @Override public String visitConjunto(CalculatorParser.ConjuntoContext ctx) {
      if (ctx.wordSeq() != null) {
         visit(ctx.wordSeq());
         ctx.set = ctx.wordSeq().words;
      } else if (ctx.numberSeq() != null) {
         visit(ctx.numberSeq());
         ctx.set = ctx.numberSeq().numbers;
      }
      return "";
   }

   @Override public String visitWordSeq(CalculatorParser.WordSeqContext ctx) {
      ctx.words = new ArrayList<>();
      for(int i=0; i < ctx.WORD().size(); i++) {
         String word = ctx.WORD(i).getText();
         ctx.words.add(word);
      }
      return "";
   }

   @Override public String visitNumberSeq(CalculatorParser.NumberSeqContext ctx) {
      ctx.numbers = new ArrayList<>();
      for(int i=0; i < ctx.number().size(); i++) {
         String number = visit(ctx.number(i));
         ctx.numbers.add(number);
      }
      return "";
   }

   @Override public String visitNumber(CalculatorParser.NumberContext ctx) {
      String res = null;
      if (ctx.sign != null) {
         switch(ctx.sign.getText()) {
            case "-":
               return "-" + ctx.LEXER_NUMBER().getText();
            case "+":
               return ctx.LEXER_NUMBER().getText();
            default:
               return "";
         }
      }
      return ctx.LEXER_NUMBER().getText();
   }
}
