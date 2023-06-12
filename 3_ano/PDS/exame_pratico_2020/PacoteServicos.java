import java.util.ArrayList;
import java.util.List;

public class PacoteServicos extends AbstractServico {
    private double currentDiscount;
    private List<Servico> servicos =  new ArrayList<>();
    private List<TipoServico> tiposServico = new ArrayList<>();
    
    public PacoteServicos(String name, String description) {
        super(name, description, 0, TipoServico.PACOTESERVICOS);
    }

    public void add(Servico servico) {
        servicos.add(servico);
        updateDiscount();
        if (!tiposServico.contains(servico.type())){
            tiposServico.add(servico.type());
        }
    }

    private void updateDiscount() {
        if (servicos.size() > 3) {
            currentDiscount = 10;
        } else {
            currentDiscount = 3 * servicos.size();
        }
    }

    private void calculatePrice() {
        double price = 0;
        for (Servico s : servicos){
            price += s.price();
        }
        price *= (1-currentDiscount/100); 
        setPrice(price);
    }

    @Override

    public String toString(){
        calculatePrice();
        String s = String.format("Pacote com %d AbstractServicos de %d tipos. Preco (desconto = %.0f%%): %.2f\n", servicos.size(), tiposServico.size(), currentDiscount, price());
        for (Servico servico : servicos){
            s += servico + "\n";
        }
        return s;
    }
}
