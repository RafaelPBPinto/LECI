//Author: Rafael Pinto, 103379, p5_09

package ex2;

public class SushiChef extends Chef {

    public SushiChef() {
        super();
        this.canCook.add("sushi nigiri and sashimi");
        this.canCook.add("maki rolls");
        this.canCook.add("temaki rolls");
    }

    @Override
    public void cook(String dish) {
        if(canCook(dish)){
            System.out.println("SushiChef: Starting to cook " + dish + "!. Out in 14 minutes.");
        } else {
            System.out.println("SushiChef: I can't cook that.");
            super.cook(dish);
        }
    }
}
