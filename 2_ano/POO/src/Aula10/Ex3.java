package Aula10;
import java.util.Scanner;
import java.util.Map;
import java.util.LinkedHashMap;
import java.util.ArrayList;

public class Ex3 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        Map<Character,ArrayList<Integer>> posicoes = new LinkedHashMap<>();
        System.out.println("Introduza uma frase:");
        String frase = sc.nextLine();
        ArrayList<Character> letras = new ArrayList<>();
        for(int i = 0; i < frase.length(); i++){
            if(!letras.contains(frase.charAt(i)))
                letras.add(frase.charAt(i));
        }
        for(int i = 0; i < letras.size(); i++){
            ArrayList<Integer> pos = new ArrayList<>();
            for(int j = 0; j < frase.length(); j++){
                if(letras.get(i) == frase.charAt(j))
                    pos.add(j);
            }
            posicoes.put(letras.get(i), pos);
        }
        System.out.println(posicoes);
    }
}
