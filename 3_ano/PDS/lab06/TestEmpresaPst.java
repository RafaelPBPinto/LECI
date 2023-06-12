// Author: Rafael Pinto, 103379, p5_09

import EmpresaPst.*;

/*
 * Class TestEmpresaPst
 * USed to test the exercise 1.a
 */
public class TestEmpresaPst {
    public static void main(String[] args) {
        // Test Database
        System.out.println("--- Test Database ---");
        Database db = new Database();
        Employee e1 = new Employee("Joao", 1, 1000);
        Employee e2 = new Employee("Maria", 2, 1234);
        Employee e3 = new Employee("Jose", 3, 5678);
        
        db.addEmployee(e1);
        db.addEmployee(e2);
        db.addEmployee(e3);
        
        System.out.println("Employees:");
        for (Employee e : db.getAllEmployees()) {
            System.out.println(e.getName());
        }
        System.out.println();

        System.out.println("Removing Maria");
        db.deleteEmployee(2);
        System.out.println("Employees:");
        for (Employee e : db.getAllEmployees()) {
            System.out.println(e.getName());
        }

        // Test Registos
        System.out.println("--- Test Registos ---");
        Registos r = new Registos();
        Empregado e4 = new Empregado("Joao", "Silva", 1, 1000);
        Empregado e5 = new Empregado("Maria", "Silva", 2, 1234);
        Empregado e6 = new Empregado("Jose", "Silva", 3, 5678);

        r.insere(e4);
        r.insere(e5);
        r.insere(e6);

        System.out.println("Empregados:");
        for (Empregado e : r.listaDeEmpregados()) {
            System.out.println(e.nome());
        }
        System.out.println();

        System.out.println("Removing Joao");
        r.remove(1);
        System.out.println("Empregados:");
        for (Empregado e : r.listaDeEmpregados()) {
            System.out.println(e.nome());
        }
    }
}
