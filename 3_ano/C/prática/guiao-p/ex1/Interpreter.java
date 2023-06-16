import java.util.Map;
import java.util.HashMap;
import java.util.Scanner;

@SuppressWarnings("CheckReturnValue")
public class Interpreter extends StrLangBaseVisitor<String> {
   private Map<String, String> variables = new HashMap<>();
   private Scanner sc = new Scanner(System.in);
   
   @Override public String visitAssignment(StrLangParser.AssignmentContext ctx) {
      String target = visit(ctx.expr(0));
      String value = visit(ctx.expr(1));
      variables.put(target, value);
      return target;
   }

   @Override public String visitPrint(StrLangParser.PrintContext ctx) {
      String expr = visit(ctx.expr());
      if (ctx.expr().isID) {
         System.out.println(getValue(expr));
      }else {
         System.out.println(expr);
      }
      return expr;
   }

   @Override public String visitExprRemove(StrLangParser.ExprRemoveContext ctx) {
      ctx.isID = false;
      String value = visit(ctx.expr(0));
      String remove = visit(ctx.expr(1));

      if (ctx.expr(0).isID){
         value = getValue(value);
      }
      if (ctx.expr(1).isID) {
         remove = getValue(remove);
      }

      return value.replace(remove, "");
   }

   @Override public String visitExprConcat(StrLangParser.ExprConcatContext ctx) {
      ctx.isID = false;
      String value1 = visit(ctx.expr(0));
      String value2 = visit(ctx.expr(1));
      if (ctx.expr(0).isID){
         value1 = getValue(value1);
      }
      if (ctx.expr(1).isID) {
         value2 = getValue(value2);
      }
      return value1.concat(value2);
   }

   @Override public String visitExprString(StrLangParser.ExprStringContext ctx) {
      String value = ctx.STRING().getText();
      ctx.isID = false;
      return value.substring(1, value.length() - 1);
   }

   @Override public String visitExprParent(StrLangParser.ExprParentContext ctx) {
      ctx.isID = false;
      return visit(ctx.expr());
   }

   @Override public String visitExprSub(StrLangParser.ExprSubContext ctx) {
      ctx.isID = false;
      String value = visit(ctx.expr(0));
      String character = visit(ctx.expr(1));
      String replace = visit(ctx.expr(2));
      if (ctx.expr(0).isID){
         value = getValue(value);
      }
      if (ctx.expr(1).isID) {
         character = getValue(character);
      }
      if (ctx.expr(2).isID) {
         replace = getValue(replace);
      }
      return value.replace(character, replace);
   }

   @Override public String visitExprInput(StrLangParser.ExprInputContext ctx) {
      ctx.isID = false;
      return visit(ctx.input());
   }

   @Override public String visitExprTrim(StrLangParser.ExprTrimContext ctx) {
      ctx.isID = false;
      return visit(ctx.trim());
   }

   @Override public String visitExprID(StrLangParser.ExprIDContext ctx) {
      ctx.isID = true;
      return ctx.ID().getText();
   }

   @Override public String visitInput(StrLangParser.InputContext ctx) {
      if (ctx.expr() != null) {
         String text = visit(ctx.expr());
         if (ctx.expr().isID){
            text = getValue(text);
         }
         System.out.print(text);
      }
      String input = sc.nextLine();
      return input;
   }

   @Override public String visitTrim(StrLangParser.TrimContext ctx) {
      String value = visit(ctx.expr());
      if (ctx.expr().isID){
         value = getValue(value);
      }
      return value.trim();
   }

   private String getValue(String var){
      if (!variables.containsKey(var)){
         System.err.println("Variable " + var + " doesn't exist!");
         System.exit(1);
      }
      return variables.get(var);      
   }
}
