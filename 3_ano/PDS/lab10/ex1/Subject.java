//Author: Rafael Pinto, 103379, p5_09

package ex1;

import java.util.List;
import java.util.ArrayList;

public abstract class Subject {
    protected List<Observer> observers = new ArrayList<Observer>();

    public void attach(Observer obs) {
        this.observers.add(obs);
    }

    protected abstract void notifyObservers();
}
