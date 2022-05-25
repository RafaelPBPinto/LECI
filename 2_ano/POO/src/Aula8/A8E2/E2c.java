package Aula8.A8E2;
import java.util.Scanner;
import java.util.ArrayList;

public class E2c {
    public static final Scanner sc = new Scanner(System.in);
    static ArrayList<Alimento> alimentos = new ArrayList<>();
    static ArrayList<Prato> pratos = new ArrayList<>(); 
    static Ementa ementa = new Ementa("Tasca do Ze", "Aveiro");

    public static void menuIngrediente(){
        int op;
        System.out.println("Seleciona uma opcao:");
        System.out.printf("\n1-Adicionar Carne\n2-Adicionar Peixe\n3-Adicionar Cereal\n4-Adicionar Legume\n0-Voltar\n");
        op = sc.nextInt();
        switch(op){
            case 1:
                System.out.println("Variedade: 1-VACA;2- PORCO;3- PERU;4- FRANGO;5- OUTRA");
                int variedade = sc.nextInt();
                System.out.println("Proteinas: ");
                double proteinas = sc.nextDouble();
                System.out.println("Calorias: ");
                double calorias = sc.nextDouble();
                System.out.println("Peso:");
                double peso = sc.nextDouble();
                Carne c = new Carne(VariedadeCarne.values()[variedade-1], proteinas, calorias, peso);
                alimentos.add(c);
                break;
            case 2:
                System.out.println("Tipo: 1-Congelado;2- Fresco");
                int tipo = sc.nextInt();
                System.out.println("Proteinas: ");
                double proteinas1 = sc.nextDouble();
                System.out.println("Calorias: ");
                double calorias1 = sc.nextDouble();
                System.out.println("Peso:");
                double peso1 = sc.nextDouble();
                Peixe p = new Peixe(TipoPeixe.values()[tipo-1], proteinas1, calorias1, peso1);
                alimentos.add(p);
                break;
            case 3:
                System.out.println("Nome: ");
                String nome = sc.nextLine();
                System.out.println("Proteinas: ");
                double proteinas2 = sc.nextDouble();
                System.out.println("Calorias: ");
                double calorias2 = sc.nextDouble();
                System.out.println("Peso:");
                double peso2 = sc.nextDouble();
                Cereal ce = new Cereal(nome, proteinas2, calorias2, peso2);
                alimentos.add(ce);
                break;
            case 4:
                System.out.println("Nome: ");
                String nome1 = sc.nextLine();
                System.out.println("Proteinas: ");
                double proteinas3 = sc.nextDouble();
                System.out.println("Calorias: ");
                double calorias3 = sc.nextDouble();
                System.out.println("Peso:");
                double peso3 = sc.nextDouble();
                Legume l = new Legume(nome1, proteinas3, calorias3, peso3);
                alimentos.add(l);
                break;
            case 0:
                break;
            default:
                System.out.println("Input invalido!");
                break;
        }
    }

    public static void menuPrato(){
        int op;
        System.out.println("Seleciona uma opcao:");
        System.out.printf("\n1-Cria Prato\n2-Apaga Prato\n3-Adiciona Ingrediente\n4-Remove Ingrediente\n0-Voltar\n");
        op = sc.nextInt();
        switch(op){
            case 1:
                System.out.println("Nome:");
                String nome = sc.nextLine();
                Prato p = new Prato(nome);
                pratos.add(p);
                break;
            case 2:
                System.out.println("Remover qual?");
                listPratos();
                int op1 = sc.nextInt();
                pratos.remove(op1);
                break;
            case 3:
                int op2;
                do{
                    System.out.println("Seleciona prato:");
                    listPratos();
                    int indexprato = sc.nextInt();
                    System.out.println("Seleciona o Ingrediente:(Introduza -1 para sair)");
                    listAlimentos();
                    op2 = sc.nextInt();
                    if(op2 != -1){
                       pratos.get(indexprato).addIngrediente(alimentos.get(op2));
                    }
                }while(op2 != -1);
                break;
            case 4:
                System.out.println("Seleciona prato:");
                listPratos();
                int indexprato = sc.nextInt();
                System.out.println("Seleciona o Ingrediente:");
                listAlimentos();
                op2 = sc.nextInt();
                pratos.get(indexprato).removeIngrediente(alimentos.get(op2));
                break;
            case 0:
                break;
            default:
                System.out.println("Input invalido!");
                break;
        }
    }

    public static void menuEmenta(){
        int op;
        System.out.println("Seleciona uma opcao:");
        System.out.printf("\n1-Adiciona Prato\n2-Remove Prato\n3-Imprime Ementa\n0-Voltar\n");
        op = sc.nextInt();
        switch(op){
            case 1:
                System.out.println("Seleciona prato:");
                listPratos();
                int indexprato = sc.nextInt();
                System.out.println("Dia da semana:(1-Segunda;2-Terca;3-Quarta;4-Quinta;5-Sexta;6-Sabado;7-Domingo");
                int dia = sc.nextInt();
                ementa.addPrato(pratos.get(indexprato), DiaSemana.values()[dia-1]);
                break;
            case 2:
                System.out.println("Remover qual?");
                listPratos();
                int op1 = sc.nextInt();
                System.out.println("Dia da semana:(1-Segunda;2-Terca;3-Quarta;4-Quinta;5-Sexta;6-Sabado;7-Domingo");
                int dia1 = sc.nextInt();
                ementa.removePrato(pratos.get(op1), DiaSemana.values()[dia1-1]);
                break;
            case 3:
                System.out.println(ementa);
                break;
            case 0:
                break;
            default:
                System.out.println("Input invalido!");
                break;
        }
    }

    public static void listAlimentos(){
        for(int i = 0; i < alimentos.size(); i++){
            System.out.printf("%d: %s", i, alimentos.get(i));
        }
    }

    public static void listPratos(){
        for(int i = 0; i < pratos.size(); i++){
            System.out.printf("%d: %s", i, pratos.get(i));
        }
    }

    public static void main(String[] args){
        int op;
        do{
            System.out.println("Seleciona uma opcao:");
            System.out.printf("\n1-Ingrediente\n2-Prato\n3-Ementa\n0-sair\n");
            op = sc.nextInt();
            switch(op){
                case 1:
                    menuIngrediente();
                    break;
                case 2:
                    menuPrato();
                    break;
                case 3:
                    menuEmenta();
                    break;
                case 0:
                    System.out.println("Adeus!");
                    break;
                default:
                    System.out.println("Input invalido!");
                    break;
            }
        }while(op != 0);
    }
}
