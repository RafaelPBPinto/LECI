public class MundoRural extends AbstractServico {
    public MundoRural(String name, String description, double price) {
        super(name, description, price, TipoServico.MUNDORURAL);
    }

    @Override
    public String toString() {
        return "MundoRural [name=" + name() + ", description=" + description() + ", price=" + price() + "]";
    }
}
