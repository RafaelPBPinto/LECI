package Aula10;
import java.util.Map;
import java.util.LinkedHashMap;
import java.util.Scanner;

public class Ex1 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
       Map<String, String> dicionario = new LinkedHashMap<>();
       String termo;
       int op;
       // Lista de termos exemplo //
       dicionario.put("branco", "Que tem cor da neve.");
       dicionario.put("barco", "Veículo que anda na água.");
       dicionario.put("carro", "Veículo a motor para andar na estrada.");
       dicionario.put("peixe", "Animal que anda na água.");
       dicionario.put("computador", "Dispositivo eletrónico.");
       do{
            System.out.println("Menu");
            System.out.println("1-Introduzir termo");
            System.out.println("2-Alterar significado");
            System.out.println("3-Remover termo");
            System.out.println("4-Listar pares termos-significado");
            System.out.println("5-Listar termos");
            System.out.println("6-Listar significados");
            System.out.println("0-Sair");
            op = sc.nextInt();
            sc.nextLine();
            switch(op){
                case 1:
                    System.out.println("Insira um termo:");
                    termo = sc.nextLine();
                    System.out.println("Insira o seu significado:");
                    String significado = sc.nextLine();
                    if(!termo.contains(" ") && !significado.isEmpty()){
                        dicionario.put(termo, significado);
                    }else{
                        System.out.println("Parametros invalidos!");
                    }
                    break;
                case 2:
                    System.out.println(dicionario);
                    System.out.println("Alterar de qual?");
                    String alterar = sc.nextLine();
                    if(dicionario.containsKey(alterar)){
                        System.out.println("Novo significado:");
                        String novoSignificado = sc.nextLine();
                        dicionario.replace(alterar, novoSignificado);
                        break;
                    }else{
                        System.out.println("Termo não existe!");
                        break;
                    }
                case 3:
                    System.out.println(dicionario);
                    System.out.println("Qual?");
                    String remover = sc.nextLine();
                    if(dicionario.containsKey(remover)){
                        dicionario.remove(remover);
                        break;
                    }else{
                        System.out.println("Termo não existe!");
                        break;
                    }
                case 4:
                    System.out.println(dicionario);
                    break;
                case 5:
                    System.out.println(dicionario.keySet());
                    break;
                case 6:
                    System.out.println(dicionario.values());
                    break;
                case 0:
                    System.out.println("Adeus!");
                    break;
                default:
                    System.out.println("Opção inválida!");
                    break;
            } 
       }while(op != 0);

    }
}
