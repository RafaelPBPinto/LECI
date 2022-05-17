package Aula8.A8E2;

import java.util.ArrayList;

public class PratoDieta extends Prato {
    private double maxCalorias;

    public PratoDieta(String nome, ArrayList<Alimento> ingredientes, double maxCalorias){
        super(nome, ingredientes);
        assert validCalorias(maxCalorias): "Calorias a mais!";
        if(validCalorias(maxCalorias)){
            this.maxCalorias = maxCalorias;
        }else{
            System.out.println("Calorias a mais!");
        }  
    }

    public PratoDieta(String nome, double maxCalorias){
        super(nome);
        assert validCalorias(maxCalorias): "Calorias a mais!";
        if(validCalorias(maxCalorias)){
            this.maxCalorias = maxCalorias;
        }else{
            System.out.println("Calorias a mais!");
        }
    }

    private boolean validCalorias(double maxCalorias){
        return maxCalorias >= this.countCalorias();
    }

    public double getMaxCalorias(){
        return maxCalorias;
    }

    public void setMaxCalorias(double maxCalorias){
        assert validCalorias(maxCalorias): "Calorias a mais!";
        if(validCalorias(maxCalorias)){
            this.maxCalorias = maxCalorias;
        }else{
            System.out.println("Calorias a mais!");
        }
    }

    @Override
    public String toString(){
        return String.format("Prato '%s', composto por %d Ingredientes - Dieta (%.2f Calorias)", getNome(), getIngredientes().size(), countCalorias());
    }

    @Override
    public boolean equals(Object o){
        if(this == o)
            return true;
        if(o == null)
            return false;
        if(getClass() != o.getClass())
            return false;
        PratoDieta other = (PratoDieta) o;
        if(!getNome().equals(other.getNome())){
            return false;
        }else if((getIngredientes() != other.getIngredientes()) || maxCalorias != other.getMaxCalorias()){
            return false;
        }else{
            return true;
        }
    }
}
