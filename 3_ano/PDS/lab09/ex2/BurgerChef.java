//Author: Rafael Pinto, 103379, p5_09

package ex2;

public class BurgerChef extends Chef {

    public BurgerChef() {
        super();
        this.canCook.add("veggie burger");
        this.canCook.add("cheese burger");
        this.canCook.add("chicken burger");
    }

    @Override
    public void cook(String dish) {
        if(canCook(dish)){
            System.out.println("BurgerChef: Starting to cook " + dish + "!. Out in 19 minutes.");
        } else {
            System.out.println("BurgerChef: I can't cook that.");
            super.cook(dish);
        }
    }
}
