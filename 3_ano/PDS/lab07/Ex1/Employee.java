//Author: Rafael Pinto, 103379, p5_09

package Ex1;
import java.util.Date;

public class Employee implements EmployeeInterface {
    private String name;
    private Date startDate;
    private Date terminateDate;

    public Employee(String name) {
        this.name = name;
    }

    public void start(Date date) {
        startDate = date;
    }

    public void terminate(Date date) {
        terminateDate = date;
    }

    public String startDate(){
        return startDate.toString();
    }

    public String terminateDate(){
        return terminateDate.toString();
    }

    @Override
    public void work() {
        System.out.print("\nEmployee " + name + " is a ");
    }
}
