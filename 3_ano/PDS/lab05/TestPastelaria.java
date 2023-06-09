// Author: Rafael Pinto, 103379, p5_09

import Pastelaria.*;

/*
 * Client class
 * Main class for testing the CakeBuilder pattern
 */
public class TestPastelaria {
    public static void main(String[] args) {
        CakeMaster cakeMaster = new CakeMaster();

        CakeBuilder chocolate = new ChocolateCakeBuilder();
        cakeMaster.setCakeBuilder(chocolate);
        cakeMaster.createCake("Congratulations");               // 1 cake layer
        Cake cake = cakeMaster.getCake();
        System.out.println("Your cake is ready: " + cake);

        CakeBuilder sponge = new SpongeCakeBuilder();
        cakeMaster.setCakeBuilder(sponge);
        cakeMaster.createCake(Shape.Square, 2, "Well done");    // squared, 2 layers
        cake = cakeMaster.getCake();
        System.out.println("Your cake is ready: " + cake);

        CakeBuilder yogurt = new YogurtCakeBuilder();
        cakeMaster.setCakeBuilder(yogurt);
        cakeMaster.createCake(3, "The best");                   // 3 cake layers 
        cake = cakeMaster.getCake();
        System.out.println("Your cake is ready: " + cake);

        // other examples of CakeBuilder
        CakeBuilder orange = new OrangeCakeBuilder();
        cakeMaster.setCakeBuilder(orange);
        cakeMaster.createCake(Shape.Rectangle, 3);    // rectangular, 3 layers
        cake = cakeMaster.getCake();
        System.out.println("Your cake is ready: " + cake);

        CakeBuilder vanilla = new VanillaCakeBuilder();
        cakeMaster.setCakeBuilder(vanilla);
        cakeMaster.createCake();    //1 layer
        cake = cakeMaster.getCake();
        System.out.println("Your cake is ready: " + cake);
    }
}
