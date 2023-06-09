// Author: Rafael Pinto, 103379, p5_09

package EmpresaPst;

/*
 * Interface Adapter
 * Defines the methods that the Adapter class must implement
 */
public interface Adapter {
    public void addEmployee(Empregado e);
    public void deleteEmployee(int emp_num);
    public boolean isEmployee(int emp_num);
    public void listEmployees();
}
