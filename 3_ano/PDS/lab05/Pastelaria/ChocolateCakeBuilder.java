// Author: Rafael Pinto, 103379, p5_09

package Pastelaria;

/*
 * ChocolateCakeBuilder class extends AbstractCakeBuilder
 * Builds a chocolate cake
 */
public class ChocolateCakeBuilder extends AbstractCakeBuilder {
    public ChocolateCakeBuilder(){
        super();
        this.cake.setCakeLayer("Chocolate");
        addTopLayer(Cream.Whipped_Cream);
        addTopping(Topping.Fruit);
    }
}
