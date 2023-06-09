//Author: Rafael Pinto, 103379, p5_09

import java.util.Iterator;
import java.util.ListIterator;

public class TestEx1 {
    public static void main(String[] args) {
        VectorGeneric<String> vec = new VectorGeneric<String>();
        String[] nomes = { "Rafael", "Matilde", "Ana", "Carlos", "Filipe", "Joana", "Luis", "Rita", "Sara" };

        for (String s : nomes)
            vec.addElem(s);

        // Test iterator
        System.out.println("------ Test iterator ------");

        // single iterator
        System.out.println("------ Single iterator ------");

        Iterator<String> vecIterator = vec.iterator();
        while (vecIterator.hasNext())
            System.out.println(vecIterator.next());

        // multiple iterators
        System.out.println("------ Multiple iterators ------");

        Iterator<String> vecIterator1 = vec.iterator();
        Iterator<String> vecIterator2 = vec.iterator();
        Iterator<String> vecIterator3 = vec.iterator();
        for (int i = 0; i < vec.totalElem(); i++) {
            System.out.println("it1 : " + vecIterator1.next());
            System.out.println("it2 : " + vecIterator2.next());
            System.out.println("it3 : " + vecIterator3.next());
        }

        // Test list iterator
        System.out.println("------ Test list iterator ------");

        // single list iterator
        System.out.println("------ Single list iterator ------");

        ListIterator<String> vecListIterator = vec.listIterator();
        for(int i = 0; i < vec.totalElem(); i++) {
            if(vecListIterator.hasNext()) {
                System.out.println(vecListIterator.nextIndex() + " : " + vecListIterator.next());
            }
        }
        vecListIterator.previous();
        for (int i = 0; i < vec.totalElem(); i++) {
            if(vecListIterator.hasPrevious()) {
                System.out.println(vecListIterator.previousIndex() + " : " + vecListIterator.previous());
            }
        }

        // multiple list iterators
        System.out.println("------ Multiple list iterators ------");
        
        ListIterator<String> vecListIterator1 = vec.listIterator();
        ListIterator<String> vecListIterator2 = vec.listIterator(vec.totalElem() - 1);

        for(int i=0; i < vec.totalElem(); i++){
            if(vecListIterator1.hasNext()) {
                System.out.println("lit1 : " + vecListIterator1.nextIndex() + " : " + vecListIterator1.next());
            }
            if(vecListIterator2.hasPrevious()) {
                System.out.println("lit2 : " + vecListIterator2.previousIndex() + " : " + vecListIterator2.previous());
            }
        }
    }
    
} 
