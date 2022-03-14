import java.util.Scanner;

public class E1011{
	static Scanner k = new Scanner(System.in);
	public static void main(String args[]){
		
		double euro, dolar;
		
		System.out.println("Programa para converter dólares americanos em euros");
		System.out.println("---------------------------------------------------");
		
		System.out.println();
		
		System.out.print("Quantia em dólares americanos (USD » EUR): ");
		
		dolar = k.nextDouble();
		
		euro = dolar * 0.8239;
		
		System.out.printf("\n%4.2f dólares americanos equivalem a %4.2f euros", dolar, euro);
	}
}
