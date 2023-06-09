//Author: Rafael Pinto, 103379, p5_09

package ex1;

public class Produto {
    private final int codigo = codigo_atual++;
    private String descricao;
    private Double preco_base;
    private State_Produto estado;
    private int max_tempo_leilao;

    private static int codigo_atual = 0;

    public Produto(String descricao, Double preco, int max_tempo_leilao) {
        this.descricao = descricao;
        this.preco_base = preco;
        this.max_tempo_leilao = max_tempo_leilao;
        this.estado = State_Produto.STOCK;
    }

    public int codigo() {
        return this.codigo;
    }

    public String descricao() {
        return this.descricao;
    }

    public Double preco_base() {
        return this.preco_base;
    }

    public int max_tempo_leilao() {
        return this.max_tempo_leilao;
    }

    public State_Produto estado() {
        return this.estado;
    }

    public void setEstado(State_Produto estado) {
        this.estado = estado;
    }
}
