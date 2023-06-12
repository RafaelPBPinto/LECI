public class Transporte extends AbstractServico {
    public Transporte(String name, String description, double price){
        super(name, description, price, TipoServico.TRANSPORTE);
    }

    @Override
    public String toString() {
        return "Transporte [name=" + name() + ", description=" + description() + ", price=" + price() + "]";
    }
}
