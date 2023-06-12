// Author: Rafael Pinto, 103379, p5_09

package PagaLeva;

/*
 * Container class
 * Represents a container for a portion
 */
public class Container {
    private ContainerType type;
    private Portion portion;

    /*
     * Container constructor
     * @param type the type of the container
     * @param portion the portion to be contained
     */
    private Container(ContainerType type, Portion portion) {
        this.type = type;
        this.portion = portion;
    }

    /*
     * Factory method
     * @param portion the portion to be contained
     * @return the container for the portion
     * 
     * The factory method is a static method that returns an instance of the class based on the parameters
     */
    public static Container create(Portion portion) {
        if (portion.getState() == State.Liquid) {
            if(portion.getTemperature() == Temperature.COLD) {
                return new Container(ContainerType.PlasticBottle, portion);
            } else if (portion.getTemperature() == Temperature.WARM) {
                return new Container(ContainerType.TermicBottle, portion);
            }
        } else if (portion.getState() == State.Solid) {
            if(portion.getTemperature() == Temperature.COLD) {
                return new Container(ContainerType.PlasticBag, portion);
            } else if (portion.getTemperature() == Temperature.WARM) {
                return new Container(ContainerType.Tupperware, portion);
            }
        }
        System.err.println("Error: Cannot create container for " + portion);
        return null;
    }

    /*
     * getter for the type of the container
     * @return the type of the container
     */
    public ContainerType getType() {
        return this.type;
    }

    /*
     * getter for the portion contained in the container
     * @return the portion contained in the container
     */
    public Portion getportion() {
        return this.portion;
    }

    /*
     * toString method
     * @return a string representation of the container
     */
    @Override
    public String toString() {
        return String.format("%s with portion = %s", this.type, this.portion);
    }
}
