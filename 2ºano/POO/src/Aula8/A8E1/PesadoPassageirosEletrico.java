package Aula8.A8E1;

public class PesadoPassageirosEletrico extends PesadoPassageiros implements VeiculoEletrico {
    private int bateria = 50;

    public PesadoPassageirosEletrico(String matricula, String marca, String modelo, int potencia, int newNumQuadro, int newPeso, int newMaxPassageiros){
        super(matricula, marca, modelo, potencia, newNumQuadro, newPeso, newMaxPassageiros);
    }

    private boolean validBateria(int percentagem){
        return (percentagem >= 0) && (percentagem <= 100);
    }

    public int autonomia(){
        return bateria;
    }

    public void carregar(int percentagem){
        assert validBateria(percentagem): "Valor invalido!";
        if(validBateria(percentagem)){
            if(bateria < percentagem){
                this.bateria = percentagem;
            }
        }else{
            System.out.println("Valor invalido!");
        }
    }

    @Override
    public String toString(){
        return String.format("\nPesado de passageiros eletrico\nMatricula: %s\nMarca: %s\nModelo: %s\nPotencia: %d\nNumero do quadro: %d\nPeso: %d Kg\nNumero maximo de passageiros: %d \nAutonomia: %d\n", getMatricula(), getMarca(), getModelo(), getPotencia(), getNumQuadro(), getPeso(), getMaxPassageiros(), bateria);
    }
}
