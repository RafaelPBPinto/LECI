public class Professor extends Monitor {
    private String className;
    private String name;

    public Professor(StudentAdm adm, String name, String className) {
        super();
        this.name = name;
        this.className = className;
        this.adm = adm;
        adm.attach(this);
    }

    public String getName() {
        return name;
    }

    public String getClassName() {
        return className;
    }

    public void update(Student student, double grade) {
        System.out.printf("Professor %s of %s class evaluated student %s (%d) with score: %.1f\n", name, className, student.getName(), student.getId(), grade);
    }

}
