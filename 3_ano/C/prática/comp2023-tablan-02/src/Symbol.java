public abstract class Symbol<T> {
    private final String name;
    private final Type type;
    private T value;

    public Symbol(String name, Type type) {
        this.name = name;
        this.type = type;
    }

    public void setValue(T value) {
        this.value = value;
    }

    public String name() {
        return name;
    }

    public Type type() {
        return type;
    }

    public T value() {
        return value;
    }
}
