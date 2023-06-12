// Author: Rafael Pinto, 103379, p5_09

package Movies;

import java.time.LocalDate;

/*
 * Person class
 * Represents a person object
 */
public class Person {
    private String name;
    private LocalDate birthDate;
    private int age;

    /*
     * Person constructor
     * Initializes the person object
     */
    public Person(String name, LocalDate birthDate) {
        this.name = name;
        this.birthDate = birthDate;
        this.age = calculateAge(birthDate);
    }

    /*
     * calculateAge method calculates the age of the person
     * @param birthday the birthday of the person
     * @return the age of the person
     */
    private int calculateAge(LocalDate birthday) {
        LocalDate today = LocalDate.now();
        if((birthday.getMonthValue() > today.getMonthValue()) || 
            (birthday.getMonthValue() == today.getMonthValue() && birthday.getDayOfMonth() > today.getDayOfMonth())) {
            return today.getYear() - birthday.getYear() - 1;
        } else {
            return today.getYear() - birthday.getYear();
        }
    }

    /*
     * getName method returns the name of the person
     * @return name of the person
     */
    public String getName() {
        return this.name;
    }

    /*
     * getBirthDate method returns the birth date of the person
     * @return birth date of the person
     */
    public LocalDate getBirthDate() {
        return this.birthDate;
    }

    /*
     * getAge method returns the age of the person
     * @return age of the person
     */
    public int getAge() {
        return this.age;
    }

    /*
     * toString method returns a string representation of the person object
     * @return string representation of the person object
     */
    @Override
    public String toString() {
        return this.name + " "+ this.birthDate + " (" + this.age + " years old)";
    }
}
