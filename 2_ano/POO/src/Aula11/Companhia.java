package Aula11;

import java.util.ArrayList;

public class Companhia {
    private String companhia;
    ArrayList<String> atrasos = new ArrayList<>();

    public Companhia(String sigla, String companhia){
        this.companhia = companhia;
    }

    public void addAtrasos(String atraso){
        atrasos.add(atraso);
    }

    public String getMediaAtrasos(){
        int media = 0;
        for(int i = 0; i < atrasos.size(); i++){
            if(atrasos.get(i).length() > 0)
                media += Integer.parseInt(atrasos.get(i).substring(0, 2)) * 60 + Integer.parseInt(atrasos.get(i).substring(3));
        }
        media = media / atrasos.size();
        return String.format("%d:%02d", media/60, media%60);
    }

    @Override
    public String toString(){
        return String.format("%s", companhia);
    }
}
