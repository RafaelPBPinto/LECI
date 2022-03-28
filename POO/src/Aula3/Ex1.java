package Aula3;
import java.util.Scanner;

public class Ex1 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        double notaP, notaT, notafinal;
        do{
            System.out.print("Nota da componente pratica: ");
            notaP = sc.nextDouble();
            if(notaP < 0 || notaP > 20){
                System.out.println("Nota invalida! Introduza uma nota de 0 a 20.");
            }
        }while(notaP < 0 || notaP > 20);
        do{
            System.out.print("Nota da componente teorica: ");
            notaT = sc.nextDouble();
            if(notaT < 0 || notaT > 20){
                System.out.println("Nota invalida! Introduza uma nota de 0 a 20.");
            }
        }while(notaT < 0 || notaT > 20);

        if(notaP < 7 || notaT < 7){
            notafinal = 66;
            System.out.println("Nota final: " + notafinal + " (reprovado por nota minima).");
        }else{
            notafinal = 0.4 * notaT + 0.6 * notaP;
            System.out.printf("Nota final: %.0f\n", notafinal);
        }
    }
}
