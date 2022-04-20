package Aula6;
import Aula5.Date;
import java.util.Calendar;

public class Aluno extends Pessoa {
    private int nmec;
    private Date dataInsc;
    private static int nmecCounter = 100;
    
    public Aluno(String iNome, int iBI, Date iDataNasc, Date iDataInsc){
        super(iNome, iBI, iDataNasc);
        this.dataInsc = iDataInsc;
        generateNmec();
    }

    public Aluno(String iNome, int iBI, Date iDataNasc){
        super(iNome, iBI, iDataNasc);
        Calendar today = Calendar.getInstance();
        this.dataInsc = new Date(today.get(Calendar.DATE), today.get(Calendar.MONTH) + 1, today.get(Calendar.YEAR));
        generateNmec();
    }

    private void generateNmec(){
        this.nmec = nmecCounter;
        nmecCounter++;
    }

    public int getNMec(){
        return nmec;
    }

    public Date getDataInsc(){
        return dataInsc;
    }

    public void setDataInsc(Date newData){
        this.dataInsc = newData;
    }

    @Override
    public String toString(){
        return String.format("%s; CC: %d; Data de Nascimento: %s; Data de Inscricao: %s; nmec: %d", getName(), getCc(), getDataNasc().toString(), dataInsc, nmec);
    }
}
