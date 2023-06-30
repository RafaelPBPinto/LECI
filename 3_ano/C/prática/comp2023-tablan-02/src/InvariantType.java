public class InvariantType extends Type{
    Type subtype;
    String name;

    public InvariantType(String name,Type subtype) { 
        super("Invariant");
        this.subtype = subtype;
        this.name = name;
    }

    public InvariantType() {
        super("Invariant");
        name = "Invariant";
    }

    @Override
    public String name() {
        return name;
    }

    @Override
    public boolean subtype(Type other) {
        return super.subtype(other) || subtype.subtype(other);
    }
}
