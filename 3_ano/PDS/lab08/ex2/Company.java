// Author: Rafael Pinto, 103379, p5_09

import java.util.ArrayList;
import java.util.List;
import java.util.Collections;

class Company {
	public static User user;
	private List<Employee> emps = new ArrayList<>();
	private List<Card> cards = new ArrayList<>();
	private Parking parking = new Parking();
	private Insurance insurance = new Insurance();
	private SocialSecurity socialSecurity = new SocialSecurity();

	public void admitEmployee(Person person, double salary) {
		Employee e = new Employee(person, salary);
		emps.add(e);
		cards.add(new Card(e));
		parking.allow(person);
		insurance.regist(person);
		socialSecurity.regist(person);
	}
	
	public void paySalaries(int month) {
		for (Employee e : emps) {
			e.payEmployee(e.getSalary());
		}
	}
	
	public List<Employee> employees() {
		return Collections.unmodifiableList(emps);
	}

	public List<Card> getCards() {
		return cards;
	}
}