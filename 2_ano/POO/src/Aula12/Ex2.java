package Aula12;
import java.util.TreeSet;
import java.io.*;
import java.util.ArrayList;
import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) throws IOException {
        TreeSet<Movie> movies = new TreeSet<>();
        Scanner file = new Scanner(new FileReader("./src/Aula12/aula12_files/movies.txt"));
        ArrayList<String> linhas = new ArrayList<>();

        String header = file.nextLine();
        while(file.hasNext()){
            linhas.add(file.nextLine());
        }
        for(int i = 0; i < linhas.size(); i++){
            String[] colunas = linhas.get(i).split("\t");
            movies.add(new Movie(colunas[0], Double.parseDouble(colunas[1]), colunas[2], colunas[3], Integer.parseInt(colunas[4])));
        }
        System.out.println("Ordem decrescente de score");
        System.out.println(header);
        System.out.println(movies);
        /* 
        System.out.println("Ordem crescente de running time");
        System.out.println(header);
        System.out.println(movies);*/
    }
}
