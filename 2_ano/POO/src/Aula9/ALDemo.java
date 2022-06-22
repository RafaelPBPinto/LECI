package Aula9;
import java.util.ArrayList;
import java.util.Collections;

public class ALDemo {
    public static void main(String[] args) {
        ArrayList<Integer> c1= new ArrayList<>();
        for(int i= 10; i<= 100; i+=10)
            c1.add(i);
        System.out.println("Size: "+ c1.size());
        for(int i= 0; i< c1.size(); i++) 
            System.out.println("Elemento: "+ c1.get(i));

        ArrayList<String> c2= new ArrayList<>();
        c2.add("Vento");
        c2.add("Calor");
        c2.add("Frio");
        c2.add("Chuva");
        System.out.println(c2);
        Collections.sort(c2);
        System.out.println(c2);
        c2.remove("Frio"); 
        c2.remove(0);
        System.out.println(c2);

        System.out.println(c2.contains("Frio"));
        System.out.println(c2.contains("Vento"));
        System.out.println(c1.indexOf(50));
        c1.set(2, 10);
        System.out.println(c1.lastIndexOf(10));
        System.out.println(c1.subList(2, 9));
        System.out.println(c1);
    }
}