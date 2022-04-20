import java.util.Scanner;

public class E1012{
	static Scanner k = new Scanner(System.in);
	public static void main(String args[]){
		
		int segundos;
		double h, m, s;
		
		System.out.println("Programa para passar de segundos para formato hh:mm:ss");
		System.out.println("------------------------------------------------------");
		
		System.out.println();
		
		System.out.print("tempo em segundos: ");
		
		segundos = k.nextInt();
		
		h = (segundos/3600);
		
		m = (segundos % 3600) / 60;
		
		s = segundos % 60;
		
		System.out.printf("\n%d segundos equivalem a %2.0f:%2.0f:%2.0f", segundos, h, m, s);
		
	}
}
