package Aula8.A8E2;
import java.util.ArrayList;

public class PratoVegetariano extends Prato implements Vegetariano {
    public PratoVegetariano(String nome, ArrayList<Alimento> ingredientes){
        super(nome, ingredientes);
    }

    public PratoVegetariano(String nome){
        super(nome);
    }

    @Override
    public boolean addIngrediente(Alimento a){
        if(a instanceof Vegetariano){
            if(!getIngredientes().contains(a)){
                getIngredientes().add(a);
                return true;
            }else{
                System.out.println("\tIngrediente já existe neste prato!");
                return false;
            }
        }else{
            System.out.println("\tIngrediente não é vegetariano!");
            return false;
        }
    }

    @Override
    public String toString(){
        return String.format("Prato '%s', composto por %d Ingredientes - Prato Vegetariano", getNome(), getIngredientes().size());
    }
}
