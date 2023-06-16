@SuppressWarnings("CheckReturnValue")
public class SuffixCalculator extends SuffixCalculatorBaseVisitor<Interpreter> {

   @Override public Interpreter visitProgram(SuffixCalculatorParser.ProgramContext ctx) {
      Interpreter res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Interpreter visitStat(SuffixCalculatorParser.StatContext ctx) {
      Interpreter res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Interpreter visitExprNumber(SuffixCalculatorParser.ExprNumberContext ctx) {
      Interpreter res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Interpreter visitExprSuffix(SuffixCalculatorParser.ExprSuffixContext ctx) {
      Interpreter res = null;
      return visitChildren(ctx);
      //return res;
   }
}
