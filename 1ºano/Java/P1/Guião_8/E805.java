import java.util.Scanner;

public class E805{
	static final Scanner sc = new Scanner(System.in);
  
	public static void main(String[] args) {
		
		System.out.println("Cálculo aproximado da TAS de um indivíduo");
		System.out.println("-----------------------------------------");
		
		Individuo registo = new Individuo();
		
		registo = infoindividuo();
		TAS(registo);
		printTAS(registo);
	}
	
	public static Individuo infoindividuo(){
		
		Individuo utilizador = new Individuo();
		 
		System.out.print("Nome: ");
		utilizador.nome = sc.nextLine();
		
		do{
			
			System.out.print("Sexo(m/f): ");
			utilizador.sexo = sc.next().charAt(0);
			
			if(utilizador.sexo != 'f' && utilizador.sexo != 'm'){
				
				System.out.println("Resposta inválida!");
				
			}
			
		}while(utilizador.sexo != 'f' && utilizador.sexo != 'm');
				
				
		do{
			
			System.out.print("Peso(kg): ");
			utilizador.peso = sc.nextDouble();
			
			if(utilizador.peso < 0){
				
				System.out.println("Peso inválido");
				
			}
		
		}while(utilizador.peso < 0);
		
		do{
			
			System.out.print("Quantidade de bebida ingerida(ml): ");
			utilizador.ml = sc.nextInt();
			
			if(utilizador.ml < 0){
				
				System.out.println("Quantidade inválida");
				
			}
		
		}while(utilizador.ml < 0);
		
		do{
			
			System.out.print("Teor alcoólico da bebida(%): ");
			utilizador.talcool = sc.nextDouble();
			
			if(utilizador.talcool < 0){
				
				System.out.println("Quantidade inválida");
				
			}
		
		}while(utilizador.talcool < 0);	
		
		do{
		
			System.out.print("Bebeu em jejum(s/n)? ");
			utilizador.jejum = sc.next().charAt(0);
		
			if(utilizador.jejum != 's' && utilizador.jejum != 'n'){
				
				System.out.println("Resposta inválida!");
				
			}
		
		}while(utilizador.jejum != 's' && utilizador.jejum != 'n');
		
		return utilizador;
	}
	
	public static double TAS(Individuo utilizador){
		
		double TAS;
		double DensidadeAlcool = 0.8;
		double CoeficienteMJ = 0.6;
		double CoeficienteHJ = 0.7;
		double CoeficienteNJ = 1.1;
		
		if(utilizador.sexo == 'f' && utilizador.jejum == 's'){
			
			TAS = ((DensidadeAlcool*utilizador.ml*utilizador.talcool)/100)/(utilizador.peso*CoeficienteMJ);
			
		}else if(utilizador.sexo == 'm' && utilizador.jejum == 's'){
			
			TAS = ((DensidadeAlcool*utilizador.ml*utilizador.talcool)/100)/(utilizador.peso*CoeficienteHJ);
			
		}else{
			
			TAS = ((DensidadeAlcool*utilizador.ml*utilizador.talcool)/100)/(utilizador.peso*CoeficienteNJ);
			
		}
			
		return TAS;
		
	}
	
	public static void printTAS(Individuo utilizador){
		
		System.out.printf("TAS = %4.2f g/ml.", TAS(utilizador));
		
	}
}

class Individuo{
	
	String nome;
	char sexo;
	double peso;
	int ml;
	double talcool;
	char jejum;
}
 
