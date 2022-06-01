package Aula9;
import java.util.Collection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.HashSet;
import java.util.TreeSet;

public class Ex2 {
    public static void main(String[] args) {
        double[][] dados = new double[24][];
        System.out.println("Collection\t1000\t5000\t10000\t20000\t40000\t100000");
        Collection<Integer> arrayList = new ArrayList<>();
        System.out.println("ArrayList");
        dados[0] = checkPerformance(arrayList, 1000);
        dados[1] = checkPerformance(arrayList, 5000);
        dados[2] = checkPerformance(arrayList, 10000);
        dados[3] = checkPerformance(arrayList, 20000);
        dados[4] = checkPerformance(arrayList, 40000);
        dados[5] = checkPerformance(arrayList, 100000);
        System.out.printf("add\t\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\n", dados[0][0], dados[1][0], dados[2][0], dados[3][0], dados[4][0], dados[5][0]);
        System.out.printf("search\t\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\n", dados[0][1], dados[1][1], dados[2][1], dados[3][1], dados[4][1], dados[5][1]);
        System.out.printf("remove\t\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\n", dados[0][2], dados[1][2], dados[2][2], dados[3][2], dados[4][2], dados[5][2]);
        Collection<Integer> linkedList = new LinkedList<>();
        System.out.println("LinkedList");
        dados[6] = checkPerformance(linkedList, 1000);
        dados[7] = checkPerformance(linkedList, 5000);
        dados[8] = checkPerformance(linkedList, 10000);
        dados[9] = checkPerformance(linkedList, 20000);
        dados[10]= checkPerformance(linkedList, 40000);
        dados[11]= checkPerformance(linkedList, 100000);
        System.out.printf("add\t\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\n", dados[6][0], dados[7][0], dados[8][0], dados[9][0], dados[10][0], dados[11][0]);
        System.out.printf("search\t\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\n", dados[6][1], dados[7][1], dados[8][1], dados[9][1], dados[10][1], dados[11][1]);
        System.out.printf("remove\t\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\n", dados[6][2], dados[7][2], dados[8][2], dados[9][2], dados[10][2], dados[11][2]);
        Collection<Integer> hashSet = new HashSet<>();
        System.out.println("HashSet");
        dados[12]= checkPerformance(hashSet, 1000);
        dados[13]= checkPerformance(hashSet, 5000);
        dados[14]= checkPerformance(hashSet, 10000);
        dados[15]= checkPerformance(hashSet, 20000);
        dados[16]= checkPerformance(hashSet, 40000);
        dados[17]= checkPerformance(hashSet, 100000);
        System.out.printf("add\t\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\n", dados[12][0], dados[13][0], dados[14][0], dados[15][0], dados[16][0], dados[17][0]);
        System.out.printf("search\t\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\n", dados[12][1], dados[13][1], dados[14][1], dados[15][1], dados[16][1], dados[17][1]);
        System.out.printf("remove\t\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\n", dados[12][2], dados[13][2], dados[14][2], dados[15][2], dados[16][2], dados[17][2]);
        Collection<Integer> treeSet = new TreeSet<>();
        System.out.println("TreeSet");
        dados[18]= checkPerformance(treeSet, 1000);
        dados[19]= checkPerformance(treeSet, 5000);
        dados[20]= checkPerformance(treeSet, 10000);
        dados[21]= checkPerformance(treeSet, 20000);
        dados[22]= checkPerformance(treeSet, 40000);
        dados[23]= checkPerformance(treeSet, 100000);
        System.out.printf("add\t\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\n", dados[18][0], dados[19][0], dados[20][0], dados[21][0], dados[22][0], dados[23][0]);
        System.out.printf("search\t\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\n", dados[18][1], dados[19][1], dados[20][1], dados[21][1], dados[22][1], dados[23][1]);
        System.out.printf("remove\t\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\n", dados[18][2], dados[19][2], dados[20][2], dados[21][2], dados[22][2], dados[23][2]);
    }

    private static double[] checkPerformance(Collection<Integer> col, int DIM) {
        double start, stop;
        double[] results = new double[3];
        // Add
        start = System.nanoTime(); // clock snapshot before
        for(int i=0; i< DIM; i++ )
            col.add( i);
        stop = System.nanoTime();  // clock snapshot after
        results[0] = (stop-start)/1e6; // convert to milliseconds
        // Search
        start = System.nanoTime(); // clock snapshot before
        for(int i=0; i< DIM; i++ ) {
            int n= (int) (Math.random()*DIM);
            if(!col.contains(n)) 
                System.out.println("Not found???"+n);
        }
        stop = System.nanoTime();  // clock snapshot after
        results[1] = (stop-start)/1e6; // convert nanoseconds to milliseconds
        // Remove
        start = System.nanoTime(); // clock snapshot before
        Iterator<Integer> iterator= col.iterator();
        while(iterator.hasNext()) {
            iterator.next();iterator.remove();
        }
        stop = System.nanoTime();  // clock snapshot after
        results[2] = (stop-start)/1e6; // convert nanoseconds to milliseconds
        return results;
    }
}
