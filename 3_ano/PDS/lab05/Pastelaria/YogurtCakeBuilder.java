// Author: Rafael Pinto, 103379, p5_09

package Pastelaria;

/*
 * YogurtCakeBuilder class extends AbstractCakeBuilder
 * Builds a yogurt cake
 */
public class YogurtCakeBuilder extends  AbstractCakeBuilder {
    public YogurtCakeBuilder(){
        super();
        this.cake.setCakeLayer("Yogurt");
        addCreamLayer(Cream.Vanilla);
        addTopLayer(Cream.Red_Berries);
        addTopping(Topping.Chocolate);
    }
}
