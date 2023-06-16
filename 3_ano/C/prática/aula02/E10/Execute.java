import java.util.HashMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@SuppressWarnings("CheckReturnValue")
public class Execute extends QuestionsBaseVisitor<Boolean> {
   Map<String, List<String>> questions = new HashMap<>();

   @Override public Boolean visitProgram(QuestionsParser.ProgramContext ctx) {
      Boolean res = null;
      for(int i = 0; i < ctx.statement().size(); i++){
         res = visit(ctx.statement(i));
      }
      if (res) {
         for(String question : questions.keySet()) {
            List<String> alineas = questions.get(question);
            System.out.println(question + " {");
            for(String alinea : alineas){
               System.out.println(alinea);
            }
            System.out.println("}\n");
         }
      }
      return res;
   }

   @Override public Boolean visitStatement(QuestionsParser.StatementContext ctx) {
      Boolean res = visit(ctx.questionID());
      if(res) {
         String id = ctx.questionID().id;
         String question = id + "(" + ctx.STRING().getText() + ")";
         List<String> alineas = new ArrayList<>();
         for(int i = 0; i < ctx.alinea().size(); i++) {
            visit(ctx.alinea(i));
            alineas.add(ctx.alinea(i).text);
         }
         questions.put(question, alineas);    
      }
      return res;
   }

   @Override public Boolean visitQuestionID(QuestionsParser.QuestionIDContext ctx) {
      ctx.id = ctx.ID(0).getText() + "." + ctx.ID(1).getText();
      return true;
   }

   @Override public Boolean visitAlinea(QuestionsParser.AlineaContext ctx) {
      ctx.text = ctx.STRING().getText() + ":" + ctx.INTEGER().getText() + ";";
      return true;
   }

   public List<String> getAlineas(String key) {
      if (!questions.containsKey(key)) {
         System.err.println("ERROR: question + " + key + " not found!");
         System.exit(1);
      }
      return questions.get(key);
   }
}
