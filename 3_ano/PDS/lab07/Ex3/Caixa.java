//Author: Rafael Pinto, 103379, p5_09

package Ex3;

import java.util.ArrayList;
import java.util.List;

public class Caixa extends Entity {
    private String name;
    private double weight;
    private double total;
    private List<Entity> children = new ArrayList<Entity>();

    public Caixa(String name, double weight) {
        this.name = name;
        this.weight = weight;
        this.total = weight;
    }

    protected double getWeight() {
        return total;
    }

    public void add(Entity c) {
        children.add(c);
        total += c.getWeight();
    }

    private void updateTotal() {
        total = weight;
        for (int i = 0; i < children.size(); i++) {
            total += children.get(i).getWeight();
        }
    }

    public void draw() {
        updateTotal();
        System.out.printf("%s* Caixa '%s' [ Weight: %.1f ; Total: %.1f]\n", indent.toString(), name, weight, total);
        indent.append("   ");
        for (int i = 0; i < children.size(); i++) {
            children.get(i).draw();
        }
        indent.setLength(indent.length() - 3);

    }
}
