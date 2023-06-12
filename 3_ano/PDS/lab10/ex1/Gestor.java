//Author: Rafael Pinto, 103379, p5_09

package ex1;

import java.util.ArrayList;
import java.util.List;

public class Gestor extends Observer {
    private String nome;
    private List<Produto> produtos_em_stock = new ArrayList<Produto>();
    private List<Produto> produtos_vendidos = new ArrayList<Produto>();
    private List<Produto> produtos_em_leilao = new ArrayList<Produto>();

    public Gestor(String nome, List<Produto> produtos) {
        this.nome = nome;
        organizarProdutos(produtos);
    }

    private void organizarProdutos(List<Produto> produtos) {
        for (Produto produto : produtos) {
            switch(produto.estado()) {
                case STOCK:
                    this.produtos_em_stock.add(produto);
                    break;
                case VENDAS:
                    this.produtos_vendidos.add(produto);
                    break;
                case LEILAO:
                    this.produtos_em_leilao.add(produto);
                    break;
            }
        }
    }

    public String nome() {
        return this.nome;
    }

    public void subscrever(Leilao l) {
        this.subject.add(l);
        l.attach(this);
        System.out.println("Gestor " + this.nome + " subscreveu o leilão do produto " + l.produto().codigo());
    }

    public void update() {
        System.out.println("Gestor " + this.nome + " foi notificado.");
    }
}
