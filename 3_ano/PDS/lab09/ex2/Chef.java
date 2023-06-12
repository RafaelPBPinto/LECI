//Author: Rafael Pinto, 103379, p5_09

package ex2;
import java.util.List;
import java.util.ArrayList;

public abstract class Chef {
    private Chef successor = null;
    protected List<String> canCook = new ArrayList<String>();

    public void cook(String dish) {
        if (successor != null) {
            successor.cook(dish);
        } else {
            System.out.println("We're sorry but that request can't be satisfied by our service!");
        }
    }

    protected boolean canCook(String dish) {
        return canCook.contains(dish);
    }

    public Chef setSuccessor(Chef successor) {
        this.successor = successor;
        return this;
    }
}
