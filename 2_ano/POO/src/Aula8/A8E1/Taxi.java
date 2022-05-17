package Aula8.A8E1;

public class Taxi extends AutomovelLigeiro {
    private int licenca;

    public Taxi(String matricula, String marca, String modelo, int potencia, int numQuadro, int capBagageira, int newLicenca){
        super(matricula, marca, modelo, potencia, numQuadro, capBagageira);
        assert validLicenca(newLicenca): "Numero da licenca invalido!";
        if(validLicenca(newLicenca)){
            this.licenca = newLicenca;
        }else{
            System.out.println("Numero da licencia invalido!");
        }
    }

    private boolean validLicenca(int licenca){
        return licenca > 0;
    }

    public int getLicenca(){
        return licenca;
    }

    public void setLicenca(int newLicenca){
        assert validLicenca(newLicenca): "Numero da licenca invalido!";
        if(validLicenca(newLicenca)){
            this.licenca = newLicenca;
        }else{
            System.out.println("Numero da licencia invalido!");
        }
    }

    @Override
    public String toString(){
        return String.format("\nTaxi\nMatricula: %s\nMarca: %s\nModelo: %s\nPotencia: %d\nNumero do quadro: %d\nCapacidade da Bageira: %d litros\nNumero da licenca: %d\n", getMatricula(), getMarca(), getModelo(), getPotencia(), getNumQuadro(), getCapBagageira(), licenca);
    }
}
