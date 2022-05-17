package Aula2;
import java.util.Scanner;

public class Ex7 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        double x1, y1, x2, y2, dist;
        System.out.println("Coordenadas de p1:");
        System.out.print("x: ");
        x1 = sc.nextDouble();
        System.out.print("y: ");
        y1 = sc.nextDouble();
        System.out.println("Coordenadas de p2");
        System.out.print("x:");
        x2 = sc.nextDouble();
        System.out.print("y:");
        y2 = sc.nextDouble();
        dist = Math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));
        System.out.println("Distancia entre p1 e p2 e de " + dist);
    }
}
