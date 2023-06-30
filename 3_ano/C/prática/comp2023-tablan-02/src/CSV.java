import java.io.IOException;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import java.util.*;
import java.nio.file.Files;
import java.nio.file.Paths;

public class CSV {
   public static Map<String,Column> read(String filePath, ArrayList<ArrayList<String>> res) {
      try {
         Reader visitor = new Reader(res);
         String fileContent = new String(Files.readAllBytes(Paths.get(filePath)));
         // create a CharStream that reads from standard input:
         CharStream input = CharStreams.fromString(fileContent);
         // create a lexer that feeds off of input CharStream:
         CSVLexer lexer = new CSVLexer(input);
         // create a buffer of tokens pulled from the lexer:
         CommonTokenStream tokens = new CommonTokenStream(lexer);
         // create a parser that feeds off the tokens buffer:
         CSVParser parser = new CSVParser(tokens);
         // replace error listener:
         //parser.removeErrorListeners(); // remove ConsoleErrorListener
         //parser.addErrorListener(new ErrorHandlingListener());
         // begin parsing at file rule:
         ParseTree tree = parser.file();
         if (parser.getNumberOfSyntaxErrors() == 0) {
            // print LISP-style tree:
            // System.out.println(tree.toStringTree(parser));
            visitor.visit(tree);
            
         }
         return visitor.getTable();
      }
      catch(Exception ex)
      {
         return null;
         // System.out.println("Erro interno");
      }
      // catch(IOException e) {
      //    e.printStackTrace();
      //    System.exit(1);
      // }
      // catch(RecognitionException e) {
      //    e.printStackTrace();
      //    System.exit(1);
      // }

      // return null;

      
   }
}