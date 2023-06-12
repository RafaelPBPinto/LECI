public class Passeio extends AbstractServico {
    public Passeio(String name, String description, double price) {
        super(name, description, price, TipoServico.PASSEIO);
    }

    @Override
    public String toString() {
        return "Passeio [name=" + name() + ", description=" + description() + ", price=" + price() + "]";
    }
}
