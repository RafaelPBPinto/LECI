package Aula8.A8E1;

public class AutomovelLigeiroEletrico extends AutomovelLigeiro implements VeiculoEletrico {
    private int bateria = 70;

    public AutomovelLigeiroEletrico(String matricula, String marca, String modelo, int potencia, int newNumQuadro, int newCapBagageira){
        super(matricula, marca, modelo, potencia, newNumQuadro, newCapBagageira);
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
        return String.format("\nAutomovel Ligeiro Eletrico\nMatricula: %s\nMarca: %s\nModelo: %s\nPotencia: %d\nNumero do quadro: %d\nCapacidade da Bageira: %d litros\nAutonomia: %d\n", getMatricula(), getMarca(), getModelo(), getPotencia(), getNumQuadro(), getCapBagageira(), bateria);
    }
}
