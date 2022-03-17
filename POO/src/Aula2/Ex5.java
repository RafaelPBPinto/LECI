package Aula2;
import java.util.Scanner;

public class Ex5 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        double v1, v2, d1, d2,t1, t2, vmedia;
        System.out.print("Velocidade no primeiro trajeto (Km/h): ");
        v1 = sc.nextDouble();
        System.out.print("Distancia percorrida no primeiro trajeto (Km): ");
        d1 = sc.nextDouble();
        System.out.print("Velocidade no segundo trajeto (Km/h): ");
        v2 = sc.nextDouble();
        System.out.print("Distancia percorrida no segundo trajeto (Km): ");
        d2 = sc.nextDouble();                                                                           //vmedia=d/t
        t1 = d1 / v1;                                                                                   //t = d/vmedia
        t2 = d2 / v2;
        vmedia = (d1 + d2) / (t1 + t2);
        System.out.println("A velocidade media final e " + vmedia + " Km/h.");
    }
}
