import java.util.Scanner;

public class E1010{
	static Scanner k = new Scanner(System.in);
	public static void main(String args[]){
		
		double c, f;
		
		System.out.println("Programa de conversão de Celsius para Fahrenheit");
		System.out.println("------------------------------------------------");
		
		System.out.println();
		
		System.out.print("Temperatura em Celsius: ");
		
		c = k.nextDouble(); 
		
		f =	1.8 * c + 32;
		
		System.out.printf("\n%2.1f ºCelsius é equivalente a %2.1f ºFahrenheit", c, f);
	}
}
