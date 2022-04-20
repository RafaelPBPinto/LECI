import java.util.*;

public class E201{
	static Scanner k = new Scanner(System.in);
	public static void main (String args[]){
		
		double TPG1, TPG2, EI;
		double nota;
		
		System.out.println("Programa para calcular a nota de P1");
		System.out.println("-----------------------------------");
		
		System.out.println();
		
		System.out.print("Nota da TPG1: ");
		
		TPG1 = k.nextDouble();
		
		System.out.print("Nota da TPG2: ");
		
		TPG2 = k.nextDouble();
		
		System.out.print("Nota da EI: ");
		
		EI = k.nextDouble();
		
		nota = TPG1 * 0.20 + TPG2 * 0.30 + EI * 0.50;
		
		System.out.printf("A tua nota final de P1 é de %4.2f", nota);
		
		if(nota >= 9.5){
			System.out.printf("\naprovado");
			
		}else{
			
			System.out.printf("\nreprovado");
			
		}
			
			
			
			
			
		
		}

}
