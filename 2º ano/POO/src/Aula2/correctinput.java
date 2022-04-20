package Aula2;

public class correctinput {
    public  static boolean iscorrect(double value, double max, double min){
        boolean iscorrect = true;
        if(value > max || value < min){
            return  !iscorrect;
        }else{
            return  iscorrect;
        }
    }
}
