// Author: Rafael Pinto, 103379, p5_09

package PagaLeva;

import java.util.Random;

/*
 * PortionFactory class
 * Creates portions of food
 * Implements the Portion interface
 */
public class PortionFactory implements Portion {
    private Temperature temperature;
    private State state;
    private Food food;
    private FruitName fruitName = null;

    /*
     * PortionFactory constructor when the food is not a fruit juice
     * @param temperature the temperature of the portion
     * @param state the state of the portion
     * @param food the food of the portion
     */
    private PortionFactory(Temperature temperature, State state, Food food) {
        this.temperature = temperature;
        this.state = state;
        this.food = food;
    }

    /*
     * PortionFactory constructor for fruit juices
     * @param temperature the temperature of the portion
     * @param state the state of the portion
     * @param food the food of the portion
     * @param fruitName the fruit of the portion
     */
    private PortionFactory(Temperature temperature, State state, Food food, FruitName fruitName) {
        this.temperature = temperature;
        this.state = state;
        this.food = food;
        this.fruitName = fruitName;
    }

    /*
     * Factory method
     * @param type the type of the portion
     * @param temperature the temperature of the portion
     * @return the portion
     * The factory method is a static method that returns an instance of the class based on the parameters
     */
    public static PortionFactory create(String type, Temperature temperature) {
        State state = null;
        if (type == "Beverage") {
            state = State.Liquid;
        } else if (type == "Meat") {
            state = State.Solid;
        }
        Food food = stringToFood(type, temperature);
        if (food == Food.FruitJuice) {
            FruitName fruitName = null;
            //random fruit
            Random rand = new Random();
            int n = rand.nextInt(4);
            if (n == 0) {
                fruitName = FruitName.Apple;
            } else if (n == 1) {
                fruitName = FruitName.Banana;
            } else if (n == 2) {
                fruitName = FruitName.Orange;
            } else if (n == 3) {
                fruitName = FruitName.Strawberry;
            }
            return new PortionFactory(temperature, state, food, fruitName);
        }
        if(state == null || food == null){
            System.err.println("Error: Cannot create portion for " + type + " " + temperature);
            return null;
        }
        return new PortionFactory(temperature, state, food);
    }

    /*
     * Converts a string to a Food enum
     * @param type the type of the portion
     * @param temperature the temperature of the portion
     * @return the food
     */
    private static Food stringToFood(String type, Temperature temperature){
        if (type == "Beverage") {
            if (temperature == Temperature.COLD) {
                return Food.FruitJuice;
            } else if (temperature == Temperature.WARM) {
                return Food.Milk;
            }
        } else if (type == "Meat") {
            if (temperature == Temperature.COLD) {
                return Food.Tuna;
            } else if (temperature == Temperature.WARM) {
                return Food.Pork;
            }
        }
        return null;
    }
    
    /*
     * Gets the temperature of the portion
     * @return the temperature
     */
    public Temperature getTemperature() {
        return this.temperature;
    }

    /*
     * Gets the state of the portion
     * @return the state
     */
    public State getState() {
        return this.state;
    }

    /*
     * Gets the food of the portion
     * @return the food
     */
    public Food getFood() {
        return this.food;
    }

    /*
     * Gets the fruit name of the portion
     * @return the fruit name
     */
    public FruitName getFruitName() {
        return this.fruitName;
    }

    /*
     * toString method
     * @return the string representation of the portion
     */
    @Override
    public String toString() {
        if (this.food == Food.FruitJuice){
            return String.format("%s: %s, Temperature %s, State %s", this.food, this.fruitName, this.temperature, this.state);
        }
        return String.format("%s: Temperature %s, State %s", this.food, this.temperature, this.state);
    }
}
