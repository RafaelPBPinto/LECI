import java.util.List;
import java.util.Scanner;

public class TestEx1 {
    private static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
        Telemovel t1 = new Telemovel("Samsung Galaxy S10", "Exynos 9820", 779, 8, 128, 12);
        Telemovel t2 = new Telemovel("Huawei P30 Pro", "Kirin 980", 999, 8, 128, 40);
        Telemovel t3 = new Telemovel("iPhone XS", "Apple A12 Bionic", 1179, 4, 64, 12);
        Telemovel t4 = new Telemovel("Xiaomi Mi 9", "Snapdragon 855", 499, 6, 64, 48);

        List<Telemovel> telemoveis = List.of(t1, t2, t3, t4);
        Context context = new Context(new InsertionSort());

        System.out.println("Telemoveis:");
        printTelemoveis(telemoveis);
        int opcao1 = -1;
        int opcao2 = 0;

        while(opcao1 != 10) {
            printMenu1();
            opcao1 = sc.nextInt(); 
            printMenu2();
            opcao2 = sc.nextInt();
            if (opcao2 == 1) {
                context.setStrategy(new InsertionSort());
            } else {
                context.setStrategy(new QuickSort());
            }
            switch(opcao1) {
                case 1:
                    printTelemoveis(context.sortByNome(telemoveis, true));
                    break;
                case 2:
                    printTelemoveis(context.sortByNome(telemoveis, false));
                    break;
                case 3:
                    printTelemoveis(context.sortByPreco(telemoveis, true));
                    break;
                case 4:
                    printTelemoveis(context.sortByPreco(telemoveis, false));
                    break;
                case 5:
                    printTelemoveis(context.sortByRamMemory(telemoveis, true));
                    break;
                case 6:
                    printTelemoveis(context.sortByRamMemory(telemoveis, false));
                    break;
                case 7:
                    printTelemoveis(context.sortByRomMemory(telemoveis, true));
                    break;
                case 8:
                    printTelemoveis(context.sortByRomMemory(telemoveis, false));
                    break;
                case 9:
                    printTelemoveis(context.sortByCamera(telemoveis, true));
                    break;
                case 10:
                    System.out.println("Adeus!");
                    break;
            }     
        }
    }

    public static void printMenu1() {
        System.out.println("1 - Ordenar por nome (ascendente)");
        System.out.println("2 - Ordenar por nome (descendente)");
        System.out.println("3 - Ordenar por preco (ascendente)");
        System.out.println("4 - Ordenar por preco (descendente)");
        System.out.println("5 - Ordenar por RAM (ascendente)");
        System.out.println("6 - Ordenar por RAM (descendente)");
        System.out.println("7 - Ordenar por ROM (ascendente)");
        System.out.println("8 - Ordenar por ROM (descendente)");
        System.out.println("9 - Ordenar por camera (ascendente)");
        System.out.println("10 - Sair");
        System.out.print("Opcao: ");
    }

    public static void printMenu2() {
        System.out.println("1 - Insertion Sort");
        System.out.println("2 - Quick Sort");
        System.out.print("Opcao: ");
    }

    public static void printTelemoveis(List<Telemovel> telemoveis) {
        System.out.println("Nome\tProcessador\tPreco\tRAM\tROM\tCamera");
        for (Telemovel t : telemoveis) {
            System.out.println(t);
        }
    }
}
