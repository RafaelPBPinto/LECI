package Aula8.A8E1;

public class Ex1 {
    public static void main(String[] args) {
        EmpresaAluguerViaturas empresa = new EmpresaAluguerViaturas("AutoAluguer", "3100-035 Pombal", "AutoAluguer@gmail.com");

        Motociclo moto1 = new Motociclo("34-AC-22", "Suzuki", "A", 60, "estrada");
        Motociclo moto2 = new Motociclo("12-BA-99", "Honda", "B", 100, "desportivo");
        AutomovelLigeiro carro1 = new AutomovelLigeiro("21-PO-65", "Mercedes","C", 80,  1500, 380);
        Taxi taxi1 = new Taxi("20-JJ-88", "Opel", "B", 60, 1782, 270, 150);
        PesadoMercadorias pesado1 = new PesadoMercadorias("78-HH-32", "Renault", "A", 120, 1321, 40000, 35000);
        PesadoPassageiros passageiros1 = new PesadoPassageiros("93-WB-31", "Renault", "C", 100, 1232, 40000, 60);
        AutomovelLigeiroEletrico carroeletrico1 = new AutomovelLigeiroEletrico("AA-11-NN", "Tesla", "S", 670, 3213, 895);
        PesadoPassageirosEletrico passageiroseletrico1 = new PesadoPassageirosEletrico("65-HZ-99", "Renault", "B", 300, 5321, 30000, 65);

        empresa.addVeiculo(moto1);
        empresa.addVeiculo(moto2);
        empresa.addVeiculo(carro1);
        empresa.addVeiculo(taxi1);
        empresa.addVeiculo(pesado1);
        empresa.addVeiculo(passageiros1);
        empresa.addVeiculo(carroeletrico1);
        empresa.addVeiculo(passageiroseletrico1);

        moto1.trajeto(50);
        moto2.trajeto(120);
        carro1.trajeto(250);
        taxi1.trajeto(70);
        pesado1.trajeto(225);
        passageiros1.trajeto(170);
        pesado1.trajeto(350);
        carroeletrico1.trajeto(200);
        passageiroseletrico1.trajeto(150);

        System.out.print(empresa);

        System.out.printf("Lista de Veiculos:\n");
        empresa.listVeiculos();
        System.out.println();
        System.out.println("Quilometros percorridos pelo taxi:");
        System.out.println(taxi1.distanciaTotal());
        System.out.println("Quilometros percorridos pelo pesado na ultima viagem:");
        System.out.println(pesado1.ultimoTrajeto());
        System.out.println("Quilometros totais do pesado:");
        System.out.println(pesado1.distanciaTotal());
        System.out.println();
        System.out.println("Veiculo com mais Km:");
        System.out.println(empresa.maisKm());

        System.out.println("Autonomia carro eletrico:");
        System.out.println(carroeletrico1.autonomia());
        carroeletrico1.carregar(100);
        System.out.println("Autonomia carro eletrico:");
        System.out.println(carroeletrico1.autonomia());

        System.out.println("Autonomia autocarro eletrico:");
        System.out.println(passageiroseletrico1.autonomia());
        passageiroseletrico1.carregar(90);
        System.out.println("Autonomia passageiros eletrico:");
        System.out.println(passageiroseletrico1.autonomia());


    }
}
