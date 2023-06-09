// Author: Rafael Pinto, 103379, p5_09

import ListaContactos.*;

/*
 * Class TestContacts
 * Used to test the exercise 2.
 */
public class TestContacts {
    public static void main(String[] args) {
        ContactsBridge bridge = new ContactsBridge();

        // Test txt
        System.out.println("------ Test txt ------");
        bridge.openAndLoad(new TxtContactsStorage("TabsContacts.txt"));
        bridge.printContacts();
        
        Contact maria = new Contact("Maria", 910987654);
        bridge.add(maria);
        bridge.saveAndClose();
        bridge.printContacts();
        System.out.println(bridge.getByName("Rafael"));
        System.out.println("Maria exists? " + bridge.exist(maria));
        bridge.remove(maria);
        bridge.saveAndClose();
        bridge.printContacts();
        System.out.println("Maria exists? " + bridge.exist(maria));
        System.out.println("----------------------");

        // Test csv
        System.out.println("------ Test csv ------");
        bridge.openAndLoad(new CsvContactsStorage("CsvContacts.csv"));
        bridge.printContacts();

        Contact rafael = new Contact("Rafael", 910111213);
        bridge.add(rafael);
        bridge.saveAndClose();
        bridge.printContacts();
        System.out.println(bridge.getByName("Paulo"));
        System.out.println("Rafael exists? " + bridge.exist(rafael));
        bridge.remove(rafael);
        bridge.saveAndClose();
        bridge.printContacts();
        System.out.println("Rafael exists? " + bridge.exist(rafael));
        System.out.println("----------------------");

        // Test bin
        System.out.println("------ Test bin ------");
        bridge.openAndLoad(new BinContactsStorage("BinContacts.bin"));
        bridge.printContacts();
        
        Contact ronaldo = new Contact("Ronaldo", 910777777);
        bridge.add(ronaldo);
        bridge.saveAndClose();
        bridge.printContacts();
        System.out.println(bridge.getByName("Ronaldo"));
        System.out.println("Ronaldo exists? " + bridge.exist(ronaldo));
        bridge.remove(ronaldo);
        bridge.saveAndClose();
        bridge.printContacts();
        System.out.println("Ronaldo exists? " + bridge.exist(ronaldo));
        System.out.println("----------------------");

    }
}
