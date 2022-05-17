package Aula8.A8E1;

public class Motociclo extends Veiculo {
    private String tipo;

    public Motociclo(String matricula, String marca, String modelo, int potencia, String newTipo){
        super(matricula, marca, modelo, potencia);
        assert validTipo(newTipo.toLowerCase()): "Tipo invalido!";
        if(validTipo(newTipo.toLowerCase())){
            this.tipo = newTipo;
        }else{
            System.out.println("Tipo invalido!");
        }
    }

    private boolean validTipo(String tipo){
        return tipo.equals("desportivo") || tipo.equals("estrada");
    }

    public String getTipo(){
        return tipo;
    }

    public void setTipo(String newTipo){
        assert validTipo(newTipo.toLowerCase()): "Tipo invalido!";
        if(validTipo(newTipo.toLowerCase())){
            this.tipo = newTipo;
        }else{
            System.out.println("Tipo invalido!");
        }
    }

    @Override
    public String toString(){
        return String.format("\nMotociclo\nMatricula: %s\nMarca: %s\nModelo: %s\nPotencia: %d\nTipo: %s\n", getMatricula(), getMarca(), getModelo(), getPotencia(), tipo);
    }
}
