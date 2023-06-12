//Author: Rafael Pinto, 103379, p5_09

package Ex1;

public class TeamLeader extends EmployeeDecorator {
    
    public TeamLeader(EmployeeInterface employee) {
        super(employee);
    }
    
    @Override
    public void work() {
        employee.work();
        System.out.print("TeamLeader ");
    }
    
    public void plan() {
        System.out.println("-- Plan!");
    }
}
