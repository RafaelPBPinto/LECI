// Author: Rafael Pinto, 103379, p5_09

package Pastelaria;

/*
 * OrangeCakeBuilder class extends AbstractCakeBuilder
 * Class used to build an orange cake
 */
public class OrangeCakeBuilder extends AbstractCakeBuilder {
    public OrangeCakeBuilder() {
        super();   
        this.cake.setCakeLayer("Orange");
        this.cake.setCreamLayer(Cream.Chocolate);
        this.cake.setTopping(Topping.Chocolate);
    }
}
