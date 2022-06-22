package Aula11;
import java.io.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.TreeMap;
import java.util.ArrayList;
import java.util.Set;

public class Ex2 {
    public static void main(String[] args) throws IOException {
        Scanner companhias_file = new Scanner(new FileReader("./src/Aula11/aula11_files/companhias.txt"));
        Scanner voos_file = new Scanner(new FileReader("./src/Aula11/aula11_files/voos.txt"));
        ArrayList<Voo> voos = new ArrayList<>();
        HashMap<String, Companhia> companhias = new HashMap<>();
        ArrayList<String> linhas = new ArrayList<>();

        companhias_file.nextLine();
        while(companhias_file.hasNext()){
            linhas.add(companhias_file.nextLine());   
        }
        for(int i = 0; i < linhas.size(); i++){
            String[] coluna = linhas.get(i).split("\t");
            companhias.put(coluna[0], new Companhia(coluna[0], coluna[1]));
        }
        linhas.clear();
        companhias_file.close();

        voos_file.nextLine();
        while(voos_file.hasNext()){
            linhas.add(voos_file.nextLine());   
        }
        for(int i = 0; i < linhas.size(); i++){
            String[] coluna = linhas.get(i).split("\t");
            if(coluna.length == 4){
                voos.add(new Voo(coluna[0], coluna[1], coluna[2], coluna[3]));
            }else{
                voos.add(new Voo(coluna[0], coluna[1], coluna[2], ""));
            }
        }
        linhas.clear();
        voos_file.close();
        FileWriter ficheiro = new FileWriter("./src/Aula11/aula11_files/Infopublico.txt", true);
        System.out.printf("%-7s%-10s%-25s%-25s%-10s%s\n", "Hora", "Voo", "Companhia", "Origem", "Atraso", "Obs");
        ficheiro.append(String.format("%-7s%-10s%-25s%-25s%-10s%s\n", "Hora", "Voo", "Companhia", "Origem", "Atraso", "Obs"));
        for(int i = 0; i < voos.size(); i++){
            if(!voos.get(i).getAtraso().equals("")){
                System.out.printf("%-7s%-10s%-25s%-25s%-10s%s\n", voos.get(i).getHora(), voos.get(i).getVoo(), companhias.get(getSigla(voos.get(i))), voos.get(i).getOrigem(), voos.get(i).getAtraso(), getObs(voos.get(i).getHora(), voos.get(i).getAtraso()));
                ficheiro.append(String.format("%-7s%-10s%-25s%-25s%-10s%s\n", voos.get(i).getHora(), voos.get(i).getVoo(), companhias.get(getSigla(voos.get(i))), voos.get(i).getOrigem(), voos.get(i).getAtraso(), getObs(voos.get(i).getHora(), voos.get(i).getAtraso())));
            }else{
                System.out.printf("%-7s%-10s%-25s%-25s\n", voos.get(i).getHora(), voos.get(i).getVoo(), companhias.get(getSigla(voos.get(i))), voos.get(i).getOrigem());
                ficheiro.append(String.format("%-7s%-10s%-25s%-25s\n", voos.get(i).getHora(), voos.get(i).getVoo(), companhias.get(getSigla(voos.get(i))), voos.get(i).getOrigem()));
            }
        }
        ficheiro.close();
        System.out.printf("\nAtraso médio\n");
        for(int i = 0; i < voos.size(); i++){
            if((companhias.get(getSigla(voos.get(i))) != null))
                companhias.get(getSigla(voos.get(i))).addAtrasos(voos.get(i).getAtraso());
        }
        ArrayList<String> siglas = new ArrayList<>();
        for(int i = 0; i < voos.size(); i++){
            if(!siglas.contains(getSigla(voos.get(i))))
                siglas.add(getSigla(voos.get(i)));
        }
        TreeMap<String, Companhia> atrasos_medios = new TreeMap<>();
        for(int i = 0; i < siglas.size(); i++){
            if(companhias.get(siglas.get(i)) != null)
                atrasos_medios.put(companhias.get(siglas.get(i)).getMediaAtrasos(), companhias.get(siglas.get(i)));
        }
        
        Set<Map.Entry<String, Companhia> > atrasos_set = atrasos_medios.entrySet();
 
        // Convert entrySet to Array using toArray method
        Map.Entry<String, Companhia>[] atrasos_array = atrasos_set.toArray(new Map.Entry[atrasos_set.size()]);

        System.out.printf("%-25s%s\n", "Companhia", "Atraso médio");
        for(int i = 0; i < atrasos_array.length; i++){
            System.out.printf("%-25s%s\n", atrasos_array[i].getValue(), atrasos_array[i].getKey());
        }

        TreeMap<String, Integer> nvoos = new TreeMap<>();
        for(int i = 0; i < voos.size(); i++){
            if(nvoos.containsKey(voos.get(i).getOrigem())){
                nvoos.replace(voos.get(i).getOrigem(), nvoos.get(voos.get(i).getOrigem())+1);
            }else{
                nvoos.put(voos.get(i).getOrigem(), 1);
            }
        }

        Set<Map.Entry<String, Integer> > nvoos_set = nvoos.entrySet();
 
        // Convert entrySet to Array using toArray method
        Map.Entry<String, Integer>[] nvoos_array = nvoos_set.toArray(new Map.Entry[nvoos_set.size()]);

        FileWriter ficheiro2 = new FileWriter("./src/Aula11/aula11_files/cidades.txt", true);
        ficheiro2.append(String.format("%-25s%s\n", "Origem", "Voos"));
        for(int i = 0; i < nvoos_array.length; i++){
            ficheiro2.append(String.format("%-25s%d\n", nvoos_array[i].getKey(), nvoos_array[i].getValue()));
        }
        ficheiro2.close();
    }

    public static String getSigla(Voo v){
        return v.getVoo().substring(0,2);
    }

    public static String getObs(String hora, String atraso){
        int antiga_hora = Integer.parseInt(hora.substring(0, 2)) * 60 + Integer.parseInt(hora.substring(3));
        int tempo_atraso = Integer.parseInt(atraso.substring(0, 2)) * 60 + Integer.parseInt(atraso.substring(3));
        int previsao = antiga_hora + tempo_atraso;
        return String.format("Previsto: %d:%02d", previsao/60, previsao%60);
    }

   
}
