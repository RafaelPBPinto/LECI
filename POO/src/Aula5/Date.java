package Aula5;

public class Date {
    private int day;
    private int month;
    private int year;

    public Date(int day, int month, int year){
        if(!valid(day, month, year)){
            System.out.println("Data invalida!");
        }else{
            this.day = day;
            this.month = month;
            this.year = year;
        }
    }

    boolean validMonth(int month){
        return (month > 0 && month <= 12);
    }

    int monthDays(int month, int year){
        if(month == 4 || month == 6 || month == 9 || month == 11){
            return 30;
        }else if(month == 2){
            if((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)){
                return 29;
            }else{
                return 28;
            }
        }else{
            return 31;
        }
    }

    boolean leapYear(int year){
        return ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0));
    }

    boolean valid(int day, int month, int year){
        if(!validMonth(month) || year < 1582){
            return false;
        }else{
            if(month == 4 || month == 6 || month == 9 || month == 11){
                if(day <= 0 || day > 30){
                    return false;
                }else{
                    return true;
                }
            }else if(month == 2){
                if(leapYear(year)){
                    if(day <= 0 || day > 29){
                        return false;
                    }else{
                        return true;
                    }
                }else{
                    if(day <= 0 || day > 28){
                        return false;
                    }else{
                        return true;
                    }
                }
            }else{
                if(day <= 0 || day > 31){
                    return false;
                }else{
                    return true;
                }
            }
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

    @Override
    public String toString(){
        return String.format("%04d-%02d-%02d", year, month, day);
    }
}
