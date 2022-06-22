package Aula11;

public class Voo {
    private String hora;
    private String voo;
    private String origem;
    private String atraso;

    public Voo(String hora, String voo, String origem, String atraso){
        this.hora = hora;
        this.voo = voo;
        this.origem = origem;
        this.atraso = atraso;
    }

    public String getHora(){
        return hora;
    }

    public String getVoo(){
        return voo;
    }

    public String getOrigem(){
        return origem;
    }

    public String getAtraso(){
        return atraso;
    }

    @Override
    public String toString(){
        return String.format("%s\t%s\t%s\t%s\n", hora, voo, origem, atraso);
    }
}
