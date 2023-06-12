//Author: Rafael Pinto, 103379, p5_09

package ex3;

public interface Command<E> {
    public void execute(E element);
    public void undo();
}
