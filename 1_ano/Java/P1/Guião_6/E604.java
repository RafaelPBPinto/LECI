import java.util.*;

public class E604{
	static Scanner k = new Scanner(System.in);
	public static void main(String args[]){
		
		System.out.println("Histograma de notas");
		System.out.println("-------------------------------------------------------");
		
		int notas[] = new int[21];
		int histograma[] = new int[51];
		
		lernotas(notas);
		posicao(histograma, notas);
		impressor(histograma, notas);
		
	}
	
	static void lernotas(int[] notas){
		
		for(int i = 0; i < 10; i++){
			
			System.out.printf("valor da nota %d: ",i+1);
			
			notas[i] = k.nextInt();
			
			if(notas[i] > 20){
				break;
			}
			
			if(notas[i] < 0){
				
				break;
			}
		}
			
	}
			
	
	
	static void posicao(int[] histograma, int[] notas){
		
		for(int i = 0; i < notas.length; i++){
			
			histograma[notas[i]]++;
			
			}
		
		}
	
	static void impressor(int[]histograma, int[] notas){
		
		System.out.println();
		
		System.out.println("Histograma de notas");
		System.out.println("-------------------------------------------------------");
		
		for(int j = 0; j <= 20; j++){
			
			System.out.printf("\n%d| ",j);
		
			for(int a = 0; a <= histograma[j]; a++){
			
				System.out.print("*");
			}
		}
	}
}

