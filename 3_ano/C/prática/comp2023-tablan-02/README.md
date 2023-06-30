# Tema **TabLan**, grupo **tablan-02**
-----

## Constituição dos grupos e participação individual global

| NMec | Nome | email | Participação |
|:---:|:---|:---|:---:|
| 103294 | POMPEU GABRIEL SIMÕES DA COSTA | pompeu@ua.pt        | 28.0% |
|  98197 | RAFAEL MATOS AMORIM | rafael.amorim@ua.pt            | 11.7% |
| 103379 | RAFAEL PEREIRA BRONZE PINTO | rafaelpbpinto@ua.pt    | 24.9% |
| 102668 | RICARDO DRUMONDE COVELO | ricardocovelo11@ua.pt      | 11.8% |
| 104428 | TELMO NICOLAS BELA SAUCE | telmobelasauce@ua.pt      | 11.8% |
| 104110 | TIAGO JOSÉ BATISTA ALVES | tiagojba9@ua.pt           | 11.8% |

## Estrutura do repositório

- **src** - deve conter todo o código fonte do projeto.

- **doc** -- deve conter toda a documentação adicional a este README.

- **examples** -- deve conter os exemplos ilustrativos das linguagens criadas.

    - Na pasta exemplos existem alguns ficheiros de código (ficheiros do tipo tl) que testamos e que executam com sucesso, nomeadamente, exemplo1, exemplo2, exemplo3, exemplo4, comprarProdutos,notas,notas2 e pautas.

    - Os outros exemplos (5 e 6) deixámos ficar, embora não funcionem

## Relatório

### Compilador

Com o compilador da nossa linguagem é possível:
* Criar variáveis de tipos primitivos (integer,real,text e boolean)
* Definir tabelas, com colunas dependentes (formulas) e independentes
* Fazer expressões aritméticas (+ (adição) ,- (subtração) ,* (multiplicaçao) ,/ (divisão) ,\\\\ (resto da divisão))
* Ler do standard input
* Ler tabelas a partir de ficheiros
* Converter tipos primitivos noutros tipos primitivos (excepto booleanos)
* Adicionar linha no fim de uma tabela
* Definir cabeçalhos (headers) de tabelas e de colunas (na definição da tabela ou no código principal); Na definição da tabela não é possível definir o cabeçalho de uma formula, no entanto isto é possível no código principal
* Iterar sobre as linhas de uma tabela a partir da instrução de loop for
* Verificar condições (if else) com base numa expressão booleana, e executar instruções dependendo do resultado da condição
* Criar loop com base numa expressão booleana (loop while)
* Remover linhas, opcionalmente remover com base numa expressão booleana
* Definir novos tipos de dados baseados em primitivos (invariantes)
* Criar tabelas de referencia, isto é, ter uma variável que é uma referência (view) de uma tabela/coluna, opcionalmente referenciar apenas certas linhas dependendo de uma expressão booleana
   
### Análise de semântica

Para a análise semântica, foi feita uma tabela onde se registava o que deveria ser verificado e uma marcação a dizer se foi feito ou não. Essa tabela encontra-se em [./doc/README.md](./doc/README.md).

### Tipos de Erros semânticos

1. Type mismatch  
   
   Acontece quando se tenta fazer uma operação entre tipos de dados incompatíveis ou quando se tenta dar assign de uma variável com o tipo de dados incompatível com o da variavel target.  
     
   Ficheiros com exemplo do erro: [error_example1.tl](./examples/error_example1.tl); [error_example2.tl](./examples/error_example2.tl); [error_example4.tl](./examples/error_example4.tl).
   

2. Not declared  
 
   Acontece quando se tenta acessar uma variável ou uma que não foi declarada.  

   Ficheiro com exemplo do erro: [error_example2.tl](./examples/error_example2.tl).
   

3. Already declared  
   
   Acontece quando se tenta declarar uma variável ou uma tabela que já existe.  

   Ficheiros com exemplo do erro: [error_example1.tl](./examples/error_example1.tl); [error_example2.tl](./examples/error_example2.tl).
  

4. Must be \<type\>  
   
   
   Acontece quando um tipo de dados é incorreto numa dada instrução. Por exemplo, um título de uma tabela tem de ser obrigatoriamente texto.  

   Ficheiros com exemplo do erro: [error_example1.tl](./examples/error_example1.tl); [error_example5.tl](./examples/error_example5.tl); [error_example6.tl](./examples/error_example6.tl).
   

5. Not a table  
   
   
   Acontece quando se tenta aceder a uma coluna numa variável que não referencia uma tabela.  

   Ficheiro com exemplo do erro: [error_example4.tl](./examples/error_example4.tl).
   

6. Wrong number of fields  
   
   Acontece quando se tenta introduzir uma linha numa tabela mas não introduz o número de colunas certo.  

   Ficheiro com exemplo do erro: [error_example4.tl](./examples/error_example4.tl).

7. \<type> not supported  
   
   
   Acontece quando se tenta fazer um cast para um tipo de dados que não existe.  

   Ficheiro com exemplo do erro: [error_example3.tl](./examples/error_example3.tl).
    

8.  Cannot assign to formula 
     
      
      Acontece quando se tenta dar assign de algum valor a uma fórmula.  

      Ficheiro com exemplo do erro: [error_example7.tl](./examples/error_example7.tl).
       

9. Cannot assign formula  
    
   
   Acontece quando se tenta dar um valor de uma fórmula a um target.  

   Ficheiro com exemplo do erro: [error_example7.tl](./examples/error_example7.tl).
  
### Classes de suporte

* Utils - Classe usada no código gerado para ajudar em algumas operações, por exemplo, a expressão center.
* Column - Classe genérica usada no código gerado para representar as colunas que não são formulas.
* Formula -  Classe genérica usada no código gerado para representar as colunas que são formulas.
* Invariant - Classe genérica usada para representar invariantes no código gerado. Invariantes definidas pelo programador extendem esta classe.
* TableInfo - Classe usada para guardar dados da tabelas definidas pelo programador. Estes dados são depois usados para, por exemplo, saber as colunas que uma tabela tem, assim como os seus tipos.
* ColumnRepresentation -  Classe usada para guardar informação sobre as colunas de uma tabela. Por exemplo, o tipo da coluna, se é uma formula ou não, etc...
* Type - classe abstrata que representa um tipo de dados.
* Symbol - classe abstrata que representa um símbolo no código.
* VariableSymbol - classe que extende Symbol e representa uma variável.
* TableSymbol - classe que extende Symbol e representa uma tabela.
* IntegerType - classe que extende Type e representa o tipo de dados integer.
* RealType - classe que extende Type e representa o tipo de dados real.
* TextType - classe que extende Type e representa o tipo de dados text.
* BooleanType - classe que extende Type e representa o tipo de dados boolean.
* IDType - classe que extende Type e representa uma variável.
* FormulaType - classe que extende Type e representa uma fórmula.
* InputType - classe que extende Type e representa um input do utilizador.
* InvariantType - classe que extende Type e representa um novo tipo de dados.

## Contribuições

A definição da gramática foi realizada de forma incremental onde cada aluno contribuiu de forma equitativa.  
Abaixo estão duas tabelas (para o compilador e para a análise semântica) com as instruções realizadas, pequena descrição de cada instrução caso necessário e o(s) autor(es) dessa instrução.

### Compilador

|                          Instrução                         |                                                                    Descrição                                                                   |            Autor          |
|:----------------------------------------------------------:|:----------------------------------------------------------------------------------------------------------------------------------------------:|:-------------------------:|
| Definição de tabelas | incluindo campos (fields), formulas, headers, entre outros     | Pompeu Costa, Ricardo Covelo, Telmo Sauce, Rafael Amorim |
| Definição de novos tipos | invariantes de tipos primitivos                            | Pompeu Costa |
| Assigns | todo o tipo de assigns (excepto do read), incluindo assign de headers e referências a tabelas/colunas | Pompeu Costa       |
| Declarações de variáveis | | Pompeu Costa | | Add line | adicionar nova linha no fim de uma tabela | Pompeu Costa |
| Remove | remover linhas de uma tabela (com e sem when)                                | Pompeu Costa, Rafael Amorim |
| print | escrever uma expressão no standard output (com e sem mudança de linha)        | Pompeu Costa, Rafael Amorim |
| loop for |                                                                            | Tiago Alves, Pompeu Costa |
| loop while |                                                                          | Pompeu Costa |
| expr read | read do standard input ou de ficheiros; Não aceita leitura de invariantes,isto é, só aceita tipos primitivos ao fazer a leitura de ficheiros | Telmo Sauce, Ricardo Covelo |
|                          expr unário                       |                          | Pompeu Costa, Ricardo Covelo, Telmo Sauce, Rafael Amorim |
| expr adição,subtração, multiplicação,divisão e resto |                                | Pompeu Costa, Ricardo Covelo, Telmo Sauce, Rafael Amorim |
| expr length | expressão que devolve o tamanho do maior elemento de uma coluna         | Pompeu Costa, Rafael Amorim |
| expr parentesis |                                                                     | Rafael Amorim |
| expr center | expressão que devolve uma string centrada com base no tamanho dado      | Pompeu Costa |
| expr de conversão de tipos | conversão de e para tipos primitivos (integer,real,text) | Pompeu Costa |
| exprs booleanas | todo o tipo de expressões booleanas                                 | Pompeu Costa |
| operador ternário |                                                                   | Pompeu Costa       | 
| Definição de tipos primitivos | tipo text,integer,real e boolean                      | Pompeu Costa, Rafael Amorim |
| if | instrução if (com e sem else)                                                    | Pompeu Costa |
| | | |

### Análise Semântica


| Instrução            | Verificação                                                   | Autor        |
|----------------------|---------------------------------------------------------------|--------------|
| Definição de tabelas | Verificar se tabela já existe                                 | Rafael Pinto |
| Definição de tabelas | Verificar se o título é texto                                 | Rafael Pinto |
| Definição de tabelas | Verificar se a fórmula é igual ao tipo do campo               | Rafael Pinto, Tiago Alves |
| Definição de tabelas | Verificar se o cabeçalho é texto                              | Rafael Pinto, Tiago Alves |
| Assigns              | Verificar se os targets estão declarados                      | Rafael Pinto |
| Assigns              | Verificar se o target e a expressão são de tipos compatíveis  | Rafael Pinto |
| Assigns      | Verificar se o target do assign não é uma fórmula                | Rafael Pinto |
| Assigns      | Verificar se a expressão do assign não é uma fórmula             | Rafael Pinto |
| Assign New           | Verificar se o target é uma tabela                            | Rafael Pinto |
| Assign Header        | Verificar se o target é uma tabela                            | Rafael Pinto |
| Assign Header        | Verificar se a expressão é do tipo texto                      | Rafael Pinto |
| Declaração de variáveis  | Verificar se, ao declarar um target com outro target, o segundo target é uma tabela |Rafael Pinto |
| Declaração de variáveis  | Verificar se o target já foi declarado                    | Rafael Pinto |
| Add Line             | Verificar se o target está declarado                          | Rafael Pinto, Tiago Alves |
| Add Line             | Verificar se o target é uma tabela                            | Rafael Pinto, Tiago Alves |
| Add Line             | Verificar se o número de colunas a serem inseridas é igual ao número de colunas da tabela (excpeto quando se insere uma linha vazia)  | Rafael Pinto, Tiago Alves |
| Add Line             | Verificar se as colunas a serem inseridas são do mesmo tipo das colunas da tabela  | Rafael Pinto, Tiago Alves |
| Remove               | Verificar se a tabela existe                                  | Rafael Pinto |
| Remove               | Verificar se o target é uma tabela                            | Rafael Pinto |
| For                  | Verifcar que a tabela que se quer percorrer existe            | Tiago Alves |
| For                  | Verificar se variável temporária não está declarada para trás | Tiago Alves |
| While                | Verificar se condição é booleana                              | Rafael Pinto |
| Length               | Verificar se o target é uma tabela                            | Tiago Alves |
| Length               | Verificar se a coluna a aceder existe                         | Tiago Alves |
| Expressões Booleanas | Verificar se os tipos são compatíveis                         | Rafael Pinto, Rafael Amorim |
| Expressões Aritméticas       | Verificar se os tipos são compatíveis                 | Rafael Pinto |
| Center             | Verificar se as expressões são do tipo texto                      | Rafael Amorim |
| Center             | Verificar se o length das expressões são do tipo inteiro          | Rafael Amorim |
| Read               | Verificar se o atributo column é do tipo inteiro                | Rafael Pinto, Rafael Amorim |
| Read               | Verificar se o nome da coluna é do tipo text           | Rafael Pinto, Rafael Amorim |
| If                 | Verificar se a condição é do tipo booleano             | Rafael Pinto, Rafael AMorim |
| Type Cast | Verificar se tipo para qual se deve converter é válido          | Rafael Pinto, Rafael Amorim |
| Definição de novos tipos | Verificar se o primeiro argumento do invariant é do tipo booleano e que o segundo argumento é do tipo text | Rafael Pinto |
| Ternário | Verificar se condição é booleana e se tipos da expressão são compatíveis | Rafael Pinto |

