//Author: Rafael Pinto, 103379, p5_09

package ex1;

import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public class TestEx1 {
    public static Cliente c1 = new Cliente("João");
    public static Cliente c2 = new Cliente("Maria");
    public static Cliente c3 = new Cliente("Rafael");

    public static void main(String[] args) {
        Produto computador = new Produto("Computador", 500.00, 12);
        Produto telemovel = new Produto("Telemóvel", 200.00, 20);
        Produto quadro = new Produto("Quadro", 150000.00, 5);
        Produto carro = new Produto("Carro", 10000.00, 10);
        Produto bicicleta = new Produto("Bicicleta", 100.00, 12);

        Gestor g1 = new Gestor("Gestor 1", List.of(computador, telemovel, quadro, carro, bicicleta));

        Leilao l1 = new Leilao(computador);
        Leilao l2 = new Leilao(telemovel);
        Leilao l3 = new Leilao(quadro);
        Leilao l4 = new Leilao(carro);
        Leilao l5 = new Leilao(bicicleta);

        c1.subscrever(l1);
        c2.subscrever(l1);
        c3.subscrever(l1);
        g1.subscrever(l1);
        simularLeilao(l1);

        c1.subscrever(l2);
        c3.subscrever(l2);
        g1.subscrever(l2);
        simularLeilao(l2);

        c2.subscrever(l3);
        c3.subscrever(l3);
        g1.subscrever(l3);
        simularLeilao(l3);

        c1.subscrever(l4);
        c2.subscrever(l4);
        g1.subscrever(l4);
        simularLeilao(l4);

        c1.subscrever(l5);
        c2.subscrever(l5);
        c3.subscrever(l5);
        g1.subscrever(l5);
        simularLeilao(l5);
        
    }

    public static void simularLeilao(Leilao l){
        Timer timer = new Timer();

        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                l.terminarLeilao();
                timer.cancel();
            }
        }, l.produto().max_tempo_leilao()*1000);

        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                int last_bidder = -1;
                int random = (int) (Math.random() * 3);
                while (random == last_bidder) {
                    random = (int) (Math.random() * 3);
                }
                switch (random) {
                    case 0:
                        if (l.inscrito(c1)){
                            c1.licitar(l, l.licitacao_atual().licitacao() + Math.random() * 10);
                            last_bidder = 0;
                        }
                        break;
                    case 1:
                        if (l.inscrito(c2)){
                            c2.licitar(l, l.licitacao_atual().licitacao() + Math.random() * 10);
                            last_bidder = 1;
                        }
                        break;
                    case 2:
                        if (l.inscrito(c3)){
                            c3.licitar(l, l.licitacao_atual().licitacao() + Math.random() * 10);
                            last_bidder = 2;
                        }
                        break;
                }
            }
        }, 0, l.produto().max_tempo_leilao()*1000/6);
    }

}
