import java.util.*;

public class E2011{
	static Scanner k = new Scanner(System.in);
	public static void main (String args[]){
		double a,b,c;
		double raiz1, raiz2;
		
		System.out.println("Programa para calcular as raízes de uma equação de 2º grau");
		System.out.println("----------------------------------------------------------");
			
		System.out.println("Ax2 + Bx + C = 0");
		
		System.out.println();
		
		System.out.print("A: ");
		
		a = k.nextDouble();
		
		System.out.print("B: ");
		
		b = k.nextDouble();
		
		System.out.print("C: ");
		
		c = k.nextDouble();
		
		raiz1 = -b-Math.sqrt(b*b-4*a*c)/2*a;
		raiz2 = -b+Math.sqrt(b*b-4*a*c)/2*a;
		
		System.out.printf("%4.2f ; %4.2f",raiz1, raiz2);
	}
}
