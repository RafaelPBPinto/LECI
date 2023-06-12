//Author: Rafael Pinto, 103379, p5_09

package ex1;

public class Licitacao {
    private Produto produto;
    private double valor;
    private Cliente cliente;

    public Licitacao(Produto p, double v, Cliente c) {
        this.produto = p;
        this.valor = v;
        this.cliente = c;
    }

    public Produto produto() {
        return this.produto;
    }

    public double licitacao() {
        return this.valor;
    }

    public Cliente cliente() {
        return this.cliente;
    }
}
