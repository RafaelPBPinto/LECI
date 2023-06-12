//Author: Rafael Pinto, 103379, p5_09

package Ex1;

public class Manager extends EmployeeDecorator {
    
    public Manager(EmployeeInterface employee) {
        super(employee);
    }
    
    @Override
    public void work() {
        employee.work();
        System.out.print("Manager ");
    }
    
    public void manage() {
        System.out.println("-- Manage!");
    }
}
