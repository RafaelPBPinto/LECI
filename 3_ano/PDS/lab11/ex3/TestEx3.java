package ex3;

import java.util.List;
import java.util.Scanner;

public class TestEx3 {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        Livro l1 = new Livro("Java Anti-Stress", 1, 2010, "Omodionah");
        Livro l2 = new Livro("A Guerra dos Padrões", 2, 2022, "Jorge Omel");
        Livro l3 = new Livro("A Procura da Luz", 3, 2015, "Khumatkli");

        List<Livro> livros = List.of(l1, l2, l3);

        printMenu(livros);
        String input = sc.nextLine();
        while (!input.equals("exit")) {
            String[] parts = input.split(",");
            int livro = Integer.parseInt(parts[0].trim());
            int operacao = Integer.parseInt(parts[1].trim());
            switch(operacao) {
                case 1:
                    Livro l = getLivroByISBN(livros, livro);
                    l.regista();
                    break;
                case 2:
                    l = getLivroByISBN(livros, livro);
                    l.requisita();
                    break;
                case 3:
                    l = getLivroByISBN(livros, livro);
                    l.devolve();
                    break;
                case 4:
                    l = getLivroByISBN(livros, livro);
                    l.reserva();
                    break;
                case 5:
                    l = getLivroByISBN(livros, livro);
                    l.cancelaReserva();
                    break;
                default:
                    System.out.println("Operacao invalida");
                    break;
            }
            printMenu(livros);
            input = sc.nextLine();
        }
    }

    public static void printMenu(List<Livro> livros) {
        System.out.println("*** Biblioteca ***");
        for (Livro livro : livros) {
            System.out.println(livro);
        }
        System.out.println(">> <livro>, <operação: (1)regista; (2)requisita; (3)devolve; (4)reserva; (5)cancela");
        System.out.print(">> ");
    }

    public static Livro getLivroByISBN(List<Livro> livros, int ISBN) {
        for (Livro livro : livros) {
            if (livro.getISBN() == ISBN) {
                return livro;
            }
        }
        return null;
    }
}
