import java.util.Scanner;

public class E804{
	static final Scanner sc = new Scanner(System.in);
  
	public static void main(String[] args) {
		
		char a;
		Complexo num1 = new Complexo();
		Complexo num2 = new Complexo();
		Complexo resultado = new Complexo();
		
		do{
			System.out.printf("\nOperação: ");
			a = sc.next().charAt(0);
			
			if(a == '+'){
				
				num1 = lercomplexo();
				num2 = lercomplexo();
				resultado = adiçãocomplexos(num1,num2);
				
				imprimircomplexo(num1);
				System.out.print(" + ");
				imprimircomplexo(num2);
				System.out.print(" = ");
				imprimircomplexo(resultado);
				
			}
			else if(a == '-'){
				
				num1 = lercomplexo();
				num2 = lercomplexo();
				resultado = subtraçãocomplexos(num1,num2);
				
				imprimircomplexo(num1);
				System.out.print(" - ");
				imprimircomplexo(num2);
				System.out.print(" = ");
				imprimircomplexo(resultado);
				
			}
			else if(a == '*'){
				
				num1 = lercomplexo();
				num2 = lercomplexo();
				resultado = multiplicaçãocomplexos(num1,num2);
				
				imprimircomplexo(num1);
				System.out.print(" * ");
				imprimircomplexo(num2);
				System.out.print(" = ");
				imprimircomplexo(resultado);
				
			}
			else if(a == '/'){
				
				num1 = lercomplexo();
				num2 = lercomplexo();
				resultado = divisãocomplexos(num1,num2);
				
				imprimircomplexo(num1);
				System.out.print(" / ");
				imprimircomplexo(num2);
				System.out.print(" = ");
				imprimircomplexo(resultado);
				
			}
			else if(a == '='){
			
				System.out.print("O programa vai terminar...");
				break;
			
			}
			else{
				
				System.out.print("Operação não permitida!");
				
			}
					
		}while(a != '=');
		
	
		
	}
	
	
	public static Complexo lercomplexo(){
		
		Complexo num = new Complexo();
		
		System.out.println("Introduza um número complexo:");
		
		System.out.print("Parte real: ");
		num.r = sc.nextDouble();
		
		System.out.print("Parte imag: ");
		num.i = sc.nextDouble();
		
		return num;
	}
	
	public static void imprimircomplexo(Complexo num){
		
		if(num.i > 0){
			
			System.out.printf("%1.1f+%1.1fi", num.r, num.i);
			
		}else if(num.i < 0){
			
			System.out.printf("%1.1f-%1.1fi", num.r, num.i);
			
		}else if(num.i == 0){
			
			System.out.printf("%1.1f", num.r);
		}
		
	}
	
	public static Complexo adiçãocomplexos(Complexo num1, Complexo num2){
		
		Complexo add = new Complexo();
		
		add.r = num1.r + num2.r;
		
		add.i = num1.i + num2.i;
		
		return add;
	
	}
	
	public static Complexo subtraçãocomplexos(Complexo num1, Complexo num2){
		
		Complexo sub = new Complexo();
		
		sub.r = num1.r - num2.r;
		
		sub.i = num1.i - num2.i;
		
		return sub;
	}
	
	public static Complexo multiplicaçãocomplexos(Complexo num1, Complexo num2){
		
		Complexo mult = new Complexo();
		
		mult.r = num1.r*num2.r - num1.i*num2.i;
		
		mult.i = num1.i*num2.r + num1.r*num2.i;
		
		return mult;
	}
	
	public static Complexo divisãocomplexos(Complexo num1, Complexo num2){
		
		Complexo div =  new Complexo();
		
		div.r =(num1.r*num2.r+num1.i*num2.i)/(Math.pow(num2.r,2)+Math.pow(num2.i,2));
		
		div.i =(num1.i*num2.r-num1.r*num2.i)/(Math.pow(num2.r,2)+Math.pow(num2.i,2));
		
		return div;
	}
}


class Complexo{
	
	double r;
	double i;
	
}
