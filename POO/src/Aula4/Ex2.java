package Aula4;
import java.util.Scanner;

public class Ex2 {
    public static final Scanner sc =  new Scanner(System.in);

    public static int countDigits(String s){
        int count = 0;
        for(int i = 0; i < s.length(); i++){
            if(Character.isDigit(s.charAt(i))){
                count++;
            }
        }
        return count;
    }

    public static int countSpaces(String s){
        int count = 0;
        for(int i = 0; i < s.length(); i++){
            if(s.charAt(i) == ' '){
                count++;
            }
        }
        return count;
    }

    public static boolean justLowerCase(String s){
        s = s.replaceAll(" ", "");
        boolean lowerCase = true;
        for(int i = 0; i < s.length(); i++){
            if(!Character.isLowerCase(s.charAt(i))){
                lowerCase = false;
            }
        }
        return lowerCase;
    }

    public static String correctSpaces(String s){
        String newString = "";
        boolean flag = false;
        for(int i=0; i < s.length(); i++){
            if(s.charAt(i) != ' '){
                newString += s.charAt(i);
                flag = true;
            }else{
                if(flag){
                    newString += ' ';
                    flag = false;
                }
            }
        }
        return newString;
    }

    public static boolean isPalindrome(String s){
        String sReverse = "";
        boolean palindrome = false;
        s = s.toLowerCase();
        s = s.replaceAll(" ", "");
        for(int i = s.length() - 1; i >= 0; i--){
            sReverse += s.charAt(i);
        }
        for(int i = 0; i < s.length(); i++){
            if(s.charAt(i) != sReverse.charAt(i)){
                return false;
            }else{
                palindrome = true;
            }
        }
        return palindrome;
    }

    public static void main(String[] args){
        System.out.println("Introduza uma frase: ");
        String frase = sc.nextLine();
        System.out.println("countDigits: " + countDigits(frase));
        System.out.println("countSpaces: " + countSpaces(frase));
        System.out.println("justLowerCase: " + justLowerCase(frase));
        System.out.println("correctSpaces: " + correctSpaces(frase));
        System.out.println("isPalindrome: " + isPalindrome(frase));
    }

}
