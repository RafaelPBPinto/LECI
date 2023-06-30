public class FormulaType extends Type{
    protected Type type;

    public FormulaType() {
        super("Formula");
    }
    
    public FormulaType(Type type) {
        super("Formula");
        this.type = type;
    }
}
