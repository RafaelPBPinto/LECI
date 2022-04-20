package Aula6;
import Aula5.Date;

public class Bolseiro extends Aluno {
    private int bolsa;

    public Bolseiro(String iNome, int iBI, Date iDataNasc, Date iDataInsc, int iBolsa){
        super(iNome, iBI, iDataNasc, iDataInsc);
        assert validBolsa(iBolsa): "Montante invalido!";
        if(validBolsa(iBolsa)){
            this.bolsa = iBolsa;
        }else{
            System.out.println("Montante invalido!");
        }
    }

    public Bolseiro(String iNome, int iBI, Date iDataNasc, int iBolsa){
        super(iNome, iBI, iDataNasc);
        assert validBolsa(iBolsa): "Montante invalido!";
        if(validBolsa(iBolsa)){
            this.bolsa = iBolsa;
        }else{
            System.out.println("Montante invalido!");
        }
    }

    private boolean validBolsa(int bolsa){
        return bolsa > 0;
    }

    public int getBolsa(){
        return bolsa;
    }

    public void setBolsa(int newBolsa){
        assert validBolsa(newBolsa): "Montante invalido!";
        if(validBolsa(newBolsa)){
            this.bolsa = newBolsa;
        }else{
            System.out.println("Montante invalido!");
        }
    }

    @Override
    public String toString(){
        return String.format("%s; CC: %d; Data de Nascimento: %s; Data de Inscricao: %s; nmec: %d; bolsa: %d", getName(), getCc(), getDataNasc().toString(), getDataInsc().toString(), getNMec(), bolsa);
    }
}
