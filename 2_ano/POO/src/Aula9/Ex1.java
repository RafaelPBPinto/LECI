package Aula9;
import Aula5.Date;
import Aula7.DateYMD;
import Aula6.Pessoa;
import java.util.HashSet;
import java.util.Set;
import java.util.TreeSet;

public class Ex1 {
    public static void main(String[] args) {
        Set<Pessoa> c3 = new HashSet<>();
        Pessoa p0 = new Pessoa("Ana", 12345, new Date(1,2,2000));
        Pessoa p1 = new Pessoa("Rui", 54321, new Date(3,5,1990));
        Pessoa p2 = new Pessoa("Manuel", 99123, new Date(23,6,1975));
        Pessoa p3 = new Pessoa("Joao", 1276, new Date(2,5,1995));
        Pessoa p4 = new Pessoa("Felix", 7717, new Date(17,6,1999));
        c3.add(p0);
        c3.add(p1);
        c3.add(p2);
        c3.add(p3);
        c3.add(p2);
        c3.add(p1);
        c3.add(p4);
        for(Pessoa p : c3){
            System.out.println(p);
        }
        System.out.println();

        Set<Aula7.Date> c4 = new TreeSet<>();
        c4.add(new DateYMD(1,1,2001));
        c4.add(new DateYMD(1,1,2001));
        c4.add(new DateYMD(2,3,2002));
        c4.add(new DateYMD(3,4,2002));
        c4.add(new DateYMD(2,4,2002));
        c4.add(new DateYMD(3,4,2002));
        c4.add(new DateYMD(30,11,1983));
        c4.add(new DateYMD(21,7,2011));
        System.out.println(c4);
    }
}
