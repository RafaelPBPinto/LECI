// Exercicio proposto pelo professor na aula //
// não terminado //
package Aula5;

public class DateD {
    private int numdays;
    // dia 1 => 1 jan 2000

    public DateD(int day, int month, int year){
        assert valid(day, month, year): "Invalid parameters!";
        if(valid(day, month, year)){
            int newNumdays = 0;
            int countYear = 2000;
            int totalMonths = month + getMonthsPast2000(year);
            for(int i = 0; i < totalMonths; i++){
                if(i % 12 == 0){
                    newNumdays += getMonthDays(i, countYear);
                    countYear++; 
                }else{
                    newNumdays += getMonthDays(i, countYear);
                }
            }
            this.numdays = newNumdays;
        }else{
            System.out.println("Invalid parameters");
        }
    }

    private int getMonthDays(int month, int year){
        switch(month){
            case 4:
            case 6:
            case 9:
            case 11:
                return 30;
            case 2:
                if((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)){
                    return 29;
                }else{
                    return 28;
                }
            default:
                return 31;
        }
    }

    private int getMonthsPast2000(int year){
        int count = 0;
        for(int i = 0; i < (year - 2000); i++){
            count += 12;
        }
        return count;
    }

    private boolean leapYear(int year){
        return ((year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0));
    }

    private boolean validMonth(int month){
        return (month > 0 && month <= 12);
    }

    private boolean valid(int day, int month, int year){
        if(!validMonth(month) || year < 2000){
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
        assert valid(day, month, year): "Invalid parameters!";
        if(valid(day, month, year)){
            int newNumdays = 0;
            int countYear = 2000;
            int totalMonths = month + getMonthsPast2000(year);
            for(int i = 0; i < totalMonths; i++){
                if(i % 12 == 0){
                    newNumdays += getMonthDays(i, countYear);
                    countYear++; 
                }else{
                    newNumdays += getMonthDays(i, countYear);
                }
            }
            this.numdays = newNumdays;
        }else{
            System.out.println("Invalid parameters");
        }
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

    @Override
    public String toString(){
        return String.format("%04d-%02d-%02d", getYear(), getMonth(), getDay());
    }
}
