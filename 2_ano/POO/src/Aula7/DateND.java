package Aula7;

public class DateND extends Date {
    private static int numdays = 1;    // dia 1 => 1 de janeiro de 2000

    public DateND(int day, int month, int year){
        assert valid(day, month, year): "Invalid parameters!";
        if(valid(day, month, year)){
            int newNumdays = 1;
            int countYear = 2000;
            int totalMonths = month + getMonthsPast2000(year);
            for(int i = 0; i < totalMonths; i++){
                if(i % 12 == 0){
                    newNumdays += monthDays(i, countYear);
                    countYear++; 
                }else{
                    newNumdays += monthDays(i, countYear);
                }
            }
            numdays = newNumdays;
        }else{
            System.out.println("Invalid parameters");
        }
    }

    private int getMonthsPast2000(int year){
        int count = 0;
        for(int i = 0; i < (year - 2000); i++){
            count += 12;
        }
        return count;
    }

    public void set(int day, int month, int year){
        assert valid(day, month, year): "Invalid parameters!";
        if(valid(day, month, year)){
            int newNumdays = 1;
            int countYear = 2000;
            int totalMonths = month + getMonthsPast2000(year);
            for(int i = 0; i < totalMonths; i++){
                if(i % 12 == 0){
                    newNumdays += monthDays(i, countYear);
                    countYear++; 
                }else{
                    newNumdays += monthDays(i, countYear);
                }
            }
            numdays = newNumdays;
        }else{
            System.out.println("Invalid parameters");
        }
    }

    public int getDay(){
        int day = 1;
        for(int i = 0; i < numdays; i++){
            if(leapYear(getYear())){
                if((getMonth() == 1 || getMonth() == 3 || getMonth() == 5 || getMonth() == 7 || getMonth() == 8 || getMonth() == 10 || getMonth() == 12) && day == 31){
                    day = 1;
                }else if(getMonth() == 2 && day == 29){
                    day = 1;
                }else if((getMonth() == 4 || getMonth() == 6 || getMonth() == 9 || getMonth() == 11) && day == 30){
                    day = 1;
                }else{
                    day++;
                }
            }else{
                if((getMonth() == 1 || getMonth() == 3 || getMonth() == 5 || getMonth() == 7 || getMonth() == 8 || getMonth() == 10 || getMonth() == 12) && day == 31){
                    day = 1;
                }else if(getMonth() == 2 && day == 28){
                    day = 1;
                }else if((getMonth() == 4 || getMonth() == 6 || getMonth() == 9 || getMonth() == 11) && day == 30){
                    day = 1;
                }else{
                    day++;
                }
            }
        }
        return day;
    }

    public int getMonth(){
        int month = 1;
        for(int i = 0; i < numdays; i++){
            if(leapYear(getYear())){
                if((month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10) && (i % 31 == 0)){
                    month++;
                }else if(month == 2 && (i % 29 == 0)){
                    month++;
                }else if((month == 4 || month == 6 || month == 9 || month == 11) && (i % 30 == 0)){
                    month++;
                }else if(month == 12 && (i % 31 == 0)){
                    month = 1;
                }
            }else{
                if(month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 && (i % 31 == 0)){
                    month++;
                }else if(month == 2 && (i % 28 == 0)){
                    month++;
                }else if(month == 4 || month == 6 || month == 9 || month == 11 && (i % 30 == 0)){
                    month++;
                }else if(month == 12 && (i % 31 == 0)){
                    month = 1;
                }
            }
        }
        return month;
    }
    
    public int getYear(){
        int year = 2000;
        for(int i = 0; i < numdays; i++){
            if(i % 365 == 0){
                year++;
            }
        }
        return year;
    }

    public void increment(){
        numdays++;
    }

    public void decrement(){
        numdays--;
    }

    @Override
    public String toString(){
        return String.format("%04d-%02d-%02d", getYear(), getMonth(), getDay());
    }
}
