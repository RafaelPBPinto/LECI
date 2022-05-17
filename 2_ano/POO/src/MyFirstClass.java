public class MyFirstClass {
    public static void main(String[] args) {
        System.out.println("Hello VS Code!");
        int sum = 0;
        for (int i = 1; i <= 100; i++) {
        sum += i;
        }
        System.out.println(sum);
        int fivefact = 1;
        for(int j = 0; j < 5;j++){
            fivefact += fivefact*j;
        }
        System.out.println(fivefact);
    }
}