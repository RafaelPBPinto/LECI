//Author: Rafael Pinto, 103379, p5_09

package ex2;
import java.util.List;
import java.util.ArrayList;

public class TestEx2 {
    public static void main(String[] args) {
        List<String> dishes = new ArrayList<>();
        dishes.add("veggie burger");
        dishes.add("Pasta Carbonara");
        dishes.add("PLAIN PIZZA, no toppings");
        dishes.add("sushi nigiri and sashimi");
        dishes.add("salad with tuna");
        dishes.add("strawberry ice cream and waffles dessert");

        Chef chef =
            new SushiChef().setSuccessor(
                new PastaChef().setSuccessor(
                    new BurgerChef().setSuccessor(
                        new PizzaChef().setSuccessor(
                                    new DessertChef()))));
        
        for(String dish: dishes){
            System.out.println("Can I please get a" + dish + '?');
            chef.cook(dish);
            System.out.println();
        }
    }
}
