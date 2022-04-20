package Aula6;
import Aula5.Date;

public class Pessoa {
    private String nome;
    private int cc;
    private Date dataNasc;

    public Pessoa(String newNome, int newCc, Date d){
        assert valid(newCc, newNome): "Parametros invalidos!";
        if(valid(newCc, newNome)){
            this.nome = newNome;
            this.cc = newCc;
            this.dataNasc = d;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public boolean valid(int cc, String nome){
        return (cc > 0) && (!nome.equals(""));
    }

    public String getName(){
        return nome;
    }

    public int getCc(){
        return cc;
    }

    public Date getDataNasc(){
        return dataNasc;
    }

    public void setCc(int newCC){
        assert valid(newCC, nome): "Parametros invalidos!";
        if(valid(newCC, nome)){
            this.cc = newCC;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    public void setDataNasc(Date newData){
        this.dataNasc = newData;
    }

    public void setName(String newNome){
        assert valid(cc, newNome): "Parametros invalidos!";
        if(valid(cc, newNome)){
            this.nome = newNome;
        }else{
            System.out.println("Parametros invalidos!");
        }
    }

    @Override
    public String toString(){
        return String.format("%s; CC: %d; Data de Nascimento: %s", nome, cc, dataNasc.toString());
    }
}
