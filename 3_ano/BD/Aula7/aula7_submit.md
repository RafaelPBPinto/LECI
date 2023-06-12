# BD: Guião 7


## ​7.2 
 
### *a)*

```
Está na primeira forma normal, porque não contém atributos multivalor e não contêm relações dentro de relações.
```

### *b)* 

```
1FN:  

Livro -> {_Titulo_Livro_, _Nome_Autor_, Afiliacao_Autor, Tipo_Livro, Preco, NoPaginas, Editor, Endereco_Editor, Ano_Publicacao}

Dependências funcionais:
Titulo_Livro, Nome_Autor -> Editor, Tipo_Livro, NoPaginas, Ano_Publicacao
Tipo_Livro, NoPaginas -> Preco
Nome_Autor -> Afiliacao_Autor
Editor -> Endereco_Editor

2FN:

R1 -> {_Titulo_Livro_, _Nome_Autor_, Tipo_Livro, Preco, NoPaginas, Editor, Enderco_Editor, Ano_Publicacao}
R2 -> {_Nome_Autor_, Afiliacao_Autor}

Dependências funcionais:
Titulo_Livro, Nome_Autor -> Editor, Tipo_Livro, NoPaginas, Ano_Publicacao
Tipo_Livro, NoPaginas -> Preco
Editor -> Endereco_Editor

Nome_Autor -> Afiliacao_Autor

3FN:

R1 -> {_Titulo_Livro_, _Nome_Autor_, Tipo_Livro, NoPaginas, Editor, Ano_Publicacao}
R2 -> {_Nome_Autor_, Afiliacao_Autor}
R3 -> {_Editor_, Endereco_Editor}
R4 -> {_Tipo_Livro_, NoPaginas, _Preco_}

Dependências funcionais:
Titulo_Livro, Nome_Autor -> Editor, Tipo_Livro, NoPaginas, Ano_Publicacao

Nome_Autor -> Afiliacao_Autor

Editor -> Endereco_Editor

Tipo_Livro, NoPaginas -> Preco

```




## ​7.3
 
### *a)*

```
Chabes de R -> A e B
```


### *b)* 

```
2FN:

R1 = {_A_, _B_, C}
R2 = {_A_, D, E, J}
R3 = {_B_, F, G, H}

Dependências funcionais:
A,B -> C

A -> D,E
D -> I,J

B -> F,G
F -> G,H
```


### *c)* 

```
3FN:

R1 = {_A_, _B_, C}
R2 = {_A_, D, E}
R3 = {_B_, F}
R4 = {_D_,I,J}
R5 = {_F_, G, H}

Dependências funcionais:
A -> B,C

A -> D,E

B -> F

D -> I,J

F -> G,H
```
```
```


## ​7.4
 
### *a)*

```

Chave de R -> A e B

```


### *b)* 

```
1FN ->
R = {_A_,_B_,C,D,E}

Dependecias funcionais:

A,B -> C,D,E

D -> E

C -> A


2FN ->

R = {_A_,_B_,C,D,E}

Dependecias funcionais:

A,B -> C,D,E

D -> E

C -> A


3FN ->

R1 = {_A_,_B_,C,D}
R2 = {_D_,E}

Dependencias Funcionas:

A,B -> C,D

D -> E

C -> A
```


### *c)* 

```
BCNF ->

R1 = {_A_,_B_,C,D}
R2 = {_D_,E}
R3 = {_C_,A}

Dependencias Funcionas:

A,B -> C,D

D -> E

C -> A

```



## ​7.5
 
### *a)*

```
Chave de R -> A e B
```

### *b)* 

```
2FN -> 

R1 = {_A_,_B_,C,D,E}
R2 = {_A_,C,D}

Dependencias Funcionas:

A,B -> C,D,E

A -> C,D


```


### *c)* 

```
3FN ->

R1 = {_A_,_B_,C,D,E}
R2 = {_A_,C}
R3 = {_C_,D}

Dependencias Funcionas:

A,B -> C,D,E

A -> C

C -> A

```

### *d)* 

```
R1 = {_A_,_B_,E}
R2 = {_A_,C}
R3 = {_C_,D}

Dependencias Funcionas:

A,B -> C,D,E

A -> C

C -> A


```

