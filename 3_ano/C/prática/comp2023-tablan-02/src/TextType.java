public class TextType extends Type {
    public TextType() {
        super("text");
    }

    @Override
    public boolean subtype(Type other) {
        return super.subtype(other) || other.name().equals("input");
    }
}
