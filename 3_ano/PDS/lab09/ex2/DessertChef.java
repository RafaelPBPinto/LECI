//Author: Rafael Pinto, 103379, p5_09

package ex2;

public class DessertChef extends Chef {

    public DessertChef(){
        super();
        this.canCook.add("strawberry ice cream and waffles dessert");
        this.canCook.add("chocolate ice cream dessert");
        this.canCook.add("vanilla ice cream dessert");
    }

    @Override
    public void cook(String dish) {
        if(canCook(dish)){
            System.out.println("DessertChef: Starting to cook " + dish + "!. Out in 17 minutes.");
        } else {
            System.out.println("DessertChef: I can't cook that.");
            super.cook(dish);
        }
    }
}
