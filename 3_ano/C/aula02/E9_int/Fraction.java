public class Fraction {
    int numerator;
    int denominator;

    public Fraction (int numerator, int denominator) {
       this.numerator =  numerator;
       this.denominator = denominator;
    }

    public Fraction (int numerator) {
       this.numerator = numerator;
       this.denominator = 1;
    }

    @Override
    public String toString() {
       if (denominator == 1)
          return Integer.toString(numerator);
       if (numerator == 0)
          return "0";
       return numerator + "/" + denominator;
    }  
}

