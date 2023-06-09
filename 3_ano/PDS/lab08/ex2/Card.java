// Author: Rafael Pinto, 103379, p5_09

public class Card {
    private Employee employee;
    private int ID;

    private static int IDcounter = 0;

    public Card(Employee employee) {
        this.employee = employee;
        this.ID = IDcounter;
        IDcounter++;
    }

    @Override
    public String toString() {
        return employee.getName() + " (" + ID + ")";
    }
}
