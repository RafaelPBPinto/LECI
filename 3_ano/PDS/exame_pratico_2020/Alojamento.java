public class Alojamento extends AbstractServico {
    private int ocupacao_maxima;

    public Alojamento(String name, String description, double price, int ocupacao_maxima) {
        super(name, description, price, TipoServico.ALOJAMENTO);
        this.ocupacao_maxima = ocupacao_maxima;
    }

    public int ocupacao_maxima() {
        return ocupacao_maxima;
    }

    @Override
    public String toString() {
        return "Alojamento [name=" + name() + ", description=" + description() + ", price=" + price() + ", ocupacao maxima="+ ocupacao_maxima +"]";
    }
}
