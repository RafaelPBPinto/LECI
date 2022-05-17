package Aula5;
import java.util.ArrayList;
import java.util.Scanner;

public class Ex5 {
    public static final Scanner sc = new Scanner(System.in);

    public static Utilizador novoUtilizador(ArrayList<Utilizador> alunos){
        boolean validnmec = true;
        sc.nextLine();
        System.out.print("Nome:");
        String newNome = sc.nextLine();
        int newnMec;
        do{
            validnmec = true;
            System.out.print("nMec:");
            newnMec = sc.nextInt();
            for(Utilizador aluno : alunos){
                if(aluno.getnMec() == newnMec){
                    System.out.println("Este nMec já existe! Introduza outro");
                    validnmec = false;
                }
            }
        }while(validnmec == false);
        sc.nextLine();
        System.out.print("Curso:");
        String newCurso = sc.nextLine();

        return new Utilizador(newNome, newnMec, newCurso);
    }

    public static void printAlunos(ArrayList<Utilizador> alunos){
        System.out.println();
        for(Utilizador aluno : alunos){
            System.out.println(aluno);
        }
        System.out.println();
    }

    public static Livro novoLivro(){
        sc.nextLine();
        System.out.print("Titulo:");
        String newTitulo = sc.nextLine();
        String newTipo;
        if(newTitulo != ""){
            System.out.print("Tipo de Emprestimo Condicional (s/n)? ");
            String tipo = sc.nextLine();
            if(tipo.charAt(0) == 's' || tipo.charAt(0) == 'S'){
                newTipo = "CONDICIONAL";
            }else{
                newTipo = "NORMAL";
            }
        }else{
            System.out.println("Titulo invalido!");
            return null;
        }
        return new Livro(newTitulo, newTipo);
    }

    public static void printLivros(ArrayList<Livro> livros){
        System.out.println();
        for(Livro livro : livros){
            System.out.println(livro);
        }
        System.out.println();
    }

    public static void requisitarLivro(ArrayList<Utilizador> alunos, ArrayList<Livro> livros){
        System.out.print("nMec: ");
        int nmec = sc.nextInt();
        System.out.print("Livro ID: ");
        int id = sc.nextInt();
        boolean alunoexiste = false;
        boolean livroexiste = false;
        for(Utilizador aluno : alunos){
            if(aluno.getnMec() == nmec){
                alunoexiste = true;
                for(Livro livro : livros){
                    if(livro.getId() == id){
                        livroexiste = true;
                        if(livro.disponivel() && livro.getTipoEmprestimo().equals("NORMAL")){
                            aluno.requisitarLivro(id);
                            livro.setDisponivel(false);
                        }else{
                            System.out.println("Livro indisponivel!");
                        }
                    }
                }
            }
        }
        if(!alunoexiste){
            System.out.println("Aluno nao existe!");
        }
        if(alunoexiste && !livroexiste){
            System.out.println("Livro nao existe!");
        }
    }

    public static void devolverLivro(ArrayList<Utilizador> alunos, ArrayList<Livro> livros){
        System.out.print("nMec: ");
        int nmec = sc.nextInt();
        System.out.print("Livro ID: ");
        int id = sc.nextInt();
        boolean alunoexiste = false;
        boolean livroexiste = false;
        for(Utilizador aluno : alunos){
            if(aluno.getnMec() == nmec){
                alunoexiste = true;
                for(Livro livro : livros){
                    if(livro.getId() == id){
                        livroexiste = true;
                        if(!livro.disponivel()){
                            aluno.devolverLivro(id);
                            livro.setDisponivel(true);
                        }
                    }
                }
            }
        }
        if(!alunoexiste){
            System.out.println("Aluno nao existe!");
        }
        if(alunoexiste && !livroexiste){
            System.out.println("Livro nao existe!");
        }
    }

    public static void main(String[] args){
        ArrayList<Utilizador> alunos = new ArrayList<>(100);
        ArrayList<Livro> livros = new ArrayList<>(100);
        int option;
        do{
            System.out.println("1 - inscrever utilizador");
            System.out.println("2 - remover utilizador");
            System.out.println("3 - imprimir lista de utilizadores");
            System.out.println("4 - registar um novo livro");
            System.out.println("5 - imprimir lista de livros");
            System.out.println("6 - emprestar");
            System.out.println("7 - devolver");
            System.out.println("8 - sair");
            option = sc.nextInt();

            switch(option){
                case 1:
                    if(alunos.size() != 100){
                        alunos.add(novoUtilizador(alunos));
                    }else{
                        System.out.println("Impossivel inscrever mais alunos!");
                    }
                    break;
                case 2:
                    printAlunos(alunos);
                    System.out.print("Remover qual aluno (Introduzir nMec)?");
                    int remove = sc.nextInt();
                    boolean isremoved = false;
                    for(int i = 0; i < alunos.size(); i++){
                        if(alunos.get(i).getnMec() == remove){
                            alunos.remove(i);
                            System.out.println("Aluno removido");
                            isremoved = true;
                        }
                    }
                    if(isremoved == false){
                        System.out.println("Esse aluno nao existe!");
                    }
                    break;
                case 3:
                    printAlunos(alunos);
                    break;
                case 4:
                    if(livros.size() != 100){
                        livros.add(novoLivro());
                    }else{
                        System.out.println("Impossivel registar mais livros!");
                    }
                    break;
                case 5:
                    printLivros(livros);
                    break;
                case 6:
                    printAlunos(alunos);
                    printLivros(livros);
                    requisitarLivro(alunos, livros);
                    break;
                case 7:
                    printAlunos(alunos);
                    printLivros(livros);
                    devolverLivro(alunos, livros);
                    break;
                case 8:
                    System.out.println("Adeus!");
                    break;
                default:
                    System.out.println("Opcao invalida!");
                    break;
            }
        }while(option != 8);
    }
}
