package Aula4;
import java.util.Scanner;

public class Ex3 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        System.out.println("Introduza uma frase:");
        String frase = sc.nextLine() + " ";         // acrescenta espaço no fim para no loop avaliar ultima palavra
        String ac = "";
        int nletters = 0;     
        for(int i = 0; i < frase.length(); i++){
            if(frase.charAt(i) != ' '){
                nletters++;
            }else{
                if(nletters >= 3){
                    ac += frase.charAt(i - nletters);
                    nletters = 0;
                }else{
                    nletters = 0;
                }
            }
        }
        System.out.println("Acronimo: " + ac.toUpperCase());
    }
}
