package Aula6;
import java.util.ArrayList;

public class Conjunto {
    private ArrayList<Integer> array = new ArrayList<>();

    public void insert(int n){
        if(!contains(n)){
            array.add(n);
        }
    }

    public int get(int pos){
        return array.get(pos);
    }

    public boolean contains(int n){
        for(int i = 0; i < this.size(); i++){
            if(array.get(i) == n){
                return true;
            }
        }
        return false;
    }

    public void remove(int n){
        if(contains(n)){
            for(int i = 0; i < this.size(); i++){
                if(array.get(i) == n){
                    array.remove(i);
                }
            }
        }
    }

    public void empty(){
        array.clear();
    }

    @Override
    public String toString(){
        String arrayString = "";
        for(int i = 0; i < this.size(); i++){
            arrayString += String.format("%d ", array.get(i));
        }
        return arrayString;
    }

    public int size(){
        return array.size();
    }

    public Conjunto combine(Conjunto add){
        Conjunto combine = new Conjunto();
        for(int i = 0; i < this.size(); i++){
            combine.insert(this.get(i));
        }
        for(int i = 0; i < add.size(); i++){
            combine.insert(add.get(i));
        }
        return combine;
    }

    public Conjunto subtract(Conjunto dif){
        Conjunto subtract = new Conjunto();
        for(int i = 0; i < this.size(); i++){
            boolean exist = false;
            for(int k = 0; k < dif.size(); k++){
                if(this.get(i) == dif.get(k)){
                    exist = true;
                }
            }
            if(!exist){
                subtract.insert(this.get(i));
            }
        }
        return subtract;
    }

    public Conjunto intersect(Conjunto inter){
        Conjunto intersect = new Conjunto();
        for(int i = 0; i < this.size(); i++){
            for(int k = 0; k < inter.size(); k++){
                if(this.get(i) == inter.get(k)){
                    intersect.insert(this.get(i));
                }
            }
        }
        return intersect;
    }
}
