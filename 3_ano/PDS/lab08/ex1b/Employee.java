// Author: Rafael Pinto, 103379, p5_09

class Employee {
	private Person person;
	private double salary;
	
	public Employee(Person p, double s) {
		person = p;
		salary = s;
	}

	public String getName() {
		return person.getName();
	}

	public double getSalary() {
		return salary;
	}

	public void payEmployee(double amount){
		person.getBankAccount().deposit(amount);
	}
}