//Author: Rafael Pinto, 103379, p5_09

package ex2;

public class PastaChef extends Chef {

    public PastaChef() {
        super();
        this.canCook.add("Pasta Carbonara");
        this.canCook.add("Pasta Bolognese");
    }

    @Override
    public void cook(String dish) {
        if(canCook(dish)){
            System.out.println("PastaChef: Starting to cook " + dish + "!. Out in 14 minutes.");
        } else {
            System.out.println("PastaChef: I can't cook that.");
            super.cook(dish);
        }
    }
}
