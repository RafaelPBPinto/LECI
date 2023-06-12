//Author: Rafael Pinto, 103379, p5_09

package ex3;

public class Invoker<E> {
    private Command<E> command;

    public void setCommand(Command<E> command) {
        this.command = command;
    }

    public void doSomething(E element) {
        command.execute(element);
    }

    public void undoSomething() {
        command.undo();
    }
}
