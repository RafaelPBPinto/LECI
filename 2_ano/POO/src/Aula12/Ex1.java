package Aula12;
import java.io.*;
import java.util.ArrayList;
import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args) throws IOException {
        Scanner file = new Scanner(new FileReader("./src/Aula12/aula12_files/ex1.txt"));
        ArrayList<String> palavras = new ArrayList<>();
        int total = 0;
        int dif = 0;

        while(file.hasNext()){
            String next = file.next();
            if(!palavras.contains(next)){
                palavras.add(next);
                dif++;
            }
            total++;
        }
        System.out.println("Número Total de Palavras: " + total);
        System.out.println("Número de Diferentes Palavras: " + dif);
    }
}