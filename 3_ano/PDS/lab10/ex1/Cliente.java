//Author: Rafael Pinto, 103379, p5_09

package ex1;

public class Cliente extends Observer {
    private String nome;

    public Cliente(String nome) {
        this.nome = nome;
    }

    public String nome() {
        return this.nome;
    }

    public void subscrever(Leilao l) {
        this.subject.add(l);
        l.attach(this);
        System.out.println("Cliente " + this.nome + " subscreveu o leilão do produto " + l.produto().codigo());
    }

    public void licitar(Leilao l, double valor) {
        l.licitar(new Licitacao(l.produto(), valor, this));
    }

    public void update() {
        System.out.println("Cliente " + this.nome + " foi notificado.");
    }
}
