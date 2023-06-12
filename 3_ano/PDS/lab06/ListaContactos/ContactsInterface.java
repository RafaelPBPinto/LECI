// Author: Rafael Pinto, 103379, p5_09

package ListaContactos;

/*
 * Interface ContactsInterface
 * Defines the methods to be implemented by the ContactsInterface class
 */
public interface ContactsInterface {
    public void openAndLoad(ContactsStorageInterface store);
    public void saveAndClose();
    public void saveAndClose(ContactsStorageInterface store);
    public boolean exist(Contact contact);
    public Contact getByName(String name);
    public boolean add(Contact contact);
    public boolean remove(Contact contact);
}
