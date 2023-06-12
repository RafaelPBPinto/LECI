//Author: Rafael Pinto, 103379, p5_09

package Ex3;

public class Conserva extends Entity {
    private String name;
    private double weight;

    public Conserva(String name, double weight) {
        this.name = name;
        this.weight = weight;
    }

    protected double getWeight() {
        return weight;
    }

    public void draw() {
        System.out.printf("%sConserva '%s' - Weight: %.1f\n", indent.toString(), name, weight);
    }
}
