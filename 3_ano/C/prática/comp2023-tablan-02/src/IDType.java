public class IDType extends TableType{
    private String id;
    public IDType(String id)
    {
        super(id);
        this.id = id;
    }

    @Override
    public String name() {
        return id;
    }

    @Override
    public boolean subtype(Type other) {
        return super.subtype(other) || other.name().equals("ID");
    }
}
