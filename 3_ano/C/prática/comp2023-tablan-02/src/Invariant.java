public class Invariant<T> {
    public InvariantInterface<T> lambda = null;
    public String stringError;
    T value;

    public Invariant(InvariantInterface<T> lam,String strErr) {
        lambda = lam;
        stringError = strErr;
    }

    public Invariant(InvariantInterface<T> lam,String strErr,T v) {
        lambda = lam;
        stringError = strErr;
        set(v);
    }

    public void set(T v) {
        if(lambda == null)
        {
            System.err.println("lambda is null");
            return;
        }

        if(!lambda.method(v)) {
            System.err.println(stringError);
            value = null;
        }
        else
            value = v;
    }

    public T get()
    {
        return value;
    }

    @FunctionalInterface
    public interface InvariantInterface<T> {
        public boolean method(T value);
    }
}
