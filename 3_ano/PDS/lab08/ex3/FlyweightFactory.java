// Author: Rafael Pinto, 103379, p5_09

import java.util.HashMap;
import java.util.Map;
import startypes.*;

public class FlyweightFactory {
    private Map<Character, StarType> stars = new HashMap<Character, StarType>();

    public StarType createStar(char type){
        StarType star=null;
        if (stars.containsKey(type)){
            star = stars.get(type);
        } else {
            switch (type) {
            case 'O' : star = new OStar(); break;
            case 'A' : star = new AStar(); break;
            case 'B' : star = new BStar(); break;
            case 'F' : star = new FStar(); break;
            case 'G' : star = new GStar(); break;
            case 'K' : star = new KStar(); break;
            case 'M' : star = new MStar(); break;
            }
            stars.put(type, star);
        }
        return star;
    }
}
