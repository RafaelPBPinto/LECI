// Author: Rafael Pinto, 103379, p5_09

package Pastelaria;

/*
 * Cake class
 * Represents a cake object
 */
public class Cake {
    private Shape shape;
    private String cakeLayer;
    private int numCakeLayers;
    private Cream midLayerCream;
    private Cream topLayerCream;
    private Topping topping;
    private String message;

    /*
     * Cake constructor
     * Initializes the cake object
     */
    protected Cake(){
        this.shape = Shape.Round;
        this.cakeLayer = "";
        this.numCakeLayers = 0;
        this.midLayerCream = null;
        this.topLayerCream = null;
        this.topping = null;
        this.message = "";
    }

    /*
     * addLayer method adds a cake layer
     */
    public void addLayer() {
        this.numCakeLayers++;
    }

    /*
     * getShape method returns the shape of the cake
     * @return shape of the cake
     */
    public Shape getShape() {
        return this.shape;
    }

    /*
     * setShape method sets the shape of the cake
     * @param shape of the cake
     */
    public void setShape(Shape shape) {
        this.shape = shape;
    }

    /*
     * getCakeLayer method returns the cake layer
     * @return cake layer
     */
    public String getCakeLayer() {
        return this.cakeLayer;
    }

    /*
     * getNumCakeLayers method returns the number of cake layers
     * @return number of cake layers
     */
    public int getNumCakeLayers() {
        return this.numCakeLayers;
    }

    /*
     * getMidLayerCream method returns the middle layer cream
     * @return middle layer cream
     */
    public Cream getMidLayerCream() {
        return this.midLayerCream;
    }

    /*
     * getTopLayerCream method returns the top layer cream
     * @return top layer cream
     */
    public Cream getTopLayerCream() {
        return this.topLayerCream;
    }

    /*
     * getTopping method returns the topping
     * @return topping
     */
    public Topping getTopping() {
        return this.topping;
    }

    /*
     * getMessage method returns the message
     * @return message
     */
    public String getMessage() {
        return this.message;
    }

    /*
     * setMessage method sets the message
     * @param message
     */
    public void setMessage(String message) {
        this.message = message;
    }

    /*
     * setTopping method sets the topping
     * @param topping
     */
    public void setTopping(Topping topping) {
        this.topping = topping;
    }

    /*
     * setCreamLayer method sets the cream layer
     * @param cream
     */
    public void setCreamLayer(Cream cream) {
        this.midLayerCream = cream;
    }

    /*
     * setTopLayer method sets the top layer
     * @param cream
     */
    public void setTopLayer(Cream cream) {
        this.topLayerCream = cream;
    }

    /*
     * setCakeLayer method sets the cake layer
     * @param cakeLayer
     */
    public void setCakeLayer(String cakeLayer) {
        this.cakeLayer = cakeLayer;
    }

    /*
     * toString method returns a string representation of the cake object
     * @return string representation of the cake object
     */
    @Override
    public String toString(){
        String s = String.format("%s cake with %d layers", this.cakeLayer, this.numCakeLayers);
        if (this.midLayerCream != null) {
            s += String.format(" and %s cream", this.midLayerCream);
        }
        if (this.topLayerCream != null && this.topping != null) {
            s += String.format(", topped with %s cream and %s.", this.topLayerCream, this.topping);
        } else if(this.topLayerCream != null && this.topping == null){
            s += String.format(", topped with %s cream.", this.topLayerCream);
        } else if(this.topLayerCream == null && this.topping != null){
            s += String.format(", topped with %s.", this.topping);
        } else {
            s += ".";
        }
        if (!this.message.equals("")) {
            s += String.format(" Message says: %s.", this.message);
        }
        return s;
    }
}
