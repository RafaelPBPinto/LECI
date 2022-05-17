package Aula4;
import java.util.Scanner;

public class Ex1 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        System.out.println("Escreva algo: ");
        String texto = sc.nextLine();
        System.out.println("Minusculas: " + texto.toLowerCase());
        System.out.println("Ultimo caracter: " + texto.charAt(texto.length() - 1));
        System.out.print("Tres primeiros carateres: ");
        for(int i = 0; i < 3; i++){
            System.out.print(texto.charAt(i));
        }
        System.out.print('\n');
        System.out.println("Maisculas: " + texto.toUpperCase());
        System.out.println("Tamanho da String: " + texto.length());
        String hello = "HELLO!";
        System.out.println("Concat: " + texto.concat(hello));
        System.out.println("Tem a? " + texto.contains("a"));
    }
}
