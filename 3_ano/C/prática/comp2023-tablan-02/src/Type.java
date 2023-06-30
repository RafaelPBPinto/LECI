public abstract class Type {
    private String name;

    protected Type(String name) {
        this.name = name;
    }

    public String name() {
        return name;
    }

    public boolean subtype(Type other) {
        return name.equals(other.name());
    }
}
