package EmpresaPst;

import java.util.Vector;

// Sweets
public class Database {     // Data elements
    private Vector<Employee> employees; // Stores the employees

    public Database() {
        employees = new Vector<>();
    }

    public boolean addEmployee(Employee employee) {
        employees.add(employee);
        return true;
    }

    public void deleteEmployee(long emp_num) {
        for (Employee e : employees) {
            if (e.getEmpNum() == emp_num) {
                employees.remove(e);
                return;
            }
        }
    }

    public Employee[] getAllEmployees() {
        return employees.toArray(new Employee[employees.size()]);
    }
}
