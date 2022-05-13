package Aula7;

public class Circle extends Forma {
    private double radius;

    public Circle(String color, double newRadius){
        super(color);
        assert valid(newRadius): "Invalid radius!";
        if(valid(newRadius)){
            this.radius = newRadius;
        }else{
            System.out.println("Invalid radius!");
        }
    }

    private boolean valid(double radius){
        return radius > 0;
    }

    public double getRadius(){
        return radius;
    }

    public void set(double newRadius){
        assert valid(newRadius): "Invalid radius!";
        if(valid(newRadius)){
            this.radius = newRadius;
        }else{
            System.out.println("Invalid radius!");
        }
    }

    public double area(){
        return Math.PI * radius * radius;
    }

    public double perimetro(){
        return 2 * Math.PI * radius;
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

        Circle other = (Circle) object;
        if(this.getColor().toLowerCase().equals(other.getColor().toLowerCase()) == false){
            return false;
        }else if(Double.compare(radius, other.radius) == 0){
            return true;
        }else{
            return false;
        }

    }

    @Override
    public String toString(){
        return String.format("Circle:\nRadius: %.2f\nArea: %.2f\nPerimeter: %.2f\nColor: %s\n", radius, this.area(), this.perimetro(), this.getColor());
    }
}
