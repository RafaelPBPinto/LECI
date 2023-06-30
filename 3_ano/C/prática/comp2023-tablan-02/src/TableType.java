public class TableType extends Type{
    private String alias = "";
    public TableType()
    {
        super("Table");
    }

    public TableType(String alias)
    {
        super("Table");
        this.alias = alias;
    }

    public String alias()
    {
        return alias;
    }
}
