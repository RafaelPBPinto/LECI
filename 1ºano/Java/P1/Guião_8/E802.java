import java.util.Scanner;

public class E802 {
	static final Scanner sc = new Scanner(System.in);
	
	static class Ponto2D{
		
		double x;
		double y;
		
	}
	
	public static Ponto2D lerPonto(int n){
		
		Ponto2D coordenada = new Ponto2D();
		
			
		System.out.print("Introduza um ponto: ");
		
		System.out.println();
		
		System.out.print("Coordenada x: ");
		coordenada.x	= sc.nextDouble();
		
		System.out.print("Coordenada y: ");
		coordenada.y = sc.nextDouble();
			
		
		
		return coordenada;
	}
	
	public static void printPonto(Ponto2D n){
		
		System.out.printf("(%1.1f;%1.1f)", n.x, n.y);
		
	}
	
	public static double dist(Ponto2D p){
		
		double dist = Math.sqrt(Math.pow(p.x, 2) + Math.pow(p.y, 2));
		
		return dist;
		
	}
	
	public static void main(String[] args) {
		
		int contador;
		
		Ponto2D[] pontos = new Ponto2D[999];
		
		Ponto2D maisdist = new Ponto2D();
		
		double distancia;
		double maxdist = 0;
		double distsum = 0;
		
		for(contador = 0; ;contador++) {
			
			pontos[contador] = lerPonto(contador);
			
			if(pontos[contador].x == 0 && pontos[contador].y == 0) {
				break;
			}
		}
		
		for (int i = 0; i < contador; i++) {
			
			distancia = dist(pontos[i]);
			
			distsum += distancia;
			
			if(distancia > maxdist) {
				
				maisdist = pontos[i];
				maxdist = distancia;
				
			}
		}
		
		System.out.printf("A soma das distâncias dos %d pontos à origem é %5.1f.\n", contador, distsum);
		
		System.out.print("O ponto mais afastado da origem foi ");
		
		printPonto(maisdist);
		
		System.out.println();
		
	
		
	}
	
		
}

