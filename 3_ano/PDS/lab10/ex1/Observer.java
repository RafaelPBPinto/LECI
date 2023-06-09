//Author: Rafael Pinto, 103379, p5_09

package ex1;

import java.util.List;
import java.util.ArrayList;

public abstract class Observer {
    protected List<Subject> subject = new ArrayList<Subject>();

    public abstract void update();
}
