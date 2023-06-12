// Author: Rafael Pinto, 103379, p5_09

import java.util.List;
import java.util.ArrayList;


public class Parking {
    private List<Person> allowed = new ArrayList<>();
    
    public void allow(Person person) {
        allowed.add(person);
    }

    public List<Person> getAllowed() {
        return allowed;
    }
}
