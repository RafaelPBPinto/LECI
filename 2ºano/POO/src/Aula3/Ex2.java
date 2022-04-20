package Aula3;
import java.util.Scanner;

public class Ex2 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        int N;
        do{
            System.out.print("Introduza um numero inteiro positivo: ");
            N = sc.nextInt();
            if(N <= 0){
                System.out.println("Valor Invalido! N > 0.");
            }
        }while(N <= 0);

        for(int i = N; i >= 0; i--){
            System.out.println(i);
        }
    }
}
