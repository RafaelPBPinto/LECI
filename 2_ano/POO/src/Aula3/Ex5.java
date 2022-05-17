package Aula3;
import java.util.Scanner;

public class Ex5 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        double montante, taxa;
        double[] vmensal = new double[13];
        do{
            System.out.print("Montante (em euros): ");
            montante = sc.nextDouble();
            if(montante < 0 || montante % 1000 != 0){
                System.out.println("Valor invalido! Montante tem de ser maior que 0 e multiplo de 1000.");
            }
        }while(montante < 0 || (montante % 1000 != 0));
        do{
            System.out.print("Taxa: ");
            taxa = sc.nextDouble();
            if(taxa < 0 && taxa > 5){
                System.out.println("Valor invalido! Taxa entre 0% e 5%.");
            }
        }while(taxa < 0 || taxa > 5);

        vmensal[0] = montante;
        for(int i = 1; i <= 12; i++){
            vmensal[i] = vmensal[i - 1] + vmensal[i - 1] * (taxa / 100);
            if(i == 1){
                System.out.printf("Montante ao fim de %d mes e de %.2f€.\n", i, vmensal[i]);
            }else{
                System.out.printf("Montante ao fim de %d meses e de %.2f€.\n", i, vmensal[i]);
            }
        }
    }
}
