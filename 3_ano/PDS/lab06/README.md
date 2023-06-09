# Aula06 - Notes

## Author: Rafael Pinto, 103379, g5_09

### Diretório base
> Contém os ficheiros para testar o código desenvolvido para cada exercício
* TestEmpresa.java - Classe Main para testar as classes DataBase, Employee, Empregado e Registos
* TestAdapterEmpresa.java - Classe Main para testar o primeiro exercício
* TestContacts.java - Classe Main para testar o segundo exercício
* BinContacts.bin - Ficheiro binário usado em TestContacts.java para testar a leiura e escrita de ficheiros binários
* TabsContacts.txt - Ficheiro de texto usado em TestContacts.java para testar a leiura e escrita de ficheiros de texto
* CsvContacts.csv - Ficheiro de texto usado em TestContacts.java para testar a leiura e escrita de ficheiros de texto

### Diretório EmpresaPst
> Contém os ficheiros relativos ao primeiro exercício
#### Classes: 
* Adapter - Interface que define os métodos a implementar por um adapter
* CompanyAdapter - Classe que implementa o adapter
* DataBase - Classe que representa uma base de dados
* Employee - Classe que representa um empregado
* Empregado - Classe que representa um empregado
* Registos - Classe que representa uma base de dados

#### Utilização:
* 1a)
> para compilar: `javac TestEmpresa.java`  
> para executar: `java TestEmpresa`
* 1b)
> para compilar: `javac TestAdapterEmpresa.java`  
> para executar: `java TestAdapterEmpresa`

### Diretório ListaContactos
> Contém os ficheiros relativos ao segundo exercício
#### Classes:
* BinContactsStorage - Classe que implementa a interface ContactsStorageInterface e lê/escreve ficheiros binários
* Contacts - Classe que representa um contacto
* ContactsBridge - Classe que implementa a interface ContactsInterface
* ContactsInterface - Interface que define os métodos a implementar por uma bridge
* ContactsStorageInterface - Interface que define os métodos a implementar por uma classe que lê/escreve ficheiros
* CsvContactsStorage - Classe que implementa a interface ContactsStorageInterface e lê/escreve ficheiros csv
* FileUtils - Classe que implementa métodos para ler/escrever ficheiros
* TxtContactsStorage - Classe que implementa a interface ContactsStorageInterface e lê/escreve ficheiros de texto

> nota: a leitura e escrita de ficheiros binários não funciona corretamente
#### Utilização:
> para compilar: `javac TestContacts.java`  
> para executar: `java TestContacts`
