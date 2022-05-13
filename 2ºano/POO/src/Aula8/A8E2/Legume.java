package Aula8.A8E2;

public class Legume extends AlimentoVegetariano {
    public Legume(String newNome, double proteinas, double calorias, double peso){
        super(newNome, proteinas, calorias, peso);
    }
    
    @Override
    public String toString(){
        return String.format("Legume %s, Proteinas %.1f, calorias %.1f, Peso %.1f", getNome(), getProteinas(), getCalorias(), getPeso());
    }

    @Override
    public boolean equals(Object o){
        if(this == o)
            return true;
        if(o == null)
            return false;
        if(getClass() != o.getClass())
            return false;
        Legume other = (Legume) o;
        if(!getNome().equals(other.getNome())){
            return false;
        }else if((getProteinas() != other.getProteinas()) || getCalorias() != other.getCalorias() || getPeso() != other.getPeso()){
            return false;
        }else{
            return true;
        }
    }
}
