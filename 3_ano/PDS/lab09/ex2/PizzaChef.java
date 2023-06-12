//Author: Rafael Pinto, 103379, p5_09

package ex2;

public class PizzaChef extends Chef {

    public PizzaChef() {
        super();
        this.canCook.add("PLAIN PIZZA, no toppings");
        this.canCook.add("PEPPERONI PIZZA");
        this.canCook.add("CHEESE PIZZA");
    }

    @Override
    public void cook(String dish) {
        if(canCook(dish)){
            System.out.println("PizzaChef: Starting to cook " + dish + "!. Out in 7 minutes.");
        } else {
            System.out.println("PizzaChef: I can't cook that.");
            super.cook(dish);
        }
    }
}
