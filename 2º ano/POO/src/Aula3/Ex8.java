package Aula3;
import java.util.Scanner;

public class Ex8 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        double[][] notas = new double[16][2];
        double[] notafinal = new double[16];
        for(int i = 0; i < 16; i++){
            System.out.printf("Aluno %d:\n", i + 1);
            do{
                System.out.print("Nota da componente pratica: ");
                notas[i][0] = sc.nextDouble();
                if(notas[i][0] < 0 || notas[i][0] > 20){
                    System.out.println("Valor invalido!");
                }
            }while(notas[i][0] < 0 || notas[i][0] > 20);
            do{
                System.out.print("Nota da componente teorica: ");
                notas[i][1] = sc.nextDouble();
                if(notas[i][1] < 0 || notas[i][1] > 20){
                    System.out.println("Valor invalido!");
                }
            }while(notas[i][1] < 0 || notas[i][1] > 20);
        }
        System.out.println();
        System.out.println("NotaT  NotaP  Pauta");
        for(int j = 0; j < 16; j++){
            if(notas[j][0] < 7 || notas[j][1] < 7){
                notafinal[j] = 66;
            }else{
                notafinal[j] = notas[j][0] * 0.6 + notas[j][1] * 0.4;
            }
            System.out.printf("%5.1f %6.1f %6.0f\n", notas[j][1], notas[j][0], notafinal[j]);
        }
    }
    
}
