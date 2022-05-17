package Aula3;
import java.util.Scanner;

public class Ex7 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        int guess;
        String again;
        do{
            double randomdouble = Math.random() * 100;
            int randomnumber = (int)randomdouble + 1;           // numero aleatorio entre 1 e 100;
            int attempts = 0;
            do{
                do{
                    System.out.print("Adivinhe um numero de 1 a 100: ");
                    guess = sc.nextInt();
                    if(guess <= 0 || guess > 100){
                        System.out.println("Valor invalido!");
                    }
                }while(guess <= 0 || guess > 100);
                if(guess < randomnumber){
                    System.out.println("Tentativa demasiado baixa.");
                }else if(guess > randomnumber){
                    System.out.println("Tentativa demasiado alta.");
                }else{
                    System.out.println("Acertou!");
                }
                attempts++;
            }while(guess != randomnumber);
            System.out.println("Tentativas feitas: " + attempts);
            System.out.println("Pretende continuar? Prima (S)im");
            again = sc.next();
        }while(again.charAt(0) == 's' || again.charAt(0) == 'S' || again == "sim" || again == "Sim"); 
    }
}
