package Aula3;
import java.util.Scanner;

public class Ex4 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        int maxsize = 100;
        double[] num = new double[maxsize];         // maxsize depois é incrementado para que o programa termine quando um valor igual ao primeiro seja introduzido
        int count = 0;
        double media = 0;

        System.out.print("num[" + count + "]: ");
        num[count] = sc.nextDouble();               // primeiro numero fora do loop para evitar erros na comparação do while
        count++;
        maxsize++;
        double max = num[0];
        double min = num[0];
        do{
            System.out.print("num[" + count + "]: ");
            num[count] = sc.nextDouble();
            if(num[count] > max){
                max = num[count];
                count++;
                maxsize++;
            }else if(num[count] < min){
                min = num[count];
                count++;
                maxsize++;
            }else{
                count++;
                maxsize++;
            }
        }while(num[0] != num[count - 1]);
        count--;                            //ultimo numero não conta pois é o numero para terminar o programa

        for(int i = 0; i < count; i++){
            media += num[i];
        }
        media = media / count;
        System.out.println("Max: " + max);
        System.out.println("Min: " + min);
        System.out.printf("Media: %.2f\n", media);
        System.out.println("Total de numeros lidos: " + count);

    }
}
