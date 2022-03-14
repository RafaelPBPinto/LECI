import java.util.Scanner;

public class E1104{
	static final Scanner sc = new Scanner(System.in);
  
	public static void main(String[] args) {
		
		Aluno[] alunos = new Aluno[20];
		int opção;
		
		for(int i = 0; i < 20; i++){
			
			alunos[i] = new Aluno();
			
		}
		
		do{
			
			System.out.println("Gestão de uma turma:");
			System.out.println("1 - Inserir informação da turma");
			System.out.println("2 - Mostrar informação de um aluno");
			System.out.println("3 - Alterar informação de um aluno");
			System.out.println("4 - Listar os alunos ordenados por nº mec.");
			System.out.println("5 - Listar os alunos ordenados por nota final");
			System.out.println("6 - Média das notas finais");
			System.out.println("7 - Melhor aluno");
			System.out.println("8 - Inserir pesos dos vários testes");
			System.out.println("9 - Gravar dados dos alunos num ficheiro");
			System.out.println("0 - Terminar o programa");
			System.out.println("Opção -> ");
			
			opção = sc.nextInt();
			
			switch(opção){
				
				case 0:
				
					break;
					
				case 1:
				
				lerinfo();
				
					
					
			}
				
		}while(opção !=0);
	}
	
	public static Aluno lerinfo(){
		
		Aluno x = new Aluno();
		
		do{
			System.out.print("Número mecanográfico: ");
			x.nmec = sc.nextInt();
			
			if(x.nmec < 0){
				
				System.out.print("Resposta inválida!");
				
			}
			
		}while(x.nmec < 0);
		
		System.out.print("Nome: ");
		x.nome = sc.nextLine();
		
		for(int k = 0; k < 3; k++){
			
			do{
			
				System.out.printf("Nota do %dº teste: ", k);
				x.notas[k] = sc.nextDouble();
				
				if(x.notas[k] < 0 || x.notas[k] > 20){
					
					System.out.print("Nota inválida!");
					
				}
				
			}while(x.notas[k] < 0 || x.notas[k] > 20);
			
		}
		
		return x;	
	}
	
	public static void infoaluno(){
		
		Aluno y = new Aluno();
		
		System.out.print("Nmec do aluno: ");
		y.nmec
		
			
}

class Aluno {
	
	int nmec;
	String nome;
	double notafinal;
	double[] notas = new double[4];
	
}
