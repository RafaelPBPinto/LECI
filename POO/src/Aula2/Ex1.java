package Aula2;
import java.util.Scanner;

public class Ex1 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        double km,miles;
        do{
            System.out.print("Distancia em Km: ");
            km = sc.nextDouble();
            if(km < 0){
                System.out.println("Valor Invalido! Distancia tem de ser maior que 0.");
            }
        }while(km < 0);
        miles = km/1.609;
        System.out.println("Distância em milhas: " + miles);
    }
}
