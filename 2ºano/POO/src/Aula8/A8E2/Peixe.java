package Aula8.A8E2;

public class Peixe extends Alimento {
    private TipoPeixe tipo;

    public Peixe(TipoPeixe newTipo, double proteinas, double calorias, double peso){
        super(proteinas, calorias, peso);
        this.tipo = newTipo;
    }

    public TipoPeixe getTipo(){
        return tipo;
    }

    public void setTipo(TipoPeixe tipo){
        this.tipo = tipo;
    }

    @Override
    public String toString(){
        return String.format("Peixe %s, Proteinas %.1f, calorias %.1f, Peso %.1f", tipo, getProteinas(), getCalorias(), getPeso());
    }

    @Override
    public boolean equals(Object o){
        if(this == o)
            return true;
        if(o == null)
            return false;
        if(getClass() != o.getClass())
            return false;
        Peixe other = (Peixe) o;
        if(!tipo.equals(other.getTipo())){
            return false;
        }else if((getProteinas() != other.getProteinas()) || getCalorias() != other.getCalorias() || getPeso() != other.getPeso()){
            return false;
        }else{
            return true;
        }
    }
}
