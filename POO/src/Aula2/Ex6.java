package Aula2;
import java.util.Scanner;

public class Ex6 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        double hours, mins, secs;
        int hh, mm, ss;
        System.out.print("Tempo em segundos: ");
        secs = sc.nextInt();
        hours = secs / 3600;
        hh = (int)hours;
        mins = (hours % 1) * 60;
        mm = (int)mins;
        secs = (mins % 1) * 60;
        ss = (int)secs;
        System.out.printf("%02d:%02d:%02d\n", hh, mm, ss);
    }
}
