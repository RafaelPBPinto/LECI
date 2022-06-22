package Aula11;
import java.io.*;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import java.util.ArrayList;

public class Ex1 {
    public static void main(String[] args) throws IOException {
        //Scanner input = new Scanner("Construa um programa que leia um ficheiro de texto e que conte todos os pares de palavras encontrados no ficheiro e o número de ocorrências de cada par. Despreze todas as palavras de tamanho inferior a 3 e considere como separadores os seguintes caracteres:");
        Scanner input = new Scanner(new FileReader("./src/Aula11/aula11_files/major.txt"));
        Map<String, Map<String, Integer>> paresPalavras = new TreeMap<>();
        ArrayList<String> words = new ArrayList<>();
        String text = "";
        while(input.hasNext())
            text += input.nextLine();
        int lastIndex = 0;
        for(int i = 0; i < text.length(); i++){
            if(text.charAt(i) == ' '){
                String word = text.substring(lastIndex, i);
                if(word.matches("[A-zÀ-ú0-9]{3,}")){
                    words.add(word);
                }else{
                    if(word.length() >= 3)
                        words.add(removePunct(word));
                } 
                lastIndex = i+1;
            }
        }
        String word = text.substring(lastIndex, text.length());
        if(word.matches("[A-zÀ-ú0-9]{3,}"))
            words.add(word);
        System.out.println(words.get(1818));
        System.out.println(words.get(1819));
        for(int i=1; i < words.size(); i++){
            if((i+1) < words.size()){
                if(paresPalavras.containsKey(words.get(i))){
                    if(paresPalavras.get(words.get(i)).containsKey(words.get(i+1))){
                        Integer n = paresPalavras.get(words.get(i)).get(words.get(i+1))+1;
                        paresPalavras.get(words.get(i)).replace(words.get(i+1), n);
                    }else{
                        paresPalavras.get(words.get(i)).put(words.get(i+1), 1);
                    }
                    paresPalavras.replace(words.get(i), paresPalavras.get(words.get(i)));                    
                }else{
                    Map<String, Integer> newCounter = new TreeMap<>();
                    newCounter.put(words.get(i+1), 1);
                    paresPalavras.put(words.get(i), newCounter);
                }
            }
        }
        for(Map.Entry<String, Map<String, Integer>> k : paresPalavras.entrySet()){
            System.out.println(k);
        }
        input.close();
    }

    public static String removePunct(String s){
        String remove = s;
        if(s.charAt(0) == '\"'){
            return s.substring(1, s.length()-1);
        }
        for(int i = 0; i < s.length(); i++){
            if(!Character.isAlphabetic(s.charAt(i)))
                return s.substring(0, i);
        }
        return remove;
    }
}
