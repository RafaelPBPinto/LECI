package Aula7;

public abstract class Date implements Comparable<Date> {
    public boolean validMonth(int month){
        return (month > 0 && month <= 12);
    }

    public boolean leapYear(int year){
        return ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0));
    }
    
    public int monthDays(int month, int year){
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

    public boolean valid(int day, int month, int year){
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

    public abstract void set(int day, int month, int year);
    public abstract int getDay();
    public abstract int getMonth();
    public abstract int getYear();
    public abstract void increment();
    public abstract void decrement();
    public abstract int compareTo(Date d);
}
