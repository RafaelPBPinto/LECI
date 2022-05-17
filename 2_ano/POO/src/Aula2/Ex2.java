package Aula2;
import java.util.Scanner;

public class Ex2 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        double C,F;
        System.out.print("Temperatura em graus Celsius: ");
        C = sc.nextDouble();
        F = 1.8 * C + 32;
        System.out.println("Temperatura em graus Fahrenheit: " + F);
    }
}
