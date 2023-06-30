import java.util.ArrayList;
import java.util.List;

public class Column<T>{
    List<T> fields = new ArrayList<>();
    public String header = "undefined";

    public Column() {}

    public Column(String header){
        if(header != null)
            this.header = header;
    }

    public void addField(T value) {
        // if(value == null)
        //     System.out.println("null value inserted");
        // else
        //     System.out.println(value);
        fields.add(value);
    }

    public int length()
    {
        return fields.size();
    }

    public void removeLast()
    {
        fields.remove(length() - 1);
    }

    public int biggestElementLength()
    {
        int max = header.length();
        for(int i = 0; i < length(); i++) 
        {
            String value = fields.get(i) == null ? "undefined" : fields.get(i).toString();

            if(value.length() > max)
                max = value.length();
        }

        return max;
    }

    public void clear()
    {
        fields.clear();
    }

    public T getField(int index)
    {
        if(index >= fields.size())
            return null;

        return fields.get(index);
    }

    public String getFieldAsString(int index) 
    {
        return (getField(index) == null ? "undefined" : getField(index).toString());
    }

    public void setField(int index,T value)
    {
        fields.set(index, value);
    }

    public void set(Column<T> other)
    {
        fields = other.fields;
        header = other.header;
    }

    public void copy(Column<T> other)
    {
        fields = new ArrayList<>();

        for(var field : other.fields)
        {
            fields.add(field);
        }
    }

    @Override
    public String toString() {
        String s = header;

        for(int i = 0; i < length(); i++) {
            s +=  "\n";
            s += fields.get(i) == null ? "" : fields.get(i);
        }

        return s;
    }
}
