//Author: Rafael Pinto, 103379, p5_09

package Ex3;

public abstract class Entity {
    protected static StringBuffer indent = new StringBuffer();
    protected abstract double getWeight();
    public abstract void draw();
}
