// Author: Rafael Pinto, 103379, p5_09

package ListaContactos;

import java.util.List;
import java.util.ArrayList;

/*
 * Class ContactsBridge
 * Implements the ContactsInterface
 */
public class ContactsBridge implements ContactsInterface{
    private ContactsStorageInterface store;
    private List<Contact> contacts = new ArrayList<>();

    /*
     * Method openAndLoad
     * Sets the storage type and loads the contacts
     * @param store the storage type
     */
    public void openAndLoad(ContactsStorageInterface store) {
        this.store = store;
        contacts = store.loadContacts();
    }

    /*
     * Method saveAndClose
     * Saves the contacts
     */
    public void saveAndClose() {
        store.saveContacts(contacts);
    }

    /*
     * Method saveAndClose
     * @param store the storage type
     * Saves the contacts and sets the storage type
     */
    public void saveAndClose(ContactsStorageInterface store) {
        this.store = store;
        store.saveContacts(contacts);
    }

    /*
     * Method exist
     * Check if the contact already exist
     * @param contact
     */
    public boolean exist(Contact contact) {
        if (contacts.contains(contact)) {
            return true;
        }
        for (Contact c : contacts) {
            if (c.getNumber() == contact.getNumber()) {
                return true;
            }
        }
        return false;
    }

    /*
     * Method getByName
     * Gets a contact by name
     * @param name the name of the contact
     */
    public Contact getByName(String name) {
        System.out.println("Searching for " + name);
        for (Contact contact : contacts) {
            if (contact.getName().equals(name)) {
                return contact;
            }
        }
        System.out.println("Contact not found!");
        return null;
    }

    /*
     * Method add
     * Adds a contact
     * @param contact the contact to add
     */
    public boolean add(Contact contact) {
        if (exist(contact)) {
            System.out.println("Contact already exists!");
            return false;
        }
        contacts.add(contact);
        System.out.printf("%s, %d added!\n", contact.getName(), contact.getNumber());
        return true;
    }

    /*
     * Method remove
     * Removes a contact
     * @param contact the contact to remove
     */
    public boolean remove(Contact contact) {
        if (!exist(contact)) {
            System.out.println("Contact not found!");
            return false;
        }
        contacts.remove(contact);
        System.out.printf("%s, %d removed!\n", contact.getName(), contact.getNumber());
        return true;
    }

    /*
     * Method printContacts
     * Prints all the contacts
     */
    public void printContacts() {
        for (Contact contact : contacts) {
            System.out.println(contact);
        }
    }
}
