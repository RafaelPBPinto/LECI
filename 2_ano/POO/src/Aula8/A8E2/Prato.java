package Aula8.A8E2;
import java.util.ArrayList;

public class Prato {
    private String nome;
    private ArrayList<Alimento> ingredientes = new ArrayList<>();

    public Prato(String nome, ArrayList<Alimento> ingredientes){
        assert valid(nome): "Parametros invalidos!";
        if(valid(nome)){
            this.nome = nome;
            this.ingredientes = ingredientes;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public Prato(String nome){
        assert valid(nome): "Parametros invalidos!";
        if(valid(nome)){
            this.nome = nome;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }
    
    private boolean valid(String nome){
        return !nome.isEmpty();
    }

    public String getNome(){
        return nome;
    }

    public ArrayList<Alimento> getIngredientes(){
        return ingredientes;
    }

    public void setNome(String newNome){
        assert valid(newNome): "Parametros invalidos!";
        if(valid(newNome)){
            this.nome = newNome;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public boolean addIngrediente(Alimento a){
        if(!ingredientes.contains(a)){
            ingredientes.add(a);
            return true;
        }else{
            System.out.println("\tIngrediente já existe neste prato!");
            return false;
        }
    }

    public boolean removeIngrediente(Alimento a){
        if(ingredientes.contains(a)){
            ingredientes.remove(a);
            return true;
        }else{
            System.out.println("\tIngrediente não existe neste prato!");
            return false;
        }
    }

    public double countCalorias(){
        double calorias = 0;
        for(Alimento a : ingredientes){
            calorias += a.getCalorias();
        }
        return calorias;
    }

    public double getPesoTotal(){
        double peso = 0;
        for(Alimento a: ingredientes){
            peso += a.getPeso();
        }
        return peso;
    }

    public double getProteinasTotais(){
        double proteinas = 0;
        for(Alimento a : ingredientes){
            proteinas += a.getProteinas();
        }
        return proteinas;
    }

    public String listIngredientes(){
        String stringingredientes = "";
        for(Alimento a : ingredientes){
            stringingredientes += a.toString();
        }
        return stringingredientes;
    } 

    @Override
    public String toString(){
        return String.format("Prato '%s', composto por %d Ingredientes", nome, ingredientes.size());
    }

    @Override
    public int hashCode(){
        return nome.length() * 200 / 6;
    }

    @Override
    public boolean equals(Object o){
        if(this == o)
            return true;
        if(o == null)
            return false;
        if(getClass() != o.getClass())
            return false;
        Prato other = (Prato) o;
        if(!nome.equals(other.getNome())){
            return false;
        }else if(ingredientes != other.getIngredientes()){
            return false;
        }else{
            return true;
        }
    }
}
