package Aula8.A8E1;

public class AutomovelLigeiro extends Veiculo {
    private int numQuadro;
    private int capBagageira;

    public AutomovelLigeiro(String matricula, String marca, String modelo, int potencia, int newNumQuadro, int newCapBagageira){
        super(matricula, marca, modelo, potencia);
        assert validAutomovel(newNumQuadro, newCapBagageira): "Parametros invalidos!";
        if(validAutomovel(newNumQuadro, newCapBagageira)){
            this.numQuadro = newNumQuadro;
            this.capBagageira = newCapBagageira;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    private boolean validAutomovel(int numQuadro, int capBagageira){
        return (numQuadro > 0) && (capBagageira > 0);
    }

    public int getNumQuadro(){
        return numQuadro;
    }

    public int getCapBagageira(){
        return capBagageira;
    }

    public void setNumQuadro(int newNumQuadro){
        assert validAutomovel(newNumQuadro, capBagageira): "Parametros invalidos!";
        if(validAutomovel(newNumQuadro, capBagageira)){
            this.numQuadro = newNumQuadro;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public void setCapBagageira(int newCapBagageira){
        assert validAutomovel(numQuadro, newCapBagageira): "Parametros invalidos!";
        if(validAutomovel(numQuadro, newCapBagageira)){            
            this.capBagageira = newCapBagageira;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    @Override
    public String toString(){
        return String.format("\nAutomovel Ligeiro\nMatricula: %s\nMarca: %s\nModelo: %s\nPotencia: %d\nNumero do quadro: %d\nCapacidade da Bageira: %d litros\n", getMatricula(), getMarca(), getModelo(), getPotencia(), numQuadro, capBagageira);
    }
    
}
