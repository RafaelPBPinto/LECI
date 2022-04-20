package Aula3;
import java.util.Scanner;

public class Ex3 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        int n;
        int divisores = 0;
        do{
            System.out.print("Introduza um numero inteiro positivo: ");
            n = sc.nextInt();
            if(n <= 0){
                System.out.println("Valor invalido!");
            }
        }while(n <= 0);

        for(int i = 1; i <= n; i++){
            if(n % i == 0){
                divisores++;
            }
        }
        if(divisores == 2){
            System.out.printf("%d e numero primo!\n", n);
        }else{
            System.out.printf("%d nao e numero primo. Tem %d divisores.\n", n, divisores);
        }
    }
}
