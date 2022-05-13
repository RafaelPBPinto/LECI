package Aula7;

public class Apartamento extends Alojamento {
    private int nQuartos;

    public Apartamento(String codigo, String nome, String local, double avaliacao, int newNQuartos){
        super(codigo, nome, local, avaliacao);
        assert valid(newNQuartos): "Parametros invalidos!";
        if(valid(newNQuartos)){
            this.nQuartos = newNQuartos;
            addAlojamento(this);
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    private boolean valid(int numQuartos){
        return numQuartos > 0;
    }

    public int getNQuartos(){
        return nQuartos;
    }

    public void setNQuartos(int newNQuartos){
        assert valid(newNQuartos): "Parametros invalidos!";
        if(valid(newNQuartos)){
            this.nQuartos = newNQuartos;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public void checkin(){
        if(getDisponibility() == true){
            removeAlojamento(this);
            setDisponibility(false);
        }else{
            System.out.println("Apartamento Indisponivel!");
        }
    }

    public void checkout(){
        addAlojamento(this);
        setDisponibility(true);
    }

    @Override
    public String toString(){
        return String.format("Codigo: %s\nNome: %s\nLocal: %s\nDisponibilidade: %s\nAvaliacao: %.1f\nNº de quartos: %d\n", getCode(), getName(), getLocal(), getDisponibility(), getRating(), nQuartos);
    }
}
