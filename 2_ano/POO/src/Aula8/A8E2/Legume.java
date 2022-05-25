package Aula8.A8E2;

public class Legume extends Alimento implements Vegetariano {
    private String nome;
    public Legume(String newNome, double proteinas, double calorias, double peso){
        super(proteinas, calorias, peso);
        assert valid(newNome): "Nome invalido!";
        if(valid(newNome)){
            this.nome = newNome;
        }else{
            System.out.println("Nome invalido!");
        }
    }
    
    private boolean valid(String nome){
        if(nome.isEmpty())
            return false;
        for(int i = 0; i < nome.length(); i++){
            if(Character.isDigit(nome.charAt(i)))
                return false;
        }
        return true;
    }

    public String getNome(){
        return nome;
    }

    public void setNome(String nome){
        assert valid(nome): "Nome invalido!";
        if(valid(nome)){
            this.nome = nome;
        }else{
            System.out.println("Nome invalido!");
        }
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
