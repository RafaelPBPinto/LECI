public class Formula<T> {
    
    @FunctionalInterface
    public interface Form<T>{
        T method(int i); 
    }

    Form<T> formula;
    public int length;
    public String header = "undefined";

    public Formula(String header,Form<T> form) {
        this.formula = form;
        this.header = header;
    }

    public void removeLast()
    {
        length--;
    }

    public T getField(int index) {
        try
        {
            return formula.method(index);
        }
        catch(Exception ex)
        {
            //caso index seja maior que o tamanho das colunas usadas na formula
            //ou se por exemplo ao calcular uma media uma das colunas for null
            return null;
        }
    }

    public int biggestElementLength() {
        int max = header.length();

        for(int i = 0; i < length; i++) {
            String value = getField(i) == null ? "undefined" : getField(i).toString();
            if(value.length() > max)
                max = value.length(); 
        }

        return max;
    }

    public String getFieldAsString(int index) {
        return (getField(index) == null ? "undefined" : getField(index).toString());
    }

    public void clear()
    {
        length = 0;
    }

    public int length()
    {
        return length;
    }

    public void add()
    {
        length++;
    }

    @Override
    public String toString() {
        String s = header;

        for(int i = 0; i < length(); i++) {
            s +=  "\n";
            s += formula.method(i) == null ? " " : formula.method(i);
        }

        return s;
    }
}
