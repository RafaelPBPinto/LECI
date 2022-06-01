package Aula10;
import java.util.Map;
import java.util.LinkedHashMap;
import java.util.Scanner;
import java.util.ArrayList;

public class Ex2 {
    public static final Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        Map<String, ArrayList<String>> dicionario = new LinkedHashMap<>();
        ArrayList<String> branco = new ArrayList<>();
        branco.add("Que tem a cor da neve");
        branco.add("Descorado, pálido");
        branco.add("Cor de leite");
        ArrayList<String> barco = new ArrayList<>();
        barco.add("Veículo que anda na água");
        ArrayList<String> carro = new ArrayList<>();
        carro.add("Veículo a motor para andar na estrada");
        carro.add("Veículo para transportes de passageiros");
        ArrayList<String> peixe = new ArrayList<>();
        peixe.add("Animal aquático");
        ArrayList<String> computador = new ArrayList<>();
        computador.add("Dispositivo eletrónico");
        computador.add("Pode ser usado para pesquisar na Internet");
        String termo;
        int op;
        // Lista de termos exemplo //
        dicionario.put("branco", branco);
        dicionario.put("barco", barco);
        dicionario.put("carro", carro);
        dicionario.put("peixe", peixe);
        dicionario.put("computador", computador);
        do{
            System.out.println("Menu");
            System.out.println("1-Introduzir termo");
            System.out.println("2-Acrescentar significado");
            System.out.println("3-Remover termo");
            System.out.println("4-Remover significado");
            System.out.println("5-Listar pares termos-significado");
            System.out.println("6-Listar termos");
            System.out.println("7-Listar significados");
            System.out.println("0-Sair");
            op = sc.nextInt();
            sc.nextLine();
            switch(op){
                case 1:
                    System.out.println("Insira um termo:");
                    termo = sc.nextLine();
                    System.out.println("Insira o seu significado:");
                    ArrayList<String> significado = new ArrayList<>();
                    significado.add(sc.nextLine());
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
                    ArrayList<String> newSignificado = new ArrayList<>();
                    if(dicionario.containsKey(alterar)){
                        for(int i = 0; i < dicionario.get(alterar).size(); i++){
                            newSignificado.add(dicionario.get(alterar).get(i));
                        }
                        System.out.println("Novo significado:");
                        String novoSignificado = sc.nextLine();
                        newSignificado.add(novoSignificado);
                        dicionario.replace(alterar, newSignificado);
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
                    System.out.println("De qual palavra?");
                    String retirar = sc.nextLine();
                    if(dicionario.containsKey(retirar)){
                        System.out.println(dicionario.get(retirar));
                        System.out.println("Qual significado?");
                        String retirarSignificado = sc.nextLine();
                        if(dicionario.get(retirar).contains(retirarSignificado)){
                            dicionario.get(retirar).remove(retirarSignificado);
                        }else{
                            System.out.println("Significado não existe!");
                        }
                    }else{
                        System.out.println("Termo não existe!");
                    }
                    break;
                case 5:
                    System.out.println(dicionario);
                    break;
                case 6:
                    System.out.println(dicionario.keySet());
                    break;
                case 7:
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
