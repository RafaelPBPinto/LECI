package Aula7;
import java.util.ArrayList;

public class AgenciaDeViagens {
    private String nome = "TravelWire";
    private String endereco = "Rua do Cabo 31, 3190-142 Alfama";
    private ArrayList<Alojamento> alojamentos_disponiveis = new ArrayList<Alojamento>();
    private ArrayList<Carro> viaturas_disponiveis = new ArrayList<Carro>();

    public String getName(){
        return nome;
    }

    public String getEndereco(){
        return endereco;
    }

    public void addAlojamento(Alojamento a){
        alojamentos_disponiveis.add(a);
    }

    public void addViatura(Carro c){
        viaturas_disponiveis.add(c);
    }

    public void removeAlojamento(Alojamento a){
        alojamentos_disponiveis.remove(a);
    }

    public void removeViatura(Carro c){
        viaturas_disponiveis.remove(c);
    }

    public void listAlojamentos(){
        System.out.println("Alojamentos disponiveis:");
        for(Alojamento a : alojamentos_disponiveis){
            System.out.println(a);
        }
    }

    public void listViaturas(){
        System.out.println("Viaturas disponiveis:");
        for(Carro c : viaturas_disponiveis){
            System.out.println(c);
        }
    }

    @Override
    public String toString(){
        return String.format("%s\n%s\n", nome, endereco);
    }
}
