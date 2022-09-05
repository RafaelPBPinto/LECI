package POO2122;

public class Catering extends Activity {
    private int nparticipantes = 0;
    private Option option;
    private int preco;

    public Catering(Option option, int preco){
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

    public enum Option{
        FULL_MENU, DRINKS_AND_SNACKS, LIGHT_BITES;
    }

    @Override
    public String toString(){
        return String.format("%s activity for %d participants.\n", option, nparticipantes);
    }
}
