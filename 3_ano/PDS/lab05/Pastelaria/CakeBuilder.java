// Author: Rafael Pinto, 103379, p5_09

package Pastelaria;

/*
 * CakeBuilder interface
 * Defines the methods for building a cake
 */
public interface CakeBuilder {
    public void setCakeShape(Shape shape);
    public void addCakeLayer();
    public void addCreamLayer(Cream cream);
    public void addTopLayer(Cream cream);
    public void addTopping(Topping topping);
    public void addMessage(String m);
    public Cake getCake();
    public void createCake();
}
