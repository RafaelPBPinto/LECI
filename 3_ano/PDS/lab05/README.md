# Aula05 - Notes

## Author: Rafael Pinto, 103379, g5_09

### Diretório base
> Contém os ficheiros para testar o código desenvolvido para cada exercício
* TestPagaLeva - Classe Main para testar o código do primeiro exercício
* TestPastelaria - Classe Main para testar o código do segundo exercício
* TestMovies - Classe Main para testar o código do terceiro exercício

### Pasta PagaLeva 
> Contém os ficheiros relativos ao primeiro exercício
#### Classes: 
* Container - Classe que representa um recipiente
* ContainerType - Enum que enumera os tipos de recipiente
* Food - Enum que enumera os tipos de comida
* FruitName - Enum que enumera os tipos de fruta
* Portion - Interface que define os métodos a implementar por uma porção de comida
* PortionFactory - Classe que cria porções de comida
* State - Enum que enumera os estados de uma porção de comida
* Temperature - Enum que enumera as temperaturas de uma porção de comida

#### Utilização:
> para compilar: `javac TestPagaLeva.java`  
> para executar: `java TestPagaLeva`

### Pasta Pastelaria
> Contém os ficheiros relativos ao segundo exercício  
#### Classes:  
* AbstractCakeBuilder - Classe abstrata que implementa o construtor de bolos CakeBuilder
* Cake - Classe que representa um bolo
* CakeBuilder - Interface que define os métodos a implementar por um construtor de bolos
* CakeMaster - Classe usada na Main para selecionar o construtor de bolos a usar
* ChocolateCakeBuilder - Classe que extende AbstractCakeBuilder e implementa o construtor de bolos de chocolate
* Cream - Enum que enumera os tipos de creme
* OrangeCakeBuilder - Classe que extende AbstractCakeBuilder e implementa o construtor de bolos de laranja
* Shape - Enum que enumera os tipos de forma de bolo
* SpongeCakeBuilder - Classe que extende AbstractCakeBuilder e implementa o construtor de bolos de pão de ló
* Topping - Enum que enumera os tipos de cobertura
* VanillaCakeBuilder - Classe que extende AbstractCakeBuilder e implementa o construtor de bolos de baunilha
* YoghurtCakeBuilder - Classe que extende AbstractCakeBuilder e implementa o construtor de bolos de iogurte

#### Utilização:
> para compilar: `javac TestPastelaria.java`  
> para executar: `java TestPastelaria`

### Pasta Movies
> Contém os ficheiros relativos ao terceiro exercício
#### Classes:
* Movie - Classe que representa um filme
* MovieBuilderInterface - Interface que define os métodos a implementar por um construtor de filmes
* MovieBuilder - Classe que implementa o construtor de filmes
* Person - Classe que representa uma pessoa
* Place - Classe que representa um local

#### Utilização:
> para compilar: `javac TestMovies.java`  
> para executar: `java TestMovies`
