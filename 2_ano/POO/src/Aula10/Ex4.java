package Aula10;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.Iterator;

public class Ex4 {
    public static void main(String[] args) throws IOException {
        Scanner input = new Scanner(new FileReader("./src/Aula10/words.txt"));
        ArrayList<String> palavras = new ArrayList<>();
        System.out.println("Conteúdo do ficheiro:");
        while(input.hasNext()){
            String word = input.next();
            System.out.println(word);
            if(word.length() > 2)
                palavras.add(word);
        }
        System.out.println("Palavras com mais do que 2 caracteres:");
        System.out.println(palavras);
        System.out.println("Palavras acabadas em s:");
        for(String s : palavras){
            if(s.endsWith("s"))
                System.out.println(s);
        }
        System.out.println("Palavras que não contenham outros caracteres que não letras:");
        Iterator<String> iterador = palavras.iterator();
        while(iterador.hasNext()){
            String s = iterador.next();
            if(hasNonLetters(s)){
                iterador.remove();
            }
        }
        System.out.println(palavras);
    }

    public static boolean hasNonLetters(String s){
        for(int i = 0; i < s.length(); i++){
            if(!Character.isLetter(s.charAt(i)))
                return true;                    
        }
        return false;
    }
}
