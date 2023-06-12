//Author: Rafael Pinto, 103379, p5_09

package Ex3;

public class Bebida extends Entity {
    private String name;
    private double weight;

    public Bebida(String name, double weight) {
        this.name = name;
        this.weight = weight;
    }

    protected double getWeight() {
        return weight;
    }

    public void draw() {
        System.out.printf("%sBebida '%s' - Weight: %.1f\n", indent.toString(), name, weight);
    }
}
