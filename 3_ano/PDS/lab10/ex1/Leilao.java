//Author: Rafael Pinto, 103379, p5_09

package ex1;

public class Leilao extends Subject {
    private Produto produto;
    private Licitacao licitacao_atual;

    public Leilao(Produto p) {
        this.produto = p;
        this.licitacao_atual = new Licitacao(produto, produto.preco_base(), null);
    }

    public Produto produto() {
        return this.produto;
    }

    @Override
    public void attach(Observer o) {
        this.observers.add(o);
    }

    public boolean inscrito(Cliente c) {
        return this.observers.contains(c);
    }

    public Licitacao licitacao_atual() {
        return this.licitacao_atual;
    }

    public void licitar(Licitacao l) {
        if (l.licitacao() < licitacao_atual.licitacao()){
            System.out.printf("\nLicitacao de %.2f€ do cliente %s é inferior à licitação atual de %f€ do cliente %s\n", l.licitacao(), l.cliente().nome(), licitacao_atual.licitacao(), licitacao_atual.cliente().nome());
        } else {
            this.licitacao_atual = l;
            System.out.printf("\nNova licitacao de %.2f€ do cliente %s para o produto %s\n", l.licitacao(), l.cliente().nome(), l.produto().codigo());
        }
        notifyObservers();
    }

    public void terminarLeilao() {
        if (this.licitacao_atual.cliente() == null) {
            this.produto.setEstado(State_Produto.STOCK);
            System.out.println("\nLeilão do produto " + this.produto.codigo() + " terminou sem licitações.");
        } else {
            this.produto.setEstado(State_Produto.VENDAS);
            System.out.printf("\nProduto %s vendido ao cliente %s por %.2f€\n", this.produto.codigo(), this.licitacao_atual.cliente().nome(), this.licitacao_atual.licitacao());
        }
        notifyObservers();
    }

    protected void notifyObservers() {
        for(Observer obs : observers) {
            obs.update();
        }
    }

}
