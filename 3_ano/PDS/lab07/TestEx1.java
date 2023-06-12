import Ex1.*;

public class TestEx1 {
    public static void main(String[] args) {
        EmployeeInterface employee = new Employee("Rafael");
        Manager manager = new Manager(new Employee("Carlos"));
        TeamLeader teamLeader = new TeamLeader(new Employee("Matilde"));
        TeamMember teamMember1 = new TeamMember(new Employee("Rui"));
        TeamMember teamMember2 = new TeamMember(new Employee("Ana"));
        TeamMember teamMember3 = new TeamMember(employee);
        Manager manager2 = new Manager(teamLeader);
        Manager manager3 = new Manager(new TeamLeader(new TeamMember(new Employee("Maria"))));

        EmployeeInterface[] employees = {employee, manager, teamLeader, teamMember1, teamMember2, teamMember3, manager2, manager3};
        for (EmployeeInterface e : employees) {
            e.work();
        }
    }
}
