import java.util.ArrayList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Iterator;

// GradingSystem class
public class GradingSystem {
    List<StudentAdm> studentsAdm = new ArrayList<>();
    List<Professor> professors = new ArrayList<>();
    List<Director> directors = new ArrayList<>();

    // Add a student to the system
    // The director of student's course is added as Monitor
    public StudentAdm addStudent(Student student) {
        StudentAdm studentAdm = new StudentAdm(student);
        if (directors.size() > 0) {
            Monitor courseDirector = getDirectorByCourse(student.getCourse());
            studentAdm.attach(courseDirector);
        }
        studentsAdm.add(studentAdm);
        return studentAdm;
    }   

    // Add a director to the system
    // The director is added as monitor of the students in the same course
    public void addDirector(Course course) {
        if (studentsAdm.size() > 0){
            List<StudentAdm> students =  getStudentsByCourse(course);
            for (StudentAdm s : students) {
                directors.add(new Director(s, course));
            }
        }
    } 

    public void addProfessor(Professor professor) {
        professors.add(professor);
    }


    public List<Director> getDirectors() {
        return directors;
    }

    public List<Professor> getProfessors() {
        return professors;
    }

    public Director getDirectorByCourse(Course course) {
        for (Director d : directors) {
            if (d.getCourseName() == course)
                return d;
        }
        return null;
    }

    public List<StudentAdm> getStudentsByCourse(Course course) {
        List<StudentAdm> students = new ArrayList<>();
        for (StudentAdm s : studentsAdm){
            if (s.getStudent().getCourse() == course)
                students.add(s);
        }
        return students;
    }

    public Iterator<Student> iterator(Course course) {
        return new ListIterator(course);
    }

    private class ListIterator implements Iterator<Student> {
        private List<Student> students;
        private int index;

        ListIterator(Course course) {
            this.students = getCourseStudents(course);
            this.index = 0;
        }

        private List<Student> getCourseStudents(Course course) {
            List<Student> students = new ArrayList<>();
            for(StudentAdm s : studentsAdm) {
                if (s.getStudent().getCourse() == course)
                    students.add(s.getStudent());
            }
            return students;
        }

        public boolean hasNext() {
            return (index < students.size());
        }

        public Student next() {
            if (hasNext())
                return this.students.get(index++);
            throw new NoSuchElementException("only " + students.size() + "elements");
        }
    }
}