package Aula5;
import java.util.Scanner;

public class Ex1 {
    public static final Scanner sc = new Scanner(System.in);

    public static Date createNewDate(){
        System.out.print("Day: ");
        int newday = sc.nextInt();
        System.out.print("Month: ");
        int newmonth = sc.nextInt();
        System.out.print("Year: ");
        int newyear = sc.nextInt();
        Date data = new Date(newday, newmonth, newyear);
        return data;
    }

    public static void main(String[] args){
        int option;
        Date data = new Date(16, 10, 2002); // default date
        do{
            System.out.println("Date operations:");
            System.out.println("1 -create new date");
            System.out.println("2 -show current date");
            System.out.println("3 -increment date");
            System.out.println("4 -decrement date");
            System.out.println("0 -exit");
            option = sc.nextInt();
            switch(option){
                case 1:
                    data = createNewDate();
                    break;
                case 2:
                    System.out.println(data.toString());
                    break;
                case 3:
                    data.increment();
                    System.out.println(data.toString());
                    break;
                case 4:
                    data.decrement();
                    System.out.println(data.toString());
                    break;
                case 0:
                    System.out.println("Goodbye!");
                    break;
                default:
                    System.out.println("Invalid operation!");
                    break;
            }
        }while(option != 0);
    }    
}
