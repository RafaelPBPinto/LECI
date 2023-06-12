public class Director extends Monitor {
    private Course degreeName;

    public Director (StudentAdm student, Course degree) {
        super();
        if (student.getStudent().getCourse() == degree) {
            this.degreeName = degree;
            this.adm = student;
            adm.attach(this);
        } else {
            System.out.println("Error: Director's course must be the same as student's course");
        }
    }

    public Course getCourseName() {
        return degreeName;
    }

    public void update(Student student, double grade) {
        System.out.printf("%s director reports that student %s (%d) has changed the overall grade: %.1f\n", degreeName, student.getName(), student.getId(), student.getOverallGrade());
    }

}
