public class ColumnRepresentation {
    public String name;
    public boolean isFormula;
    public Type type;
    public String formula;

    public String toString(String iterator) {
       String s = "";

       if(isFormula)
       {
          s += name + "(" + iterator + ")";
       }
       else
       {
          s += name + "().getField(" + iterator + ")"; 
       }

       return s;
    }
 }