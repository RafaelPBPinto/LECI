package Aula2;
import java.util.Scanner;

public class Ex8 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        double cateto1, cateto2, hipotenusa, angulo;
        System.out.print("Comprimento do cateto A: ");
        cateto1 = sc.nextDouble();
        System.out.print("Comprimento do cateto B: ");
        cateto2 = sc.nextDouble();
        hipotenusa = Math.sqrt(cateto1 * cateto1 + cateto2 * cateto2);
        angulo = Math.acos(cateto1 / hipotenusa) * 180 / Math.PI; 
        System.out.printf("Comprimento da hipotenusa: %.2f\n", hipotenusa);
        System.out.printf("Angulo: %.2fº\n", angulo);
    }
}
