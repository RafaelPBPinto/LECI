// Author: Rafael Pinto, 103379, p5_09

package ListaContactos;

/*
 * Class Contact
 * Represents a contact
 */
public class Contact {
    private String name;
    private int number;

    /*
     * Constructor
     * Receives the contact name and number
     * @param name the contact name
     * @param number the contact number
     */
    public Contact(String name, int number) {
        this.name = name;
        this.number = number;
    }

    /*
     * Method getName
     * @return the contact name
     */
    public String getName() {
        return name;
    }

    /*
     * Method getNumber
     * @return the contact number
     */
    public int getNumber() {
        return number;
    }

    /*
     * Method setName
     * Sets the contact name
     * @param name the contact name
     */
    public void setName(String name) {
        this.name = name;
    }

    /*
     * Method setNumber
     * Sets the contact number
     * @param number the contact number
     */
    public void setNumber(int number) {
        this.number = number;
    }

    /*
     * Method toString
     * @return the contact in string format
     */
    @Override
    public String toString() {
        return String.format("Name: %s\nNumber: %d", name, number);
    }
}
