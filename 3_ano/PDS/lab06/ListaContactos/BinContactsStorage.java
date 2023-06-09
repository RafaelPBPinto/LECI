// Author: Rafael Pinto, 103379, p5_09

package ListaContactos;

import java.util.List;
import java.util.ArrayList;

/*
 * Class BinContactsStorage
 * Implements the ContactsStorageInterface
 * Reads and writes contacts from a binary file
 */
public class BinContactsStorage implements ContactsStorageInterface {
    private String fileName;

    /*
     * Constructor
     * Receives the file name
     * @param fileName the file name
     */
    public BinContactsStorage(String fileName) {    
        this.fileName = fileName;
    }

    /*
     * Method loadContacts
     * Reads the contacts from the file
     * @return the list of contacts
     */
    public List<Contact> loadContacts() {
        List<Contact> contacts = new ArrayList<>();
        List<String> file_lines = FileUtils.readFile(fileName);

        System.out.println(file_lines.size());
        for (String line : file_lines) {
            String[] parts = line.split("\t");
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
     * Writes the contacts to the file
     * @param list the list of contacts
     * @return true if the contacts were saved successfully, false otherwise
     */
    public boolean saveContacts(List<Contact> list) {
        String text = "";
        for (Contact contact : list) {
            if (!validateContact(contact)) {
                return false;
            }
            text += contact.getName() + "\t" + contact.getNumber() + "\n";
        }
        FileUtils.writeFile(fileName, text);
        return true;
    }

    /*
     * Method validateContact
     * Validates the contact
     * @param contact the contact
     * @return true if the contact is valid, false otherwise
     */
    private boolean validateContact(Contact contact) {
        if (contact.getName() == null || contact.getName().equals("")) {
            System.out.println("Invalid name!");
            return false;
        }
        if (contact.getNumber() < 100000000  || contact.getNumber() > 999999999) {  // guarantees that the number is 9 digits long
            System.out.println("Invalid number!");
            return false;
        }
        return true;
    }
}
