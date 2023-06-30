import static java.lang.System.*;
import java.util.*;

@SuppressWarnings("CheckReturnValue")
public class Reader extends CSVBaseVisitor<Void> {
   Map<String,Column> table = new HashMap<>();
   ArrayList<String> types;
   ArrayList<String> headers;
   ArrayList<String> index;
   int idx = 0;
   int idxLine = 0;

   public Reader(ArrayList<ArrayList<String>> res) {
      this.index = res.get(0);
      this.types = res.get(1);
      this.headers = res.get(2);
      if( !index.isEmpty() && Character.isDigit(index.get(0).charAt(0) )){
         reorderLists(index, types, headers);
      }
      for(int i = 0 ; i < res.get(1).size() ; i++){
         switch (res.get(1).get(i)) {
            case "text":
                  table.put( res.get(2).get(i),new Column<String>());
                  break;
            case "integer":
                  table.put( res.get(2).get(i),new Column<Integer>());
                  break;
            case "real":
                  table.put( res.get(2).get(i),new Column<Double>());
                  break;
         }
      }
   }

   public  void reorderLists(ArrayList<String> index, ArrayList<String> types, ArrayList<String> headers) {
      if (index.size() != types.size() || index.size() != headers.size()) {
          throw new IllegalArgumentException("All lists must have the same size");
      }
      
      ArrayList<String> reorderedTypes = new ArrayList<>(Collections.nCopies(types.size(), null));
      ArrayList<String> reorderedHeaders = new ArrayList<>(Collections.nCopies(headers.size(), null));
      
      for (int i = 0; i < index.size(); i++) {
          // Convert the index string to an integer and subtract 1 because lists in Java are 0-indexed
          int idx = Integer.parseInt(index.get(i)) - 1;
          reorderedTypes.set(idx, types.get(i));
          reorderedHeaders.set(idx, headers.get(i));
      }
      
      // Assign the reordered lists back to types and headers
      types.clear();
      this.types.addAll(reorderedTypes);

      headers.clear();
      this.headers.addAll(reorderedHeaders);
  }

   public Map<String,Column> getTable(){
      return table;
   }
   
   @Override public Void visitFile(CSVParser.FileContext ctx) {
      idxLine = 0;
      for (CSVParser.LineContext lineCtx : ctx.line()) {
         visit(lineCtx);
         idxLine++;
      }

      return null;
   }

   @Override public Void visitLine(CSVParser.LineContext ctx) {
      idx = 0;
      for (CSVParser.FieldContext fieldCtx : ctx.field()) {
         visit(fieldCtx);
         idx++;
     }
     //System.out.println(table);
     return null;
   }

   @Override public Void visitField(CSVParser.FieldContext ctx) {
      if (ctx.TEXT() != null) {

         String fieldText = ctx.TEXT().getText();
         if(idxLine != 0 || (idxLine == 0 && !headers.contains(fieldText) ) ){ 
            switch (types.get(idx)) {
               case "text":
                  
                  table.get(headers.get(idx)).addField(fieldText);
                  break;
               case "integer":
                  table.get(headers.get(idx)).addField(Integer.parseInt(fieldText));
                  break;
               case "real":
                  table.get(headers.get(idx)).addField(Double.parseDouble(fieldText));
                  break;
            }
         }
         else{
            if( !index.isEmpty() && !Character.isDigit(index.get(0).charAt(0) ))
            {
               for( int k =0; k<index.size();k++)
               {
                  if ( index.get(k).equals(fieldText))
                  {
                     index.set(k, String.valueOf(idx+1));
                  }
                  
               }
               if(idx==headers.size()-1)
               {
                  reorderLists(index, types, headers);
               }
            }
         }
      }
      return null;
   }
}