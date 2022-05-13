package Aula7;

public abstract class Alojamento extends AgenciaDeViagens{
    private String codigo;
    private String nome;
    private String local;
    private boolean disponibilidade;
    private double avaliacao;

    public Alojamento(String codigo, String nome, String local, double avaliacao){
        assert valid(avaliacao): "Avaliacao invalida!";
        if(valid(avaliacao)){
            this.codigo = codigo;
            this.nome = nome;
            this.local = local;
            this.disponibilidade = true;
            this.avaliacao = avaliacao;
        }else{
            System.out.println("Avaliacao invalida!");
        }
    }

    private boolean valid(double avaliacao){
      return (avaliacao >= 0) && (avaliacao <= 5);
    }

    public String getCode(){
        return codigo;
    }

    public String getName(){
        return nome;
    }

    public String getLocal(){
        return local;
    }

    public boolean getDisponibility(){
        return disponibilidade;
    }

    public double getRating(){
        return avaliacao;
    }

    public void setCode(String code){
        this.codigo = code;
    }

    public void setName(String name){
        this.nome = name;
    }

    public void setLocal(String local){
        this.local = local;
    }

    public void setDisponibility(boolean disponibility){
        this.disponibilidade = disponibility;
    }

    public void setRating(double rating){
        assert valid(rating): "Parametros invalidos!";
        if(valid(rating)){
            this.avaliacao = rating;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public abstract void checkin();
    public abstract void checkout();

    @Override
    public String toString(){
        return String.format("Codigo: %s\nNome: %s\nLocal: %s\nDisponibilidade: %s\nAvaliacao: %.1f\n", codigo, nome, local, disponibilidade, avaliacao);
    }

}
