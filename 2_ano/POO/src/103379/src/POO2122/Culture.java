package POO2122;

public class Culture extends Activity {
    private int nparticipantes = 0;
    private Option option;
    private int preco;

    public Culture(Option option, int preco){
        this.option = option;
        this.preco = preco;
    }

    public int getParticipantes(){
        return nparticipantes;
    }

    public Option getOption(){
        return option;
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

    public enum Option {
        ARCHITECTURAL_TOUR, RIVER_TOUR, WINE_TASTING;
    }

    @Override
    public String toString(){
        return String.format("%s activity for %d participants.\n", this.option, nparticipantes);
    }
}
