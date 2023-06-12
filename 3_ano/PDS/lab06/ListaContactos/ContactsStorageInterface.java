// Author: Rafael Pinto, 103379, p5_09

package ListaContactos;

import java.util.List;

/*
 * Interface ContactsStorageInterface
 * Defines the methods to be implemented by the ContactsStorageInterface class
 */
public interface ContactsStorageInterface {
    public List<Contact> loadContacts();
    public boolean saveContacts(List<Contact> list);
}
