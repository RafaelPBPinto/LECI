import java.io.IOException;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class QuestionsMain {
   public static void main(String[] args) {
      try {
         if (args.length == 0) {
            System.err.println("Usage: java QuestionsMain <filename>");
            System.exit(1);
         }
         // create a CharStream that reads from standard input:
         CharStream input = CharStreams.fromFileName(args[0]);
         // create a lexer that feeds off of input CharStream:
         QuestionsLexer lexer = new QuestionsLexer(input);
         // create a buffer of tokens pulled from the lexer:
         CommonTokenStream tokens = new CommonTokenStream(lexer);
         // create a parser that feeds off the tokens buffer:
         QuestionsParser parser = new QuestionsParser(tokens);
         // replace error listener:
         //parser.removeErrorListeners(); // remove ConsoleErrorListener
         //parser.addErrorListener(new ErrorHandlingListener());
         // begin parsing at program rule:
         ParseTree tree = parser.program();
         if (parser.getNumberOfSyntaxErrors() == 0) {
            // print LISP-style tree:
            // System.out.println(tree.toStringTree(parser));
            Execute visitor0 = new Execute();
            visitor0.visit(tree);
         }
      }
      catch(IOException e) {
         e.printStackTrace();
         System.exit(1);
      }
      catch(RecognitionException e) {
         e.printStackTrace();
         System.exit(1);
      }
   }
}
