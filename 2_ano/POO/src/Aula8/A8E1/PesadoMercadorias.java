package Aula8.A8E1;

public class PesadoMercadorias extends Veiculo {
    private int numQuadro;
    private int peso;
    private int maxCarga;

    public PesadoMercadorias(String matricula, String marca, String modelo, int potencia, int newNumQuadro, int newPeso, int newMaxCarga){
        super(matricula, marca, modelo, potencia);
        assert validMercadoria(newNumQuadro, newPeso, newMaxCarga): "Parametros invalidos!";
        if(validMercadoria(newNumQuadro, newPeso, newMaxCarga)){
            this.numQuadro = newNumQuadro;
            this.peso = newPeso;
            this.maxCarga = newMaxCarga;
        }else{
            System.out.println("Parametros Invalidos!");
        }
    }

    private boolean validMercadoria(int numQuadro, int peso, int maxCarga){
        return (numQuadro > 0) && (peso > 3500) && (maxCarga < peso);
    }

    public int getNumQuadro(){
        return numQuadro;
    }

    public int getPeso(){
        return peso;
    }

    public int getMaxCarga(){
        return maxCarga;
    }

    public void setNumQuadro(int newNumQuadro){
        assert validMercadoria(newNumQuadro, peso, maxCarga): "Parametros invalidos!";
        if(validMercadoria(newNumQuadro, peso, maxCarga)){
            this.numQuadro = newNumQuadro;
        }else{
            System.out.println("Parametros Invalidos!");
        }
    }

    public void setPeso(int newPeso){
        assert validMercadoria(numQuadro, newPeso, maxCarga): "Parametros invalidos!";
        if(validMercadoria(numQuadro, newPeso, maxCarga)){
            this.peso = newPeso;
        }else{
            System.out.println("Parametros Invalidos!");
        }
    }

    public void setMaxCarga(int newMaxCarga){
        assert validMercadoria(numQuadro, peso, newMaxCarga): "Parametros invalidos!";
        if(validMercadoria(numQuadro, peso, newMaxCarga)){
            this.maxCarga = newMaxCarga;
        }else{
            System.out.println("Parametros Invalidos!");
        }
    }

    @Override
    public String toString(){
        return String.format("\nPesado de mercadorias\nMatricula: %s\nMarca: %s\nModelo: %s\nPotencia: %d\nNumero do quadro: %d\nPeso: %d Kg\nCarga maxima: %d Kg\n", getMatricula(), getMarca(), getModelo(), getPotencia(), numQuadro, peso, maxCarga);
    }
}
