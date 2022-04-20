import java.util.Scanner;

public class E603{
	static final Scanner sc = new Scanner(System.in);
	
	static int numeros[] = new int[50];
	
	public static void main(String[] args) {
		
		int opção;
		
		System.out.println("Escolha uma opção.");
		
		System.out.println("1 -Ler uma sequência de números inteiros");
		System.out.println("2 -Escrever a sequência");
		System.out.println("3 -Calcular o máximo da sequência");
		System.out.println("4 -Calcular o mínimo da sequência");
		System.out.println("5 -Calcular a média da sequência");
		System.out.println("6 -Detetar se é uma sequência só constituída por números pares");
		System.out.println("10 -Terminar o programa");
		
		do{
			
			System.out.print("Opção -> ");
			opção = sc.nextInt();
			
			switch (opção) {

				case 10:

					break;

				case 1:

					leitor();
					break;

				case 2:

					escritor();
					break;

				case 3:

					maximizante();
					break;

				case 4:

					minimizante();
					break;

				case 5:

					media();
					break;

				case 6:

					pares();
					break;

				default:

					System.out.println("Escolha não aceite coloca outra.");
					System.out.print("\nOpção: ");
					opção = sc.nextInt();

			}

		}while(opção != 10);
		
	
	}
	
	public static void leitor() {

		for (int i = 0; i < 50; i++) {

			System.out.printf("\nvalor #%2d: ", i + 1);
			numeros[i] = sc.nextInt();

			if (numeros[i] == 0) {
							
				break;
			
			}
		}
	}
	
	public static void escritor() {

		for (int i = 0; i < 50; i++) {
			
			if (numeros[i] == 0) {
				
				break;

			}

			System.out.printf("\nValor #%2d: %3d",i + 1, numeros[i]);
			
		}

		System.out.println();
	}
	
	public static void maximizante () {
		
		int max = 0;

		for (int i = 0; i < 50; i++) {
			
			if (numeros[i] > max) {
				
				max = numeros[i];

			}
		}

		System.out.printf("\nO máximo desta sequência é %3d.\n",max);
	}
	
	public static void minimizante () {
		
		int min = 12431234;

		for (int i = 0; i < 50; i++) {
			
			if (numeros[i] == 0) {
				
				break;

			}

			if (numeros[i] < min) {
				
				min = numeros[i];

			}
		}

		System.out.printf("\nO minimo desta sequência é %3d.\n",min);
	}
	
	public static void media () {

		double media = 0;

		int i;

		for (i = 0; i < 50; i++) {
			
			if (numeros[i] == 0) {
				
				break;

			}

			media += numeros[i];

		}

		media /= i;

		System.out.printf("\nA média da sequência é %4.2f\n", media);
	}

	public static void pares () {

		boolean pares = false;

		for (int j = 0; j < 50; j++) {
			
			for (int i = 1; i < numeros[j]; i++) {
				
				if (numeros[j] == 0) {
				
					break;

				}	

				if (numeros[j] % 2 != 0) {
					
					pares = false;

				} else {

					pares = true;

				}
			}
		}

		if (pares) {
			
			System.out.println("\n\nA lista é constituída apenas por números pares.");

		} else {
			
			System.out.println("\n\nA lista não é constituída apenas por números pares.");

		}
	}
}
	
	

