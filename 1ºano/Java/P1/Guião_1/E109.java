import java.util.Scanner;

public class E109{
	static Scanner k = new Scanner(System.in);
	public static void main(String args[]){
		
		double altura, comprimento;
		double perímetro, área;
		
		System.out.println("Programa para calcular áreas e perímetros");
		System.out.println("-----------------------------------------");
		
		System.out.println();
		
		System.out.print("Altura: ");
		
		altura = k.nextDouble();
		
		System.out.print("Comprimento: ");
		
		comprimento = k.nextDouble();
		
		perímetro = altura + altura + comprimento + comprimento;
		
		área = comprimento * altura;
		
		System.out.printf("\nO perímetro do retângulo é %4.2f", perímetro);
		System.out.printf("\nA área do retângulo é %4.2f", área);
	}
}
	
