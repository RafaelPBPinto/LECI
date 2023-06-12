// Author: Rafael Pinto, 103379, p5_09

package Pastelaria;

/*
 * SpongeCakeBuilder class extends AbstractCakeBuilder
 * Builds a sponge cake
 */
public class SpongeCakeBuilder extends AbstractCakeBuilder {
    public SpongeCakeBuilder(){
        super();
        this.cake.setCakeLayer("Sponge");
        addCreamLayer(Cream.Red_Berries);
        addTopLayer(Cream.Whipped_Cream);
        addTopping(Topping.Fruit);
    }
}
