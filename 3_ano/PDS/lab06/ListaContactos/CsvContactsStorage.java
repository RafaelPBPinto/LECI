// Author: Rafael Pinto, 103379, p5_09

package ListaContactos;

import java.util.List;
import java.util.ArrayList;

/*
 * Class CsvContactsStorage
 * Implements the ContactsStorageInterface
 * Saves and loads contacts from a csv file
 */
public class CsvContactsStorage implements ContactsStorageInterface {
    private String fileName;

    /*
     * Constructor
     * @param fileName the name of the file
     */
    public CsvContactsStorage(String fileName) {
        this.fileName = fileName;
    }

    /*
     * Method loadContacts
     * Loads the contacts from the file
     * @return the list of contacts
     */
    public List<Contact> loadContacts() {
        List<Contact> contacts = new ArrayList<>();
        List<String> file_lines = FileUtils.readFile(fileName);

        for (String line : file_lines) {
            String[] parts = line.split(",");
            if(parts.length == 2){
                if(!parts[0].equals("") && !parts[1].equals("")){
                    String name = parts[0];
                    int number = Integer.parseInt(parts[1]);
                    contacts.add(new Contact(name, number));
                }
            }
        }
        return contacts;
    }

    /*
     * Method saveContacts
     * Saves the contacts to the file
     * @param list the list of contacts
     * @return true if the contacts were saved successfully
     */
    public boolean saveContacts(List<Contact> list) {
        String text = "";
        for (Contact contact : list) {
            if (!validateContact(contact)) {
                return false;
            }
            text += contact.getName() + "," + contact.getNumber() + "\n";
        }
        FileUtils.writeFile(fileName, text);
        return true;
    }

    /*
     * Method validateContact
     * Validates the contact
     * @param contact the contact to be validated
     * @return true if the contact is valid
     */
    private boolean validateContact(Contact contact) {
        if (contact.getName() == null || contact.getName().equals("")) {
            System.out.println("Invalid name!");
            return false;
        }
        if (contact.getNumber() < 0  || contact.getNumber() > 999999999) {
            System.out.println("Invalid number!");
            return false;
        }
        return true;
    }
}
