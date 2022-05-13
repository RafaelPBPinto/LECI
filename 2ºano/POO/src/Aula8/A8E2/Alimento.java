package Aula8.A8E2;

public abstract class Alimento {
    private double proteinas;
    private double calorias;
    private double peso;

    protected Alimento(double newProteinas, double newCalorias, double newPeso){
        assert valid(newProteinas, newCalorias, newPeso): "Parametros invalidos!";
        if(valid(newProteinas, newCalorias, newPeso)){
            this.proteinas = newProteinas;
            this.calorias = newCalorias;
            this.peso = newPeso;
        }else{
            System.out.println("Parametros invalidos");
        }
    }

    private boolean valid(double proteinas, double calorias, double peso){
        return (proteinas > 0) && (calorias > 0) && (peso > 0);
    }

    public double getProteinas(){
        return proteinas;
    }

    public double getCalorias(){
        return calorias;
    }

    public double getPeso(){
        return peso;
    }

    public void setProteinas(double proteinas){
        assert valid(proteinas, calorias, peso): "Parametros invalidos!";
        if(valid(proteinas, calorias, peso)){
            this.proteinas = proteinas;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public void setCalorias(double calorias){
        assert valid(proteinas, calorias, peso): "Parametros invalidos!";
        if(valid(proteinas, calorias, peso)){
            this.calorias = calorias;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public void setPeso(double peso){
        assert valid(proteinas, calorias, peso): "Parametros invalidos!";
        if(valid(proteinas, calorias, peso)){
            this.peso = peso;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    @Override
    public int hashCode(){
        return (int)(proteinas * peso * calorias);
    }

    @Override
    public abstract String toString();
    public abstract boolean equals(Object o);
}
