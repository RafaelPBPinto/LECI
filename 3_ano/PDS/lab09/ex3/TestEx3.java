//Author: Rafael Pinto, 103379, p5_09

package ex3;

import java.util.List;
import java.util.ArrayList;

public class TestEx3 {
    public static void main(String[] args) {
        List<String> list = new ArrayList<String>();
        Invoker<String> invoker = new Invoker<String>();
        Receiver<String> receiver = new Receiver<String>(list);

        Command<String> addCommand = new AddCommand<String>(receiver);
        Command<String> removeCommand = new RemoveCommand<String>(receiver);

        System.out.println("---- Test AddCommand ----");
        invoker.setCommand(addCommand);
        invoker.doSomething("Hello");
        invoker.doSomething("World");

        for (String s : list) {
            System.out.println(s);
        }

        System.out.println();
        System.out.println("Undoing last command...");

        invoker.undoSomething();

        for (String s : list) {
            System.out.println(s);
        }
        System.out.println();
        System.out.println("Adding \"World\" again...");

        invoker.doSomething("World");

        for (String s : list) {
            System.out.println(s);
        }
        
        System.out.println();
        System.out.println("---- Test RemoveCommand ----");
        
        System.out.println("Removing \"Hello\"...");
        invoker.setCommand(removeCommand);  
        invoker.doSomething("Hello");

        for (String s : list) {
            System.out.println(s);
        }

        System.out.println();
        System.out.println("Undoing last command...");
        invoker.undoSomething();

        for (String s : list) {
            System.out.println(s);
        }  
    }
}
