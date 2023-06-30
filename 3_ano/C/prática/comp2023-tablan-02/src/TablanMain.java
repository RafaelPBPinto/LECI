import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import org.stringtemplate.v4.*;

public class TablanMain {
   public static void main(String[] args) {
      // text colors
      final String RESET = "\u001B[0m";
      final String RED = "\u001B[31m";
      final String GREEN = "\u001B[32m";

      try {

         if(args.length != 1)
         {
            System.err.println("Numero invalido de argumentos");
            System.err.println("Uso: java TablanMain <ficheiro>");
            System.exit(1);
         }

         if(!(new File(args[0]).isFile()))
         {
            System.err.println(args[0] + ", nao encontrado");
            System.exit(2);
         }

         // create a CharStream that reads from standard input:
         CharStream input = CharStreams.fromFileName(args[0]);
         // create a lexer that feeds off of input CharStream:
         TablanLexer lexer = new TablanLexer(input);
         // create a buffer of tokens pulled from the lexer:
         CommonTokenStream tokens = new CommonTokenStream(lexer);
         // create a parser that feeds off the tokens buffer:
         TablanParser parser = new TablanParser(tokens);
         // replace error listener:
         //parser.removeErrorListeners(); // remove ConsoleErrorListener
         //parser.addErrorListener(new ErrorHandlingListener());
         // begin parsing at program rule:
         ParseTree tree = parser.program();
         if (parser.getNumberOfSyntaxErrors() == 0) {
            // print LISP-style tree:
            // System.out.println(tree.toStringTree(parser));
            SemanticCheck semanticCheck = new SemanticCheck();
            semanticCheck.visit(tree);
            if (semanticCheck.getNumberOfSemanticErrors() == 0) {
               System.out.println(GREEN + "Compiled with " + semanticCheck.getNumberOfSemanticErrors() + " semantic errors." + RESET);
               Compiler compiler = new Compiler();
               ST code = compiler.visit(tree);
               code.add("name","Output");
               PrintWriter pw = new PrintWriter(new File("Output.java"));
               pw.print(code.render());
               pw.close();
            } else {
               System.out.println(RED + "Compiled with " + semanticCheck.getNumberOfSemanticErrors() + " semantic errors." + RESET);
            }
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
