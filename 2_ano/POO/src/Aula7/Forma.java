package Aula7;

public abstract class Forma {
    private String color;

    public Forma(String newColor){
        if(newColor.equals("")){
            System.out.print("Cor invalida!");
        }else{
            color = newColor;
        }
    }

    public String getColor(){
        return color;
    }

    public void changeColor(String newColor){
        if(newColor.equals("")){
            System.out.print("Cor invalida!");
        }else{
            color = newColor;
        }
    }

    public abstract double area();
    public abstract double perimetro();
}
