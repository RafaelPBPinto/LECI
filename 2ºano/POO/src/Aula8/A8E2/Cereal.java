package Aula8.A8E2;

public class Cereal extends AlimentoVegetariano {
    public Cereal(String newNome, double proteinas, double calorias, double peso){
        super(newNome, proteinas, calorias, peso);
    }
    
    @Override
    public String toString(){
        return String.format("Cereal %s, Proteinas, %.1f, calorias %.1f, Peso %.1f", getNome(), getProteinas(), getCalorias(), getPeso());
    }

    @Override
    public boolean equals(Object o){
        if(this == o)
            return true;
        if(o == null)
            return false;
        if(getClass() != o.getClass())
            return false;
        Cereal other = (Cereal) o;
        if(!getNome().equals(other.getNome())){
            return false;
        }else if((getProteinas() != other.getProteinas()) || getCalorias() != other.getCalorias() || getPeso() != other.getPeso()){
            return false;
        }else{
            return true;
        }
    }
}
