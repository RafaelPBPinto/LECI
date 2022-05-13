package Aula7;

public class Triangle extends Forma {
    private double lado1;
    private double lado2;
    private double lado3;

    public Triangle(String color, double lado1, double lado2, double lado3){
        super(color);
        assert valid(lado1, lado2, lado3): "Invalid size!";
        if(valid(lado1, lado2, lado3)){
            this.lado1 = lado1;
            this.lado2 = lado2;
            this.lado3 = lado3;
        }else{
            System.out.println("Invalid size!");
        }
    }
    private boolean valid(double lado1, double lado2, double lado3){
        boolean isValid = false; 
        if(lado1 > 0 && lado2 > 0 && lado3 > 0){
            if((lado1 < lado2 + lado3) && (lado2 < lado1 +lado3) && (lado3 < lado1 + lado2)){
                isValid = true;
            }
        }else{
            isValid = false;
        }
        return isValid;
    }

    public double getLado1(){
        return lado1;
    }

    public double getLado2(){
        return lado2;
    }

    public double getLado3(){
        return lado3;
    }

    public void set(double lado1, double lado2, double lado3){
        assert valid(lado1, lado2, lado3): "Invalid size!";
        if(valid(lado1, lado2, lado3)){
            this.lado1 = lado1;
            this.lado2 = lado2;
            this.lado3 = lado3;
        }else{
            System.out.println("Invalid size!");
        }
    }

    public double area(){
        double p = (lado1 + lado2 + lado3) / 2;
        return Math.sqrt((p * (p - lado1) * (p - lado2) * (p - lado3)));
    }

    public double perimetro(){
        return lado1 + lado2 + lado3;
    }

    @Override
    public boolean equals(Object object){
        if(this == object){
            return true;
        }else if(object == null){
            return false;
        }else if(getClass() != object.getClass()){
            return false;
        }

        Triangle other = (Triangle) object;
        if(this.getColor().toLowerCase().equals(other.getColor().toLowerCase()) == false){
            return false;
        }else if(Double.compare(lado1, other.lado1) == 0 && Double.compare(lado2, other.lado2) == 0 && Double.compare(lado3, other.lado3) == 0){
            return true;
        }else{
            return false;
        }

    }

    @Override
    public String toString(){
        return String.format("Triangle:\na: %.2f\nb: %.2f\nc: %.2f\nArea: %.2f\nPerimeter: %.2f\nColor: %s", lado1, lado2, lado3, this.area(), this.perimetro(), this.getColor());
    }
}
