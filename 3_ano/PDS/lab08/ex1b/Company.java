// Author: Rafael Pinto, 103379, p5_09

import java.util.ArrayList;
import java.util.List;
import java.util.Collections;

class Company {

public static User user;
private List<Employee> emps = new ArrayList<>();

	public void admitEmployee(Person person, double salary) {
		Employee e = new Employee(person, salary);
		emps.add(e);
	}
	
	public void paySalaries(int month) {
		for (Employee e : emps) {
			e.payEmployee(e.getSalary());
		}
	}
	
	public List<Employee> employees() {
		return Collections.unmodifiableList(emps);
	}
}