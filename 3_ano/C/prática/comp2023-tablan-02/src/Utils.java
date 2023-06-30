import java.util.Scanner;
public class Utils {
    public static int max(int... values) {
        if(values.length == 0)
            return 0;

        int max = values[0];
        for(int i = 1; i < values.length; i++) {
            if(values[i] > max)
                max = values[i];
        }

        return max;
    }

    public static String centerString(String text,int len)
    {
        String out = String.format("%" + len + "s%s%" + len + "s","",text,"");
        float mid = out.length() / 2;
        float start = mid - (len / 2);
        float end = start + len;
        return out.substring((int)start, (int)end);
    }

    public static String generateLineSeparator(int len,String sep)
    {
        StringBuilder sb = new StringBuilder();
        sb.append(sep);
        for(int i = 0; i < len; i++)
            sb.append(sep);

        return sb.toString();
    }

    public static String input(String text ){
        Scanner sc = new Scanner(System.in);
        if(!text.equals("") )
            System.out.print(text);
        String out = sc.nextLine();
        return out;
    }
}
