package Aula8.A8E2;

public class Carne extends Alimento {
    private VariedadeCarne variedade;

    public Carne(VariedadeCarne newVariedade, double proteinas, double calorias, double peso){
        super(proteinas, calorias, peso);
        this.variedade = newVariedade;
    }

    public VariedadeCarne getVariedade(){
        return variedade;
    }

    public void setVariedade(VariedadeCarne variedade){
        this.variedade = variedade;
    }

    @Override
    public String toString(){
        return String.format("Carne %s, Proteinas %.1f, calorias %.1f, Peso %.1f", variedade, getProteinas(), getCalorias(), getPeso());
    }

    @Override
    public boolean equals(Object o){
        if(this == o)
            return true;
        if(o == null)
            return false;
        if(getClass() != o.getClass())
            return false;
        Carne other = (Carne) o;
        if(!variedade.equals(other.getVariedade())){
            return false;
        }else if((getProteinas() != other.getProteinas()) || getCalorias() != other.getCalorias() || getPeso() != other.getPeso()){
            return false;
        }else{
            return true;
        }
    }
}
