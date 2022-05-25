package Aula5;

public class Rectangle {
    private double width;
    private double height;

    public Rectangle(double newWidth, double newHeight){
        assert valid(newWidth, newHeight): "Invalide width or height!";
        if(valid(newWidth, newHeight)){
            this.width = newWidth;
            this.height = newHeight;
        }else{
            System.out.println("Invalide width or height!");
        }
    }

    private boolean valid(double width, double height){
        return (width > 0 && height > 0);
    }

    public double getWidth(){
        return width;
    }

    public double getHeight(){
        return height;
    }

    public void set(double newWidth, double newHeight){
        assert valid(newWidth, newHeight): "Invalide width or height!";
        if(valid(newWidth, newHeight)){
            this.width = newWidth;
            this.height = newHeight;
        }else{
            System.out.println("Invalide width or height!");
        }
    }

    public double area(){
        return width * height;
    }

    public double perimeter(){
        return (width * 2) + (height * 2);
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

        Rectangle other = (Rectangle) object;
        if(Double.compare(width, other.width) == 0 && Double.compare(height, other.height) == 0){
            return true;
        }else{
            return false;
        }

    }

    @Override
    public String toString(){
        return String.format("Rectangle:\nWidth: %.2f\nHeight: %.2f\nArea: %.2f\nPerimeter: %.2f\n", width, height, this.area(), this.perimeter());
    }
}