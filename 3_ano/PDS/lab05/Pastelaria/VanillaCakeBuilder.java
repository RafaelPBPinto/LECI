// Author: Rafael Pinto, 103379, p5_09

package Pastelaria;

/*
 * VanillaCakeBuilder class extends AbstractCakeBuilder
 * Class used to build a vanilla cake
 */
public class VanillaCakeBuilder extends AbstractCakeBuilder {
    public VanillaCakeBuilder() {
        super();
        this.cake.setCakeLayer("Vanilla");
        this.addTopping(Topping.Chocolate);
    }
} 
