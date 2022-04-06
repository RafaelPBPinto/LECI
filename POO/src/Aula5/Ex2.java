package Aula5;
import java.util.Scanner;

public class Ex2 {
    public static final Scanner sc = new Scanner(System.in);

    public static Calendar createNewCalendar(){
        System.out.println("1 = Sunday, 2 = Monday, 3 = Tuesday, 4 = Wednesday, 5 = Thursday, 6 = Friday, 7 = Saturday");
        System.out.print("First weekday of the year: ");
        int newweek = sc.nextInt();
        System.out.print("Year: ");
        int newyear = sc.nextInt();
        Calendar calendario = new Calendar(newweek, newyear);
        return calendario;
    }
    
    public static void main(String[] args){
        int option;
        Calendar calendario = new Calendar(6, 2022); // default date
        do{
            System.out.println("Calendar operations");
            System.out.println("1 -create new calendar");
            System.out.println("2 -print calendar month");
            System.out.println("3 -print calendar");
            System.out.println("0 -exit");
            option = sc.nextInt();
            switch(option){
                case 1:
                    calendario = createNewCalendar();
                    break;
                case 2:
                    System.out.print("Month: ");
                    int month = sc.nextInt();
                    calendario.printMonth(month);
                    break;
                case 3:
                    System.out.print(calendario.toString());
                    break;
                case 0:
                    System.out.println("Goodbye!");
                    break;
                default:
                    System.out.println("Invalid operation!");
                    break;
            }
            System.out.println();
        }while(option != 0); 
    }
}
