//Author: Rafael Pinto, 103379, p5_09

package Ex1;

import java.util.Date;

public abstract class EmployeeDecorator implements EmployeeInterface {
    protected EmployeeInterface employee;
    
    public EmployeeDecorator(EmployeeInterface employee) {
        this.employee = employee;
    }
    
    public void start(Date date) {
        employee.start(date);
    }
    
    public void terminate(Date date) {
        employee.terminate(date);
    }
    
    public void work() {
        employee.work();
    }
}
