import java.util.Scanner;
import java.io.*;

public class E701{
	static final Scanner sc = new Scanner(System.in);
  
	public static void main(String[] args) throws IOException {
		
		String nomeficheiro;
		
		File ficheiro = new File();
		
		do {

			System.out.print("Qual o nome do ficheiro que quer ler? ");
			nomef = k.nextLine();

			fix = new File(nomef);

			if (!fix.isFile() || !fix.canRead()) {
				
				System.out.println("Ficheiro não válido.\nColoque outro.");
			}

		} while (!fix.isFile() || !fix.canRead());
		
		Scanner fil = new Scanner(fix);
		
		while(fil.hasNextLine()) {

			System.out.println(fil.next());
		}

		fil.close();

		
	}
	
}
