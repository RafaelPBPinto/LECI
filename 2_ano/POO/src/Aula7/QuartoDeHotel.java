package Aula7;

public class QuartoDeHotel extends Alojamento {
    private String tipo;

    public QuartoDeHotel(String codigo, String nome, String local, double avaliacao, String tipoDeQuarto){
        super(codigo, nome, local, avaliacao);
        assert valid(tipoDeQuarto): "Parametros invalidos!";
        if(valid(tipoDeQuarto)){
            this.tipo = tipoDeQuarto;
            addAlojamento(this);
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    private boolean valid(String tipo){
        return (tipo.equals("single")) || (tipo.equals("double")) || (tipo.equals("twin")) || (tipo.equals("triple"));
    }

    public String getTipo(){
        return tipo;
    }

    public void setTipo(String tipoDeQuarto){
        assert valid(tipoDeQuarto): "Parametros invalidos!";
        if(valid(tipoDeQuarto)){
            this.tipo = tipoDeQuarto;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public void checkin(){
        if(getDisponibility() == true){
            removeAlojamento(this);
            setDisponibility(false);
        }else{
            System.out.println("Quartos Indisponivel!");
        }
    }

    public void checkout(){
        addAlojamento(this);
        setDisponibility(true);
    }

    @Override
    public String toString(){
        return String.format("Codigo: %s\nNome: %s\nLocal: %s\nDisponibilidade: %s\nAvaliacao: %.1f\nTipo de quarto: %d\n", getCode(), getName(), getLocal(), getDisponibility(), getRating(), tipo);
    }
}
