import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

public class StudentAdm {
    private Student student;
    private List<Monitor> observers =  new ArrayList<>();
    private Map<String, Double> grades = new HashMap<>();
    private String state;

    public StudentAdm(Student studnt) {
        this.student = studnt;
    }

    public void attach(Monitor m) {
        observers.add(m);
    }

    public void addScore(String className, double score) {
        student.addScore(className, score);
        grades.put(className, score);
        notifyObservers(score);
    }

    public Student getStudent() {
        return student;
    }

    public String getState() {
        return this.state;
    }  
    
    public void notifyObservers(double grade) {
        for(Monitor m : observers) {
            if(m instanceof Professor) {
                Professor prof = (Professor)m;
                if (grades.containsKey(prof.getClassName()))
                    m.update(student, grades.get(prof.getClassName()));
            } else {
                m.update(student, grade);
            }
        }
    }
}
