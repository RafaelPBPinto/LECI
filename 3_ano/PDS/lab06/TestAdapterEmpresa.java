// Author: Rafael Pinto, 103379, p5_09

import EmpresaPst.*;

import java.util.Scanner;

/*
 * Class TestAdapterEmpresa
 * Used to test exercise 1.b
 */
public class TestAdapterEmpresa {
    public static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        Database dataBase = createLegacyDatabase();
        Registos registos = createLegacyRegistos();
        Adapter adapter = new CompanyAdapter(dataBase, registos);

        int command = -1;
        
        while(command != 0){
            printMenu();
            System.out.print("Select an option: ");
            command = sc.nextInt();
            sc.nextLine();
            switch(command){
                case 1:
                    addNewEmployee(adapter);
                    break;
                case 2:
                    deleteEmployee(adapter);
                    break;
                case 3:
                    checkEmployee(adapter);
                    break;
                case 4:
                    adapter.listEmployees();
                    break;
                case 0:
                    System.out.println("Exiting...");
                    break;
                default:
                    System.out.println("Invalid option");
                    break;
            }
        }

        
    }

    /*
     * Method createLegacyDatabase
     * Creates a Database object with some employees
     * @return Database object
     */
    public static Database createLegacyDatabase(){
        Database dataBase = new Database();
        dataBase.addEmployee(new Employee("João", 123, 1000));
        dataBase.addEmployee(new Employee("Maria", 456, 2000));
        dataBase.addEmployee(new Employee("José", 789, 3000));
        return dataBase;
    }

    /*
     * Method createLegacyRegistos
     * Creates a Registos object with some employees
     * @return Registos object
     */
    public static Registos createLegacyRegistos(){
        Registos registos = new Registos();
        registos.insere(new Empregado("Guilherme", "Pinto", 12, 1000));
        registos.insere(new Empregado("Carlos", "Silva", 34, 2000));
        registos.insere(new Empregado("Ana", "Santos", 56, 3000));
        registos.insere(new Empregado("João", "Pereira", 78, 2000));
        registos.insere(new Empregado("Marco", "Fernandes", 90, 1000));
        return registos;
    }

    /*
     * Method printMenu
     * Prints the menu
     */
    public static void printMenu(){
        System.out.printf("\nMenu:\n");
        System.out.println("1 - Add Employee");
        System.out.println("2 - Delete Employee");
        System.out.println("3 - Check if Employee exists");
        System.out.println("4 - List Employees");
        System.out.println("0 - Exit");
    }

    /*
     * Method addNewEmployee
     * Adds a new employee to the database
     * @param adapter Adapter object
     */
    public static void addNewEmployee(Adapter adapter){
        System.out.print("First Name: ");
        String firstname = sc.nextLine();
        System.out.print("Last Name: ");
        String lastName = sc.nextLine();
        System.out.print("Employee Number: ");
        int code = sc.nextInt();
        System.out.print("Salary: ");
        double salary = sc.nextDouble();
        Empregado e = new Empregado(firstname, lastName, code, salary);
        adapter.addEmployee(e);
    }

    /*
     * Method deleteEmployee
     * Deletes an employee from the database
     * @param adapter Adapter object
     */
    public static void deleteEmployee(Adapter adapter){
        System.out.print("Employee Number: ");
        int code = sc.nextInt();
        adapter.deleteEmployee(code);
    }

    /*
     * Method checkEmployee
     * Checks if an employee exists in the database
     * @param adapter Adapter object
     */
    public static void checkEmployee(Adapter adapter){
        System.out.print("Code: ");
        int code = sc.nextInt();
        if(adapter.isEmployee(code)){
            System.out.println("Employee exists");
        } else {
            System.out.println("Employee does not exist");
        }
    }
}
