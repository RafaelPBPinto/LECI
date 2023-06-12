// Author: Rafael Pinto, 103379, p5_09

import java.util.ArrayList;
import java.util.List;

public class Insurance {
    private List<Person> persons = new ArrayList<>();

    public void regist(Person person){
        persons.add(person);
    }

    public List<Person> getPersons() {
        return persons;
    }
}