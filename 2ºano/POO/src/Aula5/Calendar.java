package Aula5;

public class Calendar {
    private String[] monthstring = {"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"};
    private int firstweekday;
    private int year;
    private Date data;
    
    public Calendar(int firstweekday, int year){
        this.firstweekday = firstweekday;
        this.year = year;
        this.data = new Date(1, 1, year);
    }

    public int year(){
        return year;
    }

    public int firstWeekdayOfYear(){
        return firstweekday;
    }

    public int firstWeekdayOfMonth(int month){
        int weekday = 0;
        int mes = 1;
        while(mes != month){
            weekday += data.monthDays(mes, year);
            mes++;
        }
        if((weekday + firstweekday) % 7 == 0){
            return 7;
        }else{
            return (weekday + firstweekday) % 7;
        }
    }

    public void printMonth(int month){
        int monthdays = data.monthDays(month, data.getYear());
        int weekday = firstWeekdayOfMonth(month); 
        System.out.println();
        System.out.printf("%11s %4d\n", monthstring[month - 1], year);
        System.out.println("Su Mo Tu We Th Fr Sa");
        int days = 1;

        for(int i = 1; i < weekday; i++){
            System.out.print("   ");
            days++;
        }
        for(int i = 0; i < monthdays; i++){
            if(days % 7 == 0){
                System.out.printf("%2d\n", i + 1);
                days++;
            }else{
                System.out.printf("%2d ", i + 1);
                days++;
            }
        }
        System.out.println();
    }

    @Override
    public String toString(){
        String calendar = "";
 
        for(int i = 1; i <= 12; i++){
            int weekday = firstWeekdayOfMonth(i);
            int days = 1;
            calendar += String.format("\n%11s %4d\n", monthstring[i - 1], year);
            calendar += "Su Mo Tu We Th Fr Sa\n";

            for(int j = 1; j < weekday; j++){
                calendar += "   ";
                days++;
            }
            for(int k = 0; k < data.monthDays(i, year); k++){
                if(days % 7 == 0){
                    calendar += String.format("%2d\n", k + 1);
                    days++;
                }else{
                    calendar += String.format("%2d ", k + 1);
                    days++;
                }
            }
            
            calendar += "\n";
        }

        return calendar;
    }
}
