package Aula2;
import java.util.Scanner;

public class Ex3 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        double M, initialTemperature, finalTemperature, Q;
        do{
            System.out.print("Quantidade de agua (em quilogramas): ");
            M = sc.nextDouble();
            if(M < 0){
                System.out.println("Valor Invalido! Quantidade tem de ser maior de 0.");
            }
        }while(M < 0);
        System.out.print("Temperatura inicial da agua (em graus Celsius): ");
        initialTemperature = sc.nextDouble();
        System.out.print("Temperatura final da agua (em graus Celsius): ");
        finalTemperature = sc.nextDouble();
        Q = M * (finalTemperature - initialTemperature) * 4184;
        System.out.println("Energia necessaria: " + Q + " Joules");
    }
}
