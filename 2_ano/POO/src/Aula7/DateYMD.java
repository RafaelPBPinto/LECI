package Aula7;

public class DateYMD extends Date {
    private int day;
    private int month;
    private int year;

    public DateYMD(int day, int month, int year){
        if(!valid(day, month, year)){
            System.out.println("Data invalida!");
        }else{
            this.day = day;
            this.month = month;
            this.year = year;
        }
    }

    public void set(int day, int month, int year){
        this.day = day;
        this.month = month;
        this.year = year;
    }

    public int getDay(){
        return day;
    }

    public int getMonth(){
        return month;
    }

    public int getYear(){
        return year;
    }

    public void increment(){    
        if(day == monthDays(month, year) && month != 12){
            day = 1;
            month++;
        }else if(month == 12){
            if(day == 31){
                day = 1;
                month = 1;
                year++;
            }else{
                day++;
            }
        }else{
            day++;
        }
    }

    public void decrement(){
        if(month == 5 || month == 7 || month == 10 || month == 12){
            if(day == 1){
                day = 30;
                month--;
            }else{
                day--;
            }
        }else if(month == 3){
            if(leapYear(year)){
                if(day == 1){
                    day = 29;
                    month--;
                }else{
                    day--;
                }
            }else{
                if(day == 1){
                    day = 28;
                    month--;
                }else{
                    day--;
                }
            }
        }else if(month == 1){
            if(day == 1){
                day = 31;
                month = 12;
                year--;
            }else{
                day--;
            }
        }else{
            if(day == 1){
                day = 31;
                month--;
            }else{
                day--;
            }
        }
    }

    public int compareTo(Date d){
        if(this.year < d.getYear()){
            return -1;
        }else if(this.year > d.getYear()){
            return 1;
        }else if(this.month < d.getMonth()){
            return -1;
        }else if(this.month > d.getMonth()){
            return 1;
        }else if(this.day < d.getDay()){
            return -1;
        }else if(this.day > d.getDay()){
            return 1;
        }else{
            return 0;
        }
    }

    @Override
    public String toString(){
        return String.format("%04d-%02d-%02d", year, month, day);
    }
}
