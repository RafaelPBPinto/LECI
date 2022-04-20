package Aula4;
import java.util.Scanner;

public class Ex4 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        int mes,ano,dsemana;
        int diasmes = 0;
        String smes = "";
        System.out.println("Escreva uma data:");
        do{
            System.out.print("Mes: ");
            mes = sc.nextInt();
            if(mes <= 0 || mes > 12){
                System.out.println("Mes invalido!");
            }
        }while(mes <= 0 || mes > 12);
        do{
            System.out.print("Ano: ");
            ano = sc.nextInt();
            if(ano < 1582){
                System.out.println("Ano invalido! Tem de ser maior que 1582.");
            }
        }while(ano < 1582);
        do{
            System.out.println("1 = Segunda, 2 = Terça, 3 = Quarta, 4 = Quinta, 5 = Sexta, 6 = Sábado, 7 = Domingo");
            System.out.print("Dia da semana que começa o mes: ");
            dsemana = sc.nextInt();
            if(dsemana > 7 || dsemana <= 0){
                System.out.println("Dia da semana invalido!");
            }
        }while(dsemana > 7 || dsemana <= 0);

        switch(mes){
            case 1:
                smes += "January";
                diasmes = 31;
                break;
            case 2:
                smes += "February";
                if((ano % 4 == 0) && (ano % 100 != 0) || (ano % 400 == 0)){
                    diasmes = 29;
                }else{
                    diasmes = 28;
                }
                break;
            case 3:
                smes += "March";
                diasmes = 31;
                break;
            case 4:
                smes += "April";
                diasmes = 30;
                break;
            case 5:
                smes += "May";
                diasmes = 31;
                break;
            case 6:
                smes += "June";
                diasmes = 30;
                break;
            case 7:
                smes += "July";
                diasmes = 31;
                break;
            case 8:
                smes += "August";
                diasmes = 31;
                break;
            case 9:
                smes += "September";
                diasmes = 30;
                break;
            case 10:
                smes += "October";
                diasmes = 31;
                break;
            case 11:
                smes += "November";
                diasmes = 30;
                break;
            case 12:
                smes += "December";
                diasmes = 31;
                break;
            default:
                break;
        }
        
        System.out.println();
        System.out.printf("%11s %4d\n", smes, ano);
        System.out.println("Su Mo Tu We Th Fr Sa");
        int days = 1;
        if(dsemana != 7){
            for(int i = 0; i < dsemana; i++){
                System.out.print("   ");
                days++;
            }
        }
        for(int i = 0; i < diasmes; i++){
            if(days % 7 == 0){
                System.out.printf("%2d\n", i + 1);
                days++;
            }else{
                System.out.printf("%2d ", i + 1);
                days++;
            }
        }
        System.out.println();
    }    
}
