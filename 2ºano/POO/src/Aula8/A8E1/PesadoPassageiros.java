package Aula8.A8E1;

public class PesadoPassageiros extends Veiculo {
    private int numQuadro;
    private int peso;
    private int maxPassageiros;

    public PesadoPassageiros(String matricula, String marca, String modelo, int potencia, int newNumQuadro, int newPeso, int newMaxPassageiros){
        super(matricula, marca, modelo, potencia);
        assert validPassageiros(newNumQuadro, newPeso, newMaxPassageiros): "Parametros invalidos!";
        if(validPassageiros(newNumQuadro, newPeso, newMaxPassageiros)){
            this.numQuadro = newNumQuadro;
            this.peso = newPeso;
            this.maxPassageiros = newMaxPassageiros;
        }else{
            System.out.println("Parametros Invalidos!");
        }
    }

    private boolean validPassageiros(int numQuadro, int peso, int maxPassageiros){
        return (numQuadro > 0) && (peso > 3500) && (maxPassageiros >= 10);
    }

    public int getNumQuadro(){
        return numQuadro;
    }

    public int getPeso(){
        return peso;
    }

    public int getMaxPassageiros(){
        return maxPassageiros;
    }

    public void setNumQuadro(int newNumQuadro){
        assert validPassageiros(newNumQuadro, peso, maxPassageiros): "Parametros invalidos!";
        if(validPassageiros(newNumQuadro, peso, maxPassageiros)){
            this.numQuadro = newNumQuadro;
        }else{
            System.out.println("Parametros Invalidos!");
        }
    }

    public void setPeso(int newPeso){
        assert validPassageiros(numQuadro, newPeso, maxPassageiros): "Parametros invalidos!";
        if(validPassageiros(numQuadro, newPeso, maxPassageiros)){
            this.peso = newPeso;
        }else{
            System.out.println("Parametros Invalidos!");
        }
    }

    public void setMaxPassageiros(int newMaxPassageiros){
        assert validPassageiros(numQuadro, peso, newMaxPassageiros): "Parametros invalidos!";
        if(validPassageiros(numQuadro, peso, newMaxPassageiros)){
            this.maxPassageiros = newMaxPassageiros;
        }else{
            System.out.println("Parametros Invalidos!");
        }
    }

    @Override
    public String toString(){
        return String.format("\nPesado de passageiros\nMatricula: %s\nMarca: %s\nModelo: %s\nPotencia: %d\nNumero do quadro: %d\nPeso: %d Kg\nNumero maximo de passageiros: %d \n", getMatricula(), getMarca(), getModelo(), getPotencia(), numQuadro, peso, maxPassageiros);
    }
}
