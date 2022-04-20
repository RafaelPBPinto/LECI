package Aula3;
import java.util.Scanner;

public class Ex6 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        int mes, ano, dias;
        do{
            System.out.print("mes: ");
            mes = sc.nextInt();
            if(mes <= 0 || mes > 12){
                System.out.println("Valor invalido!");
            }
        }while(mes <= 0 || mes > 12);
        do{
            System.out.print("ano: ");
            ano = sc.nextInt();
            if(ano <= 1582 || ano > 2022){
                System.out.println("Valor invalido!");
            }
        }while(ano <= 0 || ano > 2022);
        switch(mes){
            case 4:
            case 6:
            case 9:
            case 11:
                dias = 30;
                break;
            case 2:
                if((ano % 4 == 0) && (ano % 100 != 0) || (ano % 400 == 0)){
                    dias = 29;
                }else{
                    dias = 28;
                }
                break;
            default:
                dias = 31;
                break;
        }
        System.out.printf("O mes %d do ano %d tem %d.\n", mes, ano, dias);
    }
}
