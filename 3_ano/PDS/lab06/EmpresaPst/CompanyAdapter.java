// Author: Rafael Pinto, 103379, p5_09

package EmpresaPst;

/*
 * Class CompanyAdapter
 * Implements the Adapter interface
 */
public class CompanyAdapter implements Adapter {
    private Database legacyDatabase;
    private Registos registos;

    /*
     * Constructor
     * Receives the legacy database and the new database
     * Merges the two databases
     * @param legacyDatabase the legacy database
     * @param legacyRegistos the legacy registos database
     */
    public CompanyAdapter(Database legacyDatabase, Registos legacyRegistos) {
        this.legacyDatabase = legacyDatabase;
        this.registos = legacyRegistos;
        mergeDatabases(legacyDatabase);
    }

    /*
     * Method mergeDatabases
     * Merges the legacy database with the registos database
     * @param legacyDatabase the legacy database
     */
    private void mergeDatabases(Database legacyDatabase){
        for (Employee e : legacyDatabase.getAllEmployees()) {
            registos.insere(new Empregado(e.getName(), "", (int)e.getEmpNum(), e.getSalary()));
        }
    }

    /*
     * Method getLegacyDatabase
     * @return the legacy database
     */
    public Employee[] getLegacyDatabase(){
        return legacyDatabase.getAllEmployees();
    }

    /*
     * Method getRegistos
     * @return the registos database
     */
    public void addEmployee(Empregado e) {
        if (!isEmployee(e.codigo())) {
            registos.insere(e);
        } else {
            System.out.println("Employee already exists");
        }
    }

    /*
     * Method deleteEmployee
     * Deletes an employee from the registos database
     * @param emp_num the employee number
     */
    public void deleteEmployee(int emp_num) {
        if (isEmployee(emp_num)) {
            registos.remove(emp_num);
        } else {
            System.out.println("Employee not found");
        }
    }

    /*
     * Method isEmployee
     * Checks if an employee exists in the registos database
     * @param emp_num the employee number
     * @return true if the employee exists, false otherwise
     */
    public boolean isEmployee(int emp_num) {
        return registos.isEmpregado(emp_num);
    }

    /*
     * Method listEmployees
     * Lists all the employees in the registos database
     */
    public void listEmployees() {
        System.out.println("Employees:");
        for (Empregado e : registos.listaDeEmpregados()) {
            System.out.printf("\nName: %s %s\nEmployee Number: %d\nSalary:%.2f\n", e.nome(), e.apelido(), e.codigo(), e.salario());
        }
    }

}
