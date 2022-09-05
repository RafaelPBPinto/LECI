package POO2122;

public class Sport extends Activity {
    private int nparticipantes = 0;
    private Modality modalidade;
    private int preco;

    public Sport(Sport.Modality modalidade, int preco){
        this.modalidade = modalidade;
        this.preco = preco;
    }

    public int getParticipantes(){
        return nparticipantes;
    }

    public Modality getModalidade(){
        return modalidade;
    }

    public int getPreco(){
        return preco;
    }

    public void addParticipante(){
        nparticipantes++;
    }

    public void removeParticipante(){
        if(nparticipantes > 0)
            nparticipantes--;
    }

    public enum Modality {
        KAYAK, BIKE;
    }

    @Override
    public String toString(){
        return String.format("%s activity for %d participants.\n", this.modalidade, nparticipantes);
    }
}
