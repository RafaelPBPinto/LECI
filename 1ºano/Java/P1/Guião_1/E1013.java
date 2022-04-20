import java.util.Scanner;

public class E1013{
	static Scanner k = new Scanner(System.in);
	public static void main(String args[]){
		
		double Ax, Ay, Bx, By;
		int escala;
		double dist;
		
		System.out.println("Programa para determinar a distância entre dois pontos");
		System.out.println("------------------------------------------------------");
	
		System.out.print("escala: ");
		
		escala = k.nextInt();
		
		System.out.println();
		
		System.out.println("Coordenadas de A: ");
		
		System.out.print("x: ");
		Ax = k.nextDouble();
		
		System.out.print("y: ");
		Ay = k.nextDouble();
		
		System.out.println("Coordenadas de B: ");
		
		System.out.print("x: ");
		Bx = k.nextDouble();
		
		System.out.print("y: ");
		By = k.nextDouble();
		
		dist = Math.sqrt((Bx - Ax) * (Bx - Ax) + (By - Ay) * (By - By)) * escala;
		
		System.out.printf("A distância entre A e B é de %4.2f", dist);
		
		
		
	}
}
