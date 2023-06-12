package lab03.voos;

public enum Type {
    T,
    E;

    public static Type getType(String type) {
        switch (type) {
            case "T":
                return Type.T;
            case "E":
                return Type.E;
            default:
                return null;
        }
    }
}
