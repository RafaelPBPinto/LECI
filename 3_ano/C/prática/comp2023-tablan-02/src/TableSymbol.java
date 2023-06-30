import java.util.ArrayList;
import java.util.List;

public class TableSymbol<T> extends Symbol<T> {
    private List<String> fieldNames;
    private List<Type> fieldTypes;

    public TableSymbol(String name) {
        super(name, new TableType(name));
        this.fieldNames = new ArrayList<>();
        this.fieldTypes = new ArrayList<>();
    }

    public void addField(String fieldName, Type fieldType) {
        fieldNames.add(fieldName);
        fieldTypes.add(fieldType);
    }

    public int size() {
        return fieldNames.size();
    }

    public String getFieldName(int index) {
        return fieldNames.get(index);
    }

    public Type getFieldType(int index) {
        return fieldTypes.get(index);
    }

    public List<String> getFieldNames() {
        return fieldNames;
    }

    public List<Type> getFieldTypes() {
        return fieldTypes;
    }
}
