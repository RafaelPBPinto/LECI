public class Aventura extends AbstractServico {
    public Aventura(String name, String description, double price) {
        super(name, description, price, TipoServico.AVENTURA);
    }

    @Override
    public String toString() {
        return "Aventura [name=" + name() + ", description=" + description() + ", price=" + price() + "]";
    }
}
