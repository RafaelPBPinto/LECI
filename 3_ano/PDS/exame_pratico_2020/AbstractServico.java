public abstract class AbstractServico implements Servico {
    private String name;
    private String description;
    private double price;
    private TipoServico type;

    protected AbstractServico (String name, String description, double price, TipoServico type) {
        this.name = name;
        this.description = description;
        this.price = price;
        this.type = type;
    }

    public String name() {
        return name;
    }

    public String description() {
        return description;
    }

    public double price() {
        return price;
    }

    public TipoServico type() {
        return type;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
