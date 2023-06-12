// Author: Rafael Pinto, 103379, p5_09

package Pastelaria;

/*
 * CakeMaster class
 * Used in the Main class to select the cake to be built
 */
public class CakeMaster{
    private CakeBuilder cakeBuilder;
    
    /*
     * setCakeBuilder method sets the cake builder
     * @param cakeBuilder
     */
    public void setCakeBuilder(CakeBuilder cakeBuilder) {
        this.cakeBuilder = cakeBuilder;
    }

    /*
     * createCake method creates a cake
     * creates a cake with a default shape
     */
    public void createCake() {
        this.cakeBuilder.addCakeLayer();
    }

    /*
     * createCake method creates a cake
     * creates a cake with a message
     * @param message
     */
    public void createCake(String message) {
        this.cakeBuilder.addCakeLayer();
        this.cakeBuilder.addMessage(message);
    }

    /*
     * createCake method creates a cake
     * creates a cake with a specific number of layers
     * @param numCakeLayers
     */
    public void createCake(int numCakeLayers) {
        for (int i = 0; i < numCakeLayers; i++) {
            this.cakeBuilder.addCakeLayer();
        }
    }

    /*
     * createCake method creates a cake
     * creates a cake with a specific shape
     * @param shape
     */
    public void createCake(Shape shape) {
        this.cakeBuilder.addCakeLayer();
        this.cakeBuilder.setCakeShape(shape);
    }

    /*
     * createCake method creates a cake
     * creates a cake with a specific shape and a specific number of layers
     * @param shape
     * @param numCakeLayers
     */
    public void createCake(Shape shape, int numCakeLayers) {
        this.cakeBuilder.setCakeShape(shape);
        for (int i = 0; i < numCakeLayers; i++) {
            this.cakeBuilder.addCakeLayer();
        }
    }

    /*
     * createCake method creates a cake
     * creates a cake with a specific shape and a message
     * @param shape
     * @param message
     */
    public void createCake(int numCakeLayers, String message) {
        for (int i = 0; i < numCakeLayers; i++) {
            this.cakeBuilder.addCakeLayer();
        }
        this.cakeBuilder.addMessage(message);
    }

    /*
     * createCake method creates a cake
     * creates a cake with a specific shape and a message
     * @param shape
     * @param message
     */
    public void createCake(Shape shape, String message) {
        this.cakeBuilder.setCakeShape(shape);
        this.cakeBuilder.addCakeLayer();
        this.cakeBuilder.addMessage(message);
    }

    /*
     * createCake method creates a cake
     * creates a cake with a specific shape, a specific number of layers and a message
     * @param shape
     * @param numCakeLayers
     * @param message
     */
    public void createCake(Shape shape, int numCakeLayers, String message) {
        this.cakeBuilder.setCakeShape(shape);
        for (int i = 0; i < numCakeLayers; i++) {
            this.cakeBuilder.addCakeLayer();
        }
        this.cakeBuilder.addMessage(message);
    }

    /*
     * getCake method returns the cake that was built
     * @return cake
     */
    public Cake getCake() {
        return this.cakeBuilder.getCake();
    }
}
