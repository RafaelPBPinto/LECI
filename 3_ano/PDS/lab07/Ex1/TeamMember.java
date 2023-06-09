//Author: Rafael Pinto, 103379, p5_09

package Ex1;

public class TeamMember extends EmployeeDecorator{
    
    public TeamMember(EmployeeInterface employee) {
        super(employee);
    }
    
    @Override
    public void work() {
        employee.work();
        System.out.print("TeamMember ");
    }

    public void collaborate() {
        System.out.println("-- Collaborate!");
    }
}
