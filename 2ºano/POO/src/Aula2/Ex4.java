package Aula2;
import java.util.Scanner;

public class Ex4 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        double montante, taxa;
        do{
            System.out.print("Montante (em euros): ");
            montante = sc.nextDouble();
            if(montante < 0){
                System.out.println("Valor Invalido! Montante tem de ser maior que 0.");
            }
        }while(montante < 0);
        do{
            System.out.print("Taxa de juro mensal: ");
            taxa = sc.nextDouble();
            if(0>taxa && taxa<100){
                System.out.println("Valor inválida! Introduza um valor de taxa entre 0 e 100.");
            }
        }while(0>taxa && taxa<100);
        double valorfinal = montante;
        for(int i = 0; i < 3; i++){
            valorfinal += valorfinal * (taxa/100);
        }
        System.out.println("Para um investimento de " + montante + "€ e uma taxa de " + taxa + "% o montante ao fim de 3 meses será de " + valorfinal + "€.");
    }
}
