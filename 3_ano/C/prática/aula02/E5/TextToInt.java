import java.util.Scanner;
import java.io.File;
import java.util.Map;
import java.util.HashMap;
import java.io.FileNotFoundException;

import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.TerminalNode;
@SuppressWarnings("CheckReturnValue")

public class TextToInt extends TextToIntBaseListener {
   private final Map<String, Integer> numbers = getMap();
   
   @Override public void exitExprText(TextToIntParser.ExprTextContext ctx) {
      String input = ctx.Text().getText();
   
      if(numbers.containsKey(input)){
         System.out.printf("%d\n", numbers.get(input));
      } else {
         System.err.println("Number not found");
      }     
   }

   public Map<String, Integer> getMap() {
      Scanner sc = new Scanner(System.in);
      Scanner filScanner = null;
      try {
          filScanner = new Scanner(new File("numbers.txt"));
      } catch (FileNotFoundException e) {
          System.err.println("File not found");
          System.exit(1);
      }

      Map<String, Integer> numbers = new HashMap<>();
      while(filScanner.hasNextLine()){
          String line = filScanner.nextLine();
          Scanner lineScanner = new Scanner(line);

          int number = lineScanner.nextInt();
          lineScanner.next();
          String name = lineScanner.next();
          numbers.put(name, number);

          lineScanner.close();
      }
      return numbers;
   }
}
