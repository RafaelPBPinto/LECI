// Author: Rafael Pinto, 103379, p5_09

package Pastelaria;

/*
 * AbstractCakeBuilder class 
 * Abstract class that implements the CakeBuilder interface
 */
public abstract class AbstractCakeBuilder implements CakeBuilder {
    public Cake cake;
    
    /*
     * AbstractCakeBuilder constructor
     * Creates a new cake
     */
    protected AbstractCakeBuilder() {
        createCake();
    }

    /*
     * setCakeShape method
     * Sets the shape of the cake
     */
    public void setCakeShape(Shape shape) {
        this.cake.setShape(shape);
    }

    /*
     * addCakeLayer method
     * Adds a cake layer
     */
    public void addCakeLayer() {
        this.cake.addLayer();
    }

    /*
     * addCreamLayer method
     * Adds a cream layer
     */
    public void addCreamLayer(Cream cream) {
        this.cake.setCreamLayer(cream);
    }

    /*
     * addTopLayer method
     * Adds a top layer
     */
    public void addTopLayer(Cream cream) {
        this.cake.setTopLayer(cream);
    }

    /*
     * addTopping method
     * Adds a topping
     */
    public void addTopping(Topping topping) {
        this.cake.setTopping(topping);
    }

    /*
     * addMessage method
     * Adds a message
     */
    public void addMessage(String m) {
        this.cake.setMessage(m);
    }

    /*
     * getCake method
     * Returns the cake
     * @return cake
     */
    public Cake getCake() {
        return this.cake;
    }

    /*
     * createCake method
     * Creates a new cake
     */
    public void createCake() {
        this.cake = new Cake();
    }
}
