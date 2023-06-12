# BD: Guião 6

## Problema 6.1

### *a)* Todos os tuplos da tabela autores (authors);

```
SELECT * 
FROM authors
```

### *b)* O primeiro nome, o último nome e o telefone dos autores;

```
SELECT au_fname, au_lname, phone 
FROM authors
```

### *c)* Consulta definida em b) mas ordenada pelo primeiro nome (ascendente) e depois o último nome (ascendente); 

```
SELECT au_fname, au_lname, phone 
FROM authors 
ORDER BY au_fname ASC, au_lname ASC
```

### *d)* Consulta definida em c) mas renomeando os atributos para (first_name, last_name, telephone); 

```
SELECT au_fname AS first_name, au_lname AS last_name, phone AS telephone 
FROM authors 
ORDER BY au_fname ASC, au_lname ASC
```

### *e)* Consulta definida em d) mas só os autores da Califórnia (CA) cujo último nome é diferente de ‘Ringer’; 

```
SELECT au_fname AS first_name, au_lname AS last_name, phone AS telephone 
FROM authors 
WHERE state = 'CA' AND au_lname != 'Ringer' 
ORDER BY au_fname ASC, au_lname ASC
```

### *f)* Todas as editoras (publishers) que tenham ‘Bo’ em qualquer parte do nome; 

```
SELECT *
FROM publishers
WHERE pub_name LIKE '%Bo%'
```

### *g)* Nome das editoras que têm pelo menos uma publicação do tipo ‘Business’; 

```
SELECT pub_name, SUM(ytd_sales) AS total_sales
FROM publishers, titles
WHERE publishers.pub_id = titles.pub_id 
GROUP BY pub_name
```

### *h)* Número total de vendas de cada editora; 

```
SELECT pub_name, SUM(ytd_sales) AS total_sales
FROM publishers, titles
WHERE publishers.pub_id = titles.pub_id
```

### *i)* Número total de vendas de cada editora agrupado por título; 

```
SELECT pub_name, title, SUM(ytd_sales) AS total_sales
FROM publishers, titles
WHERE publishers.pub_id = titles.pub_id 
GROUP BY pub_name, title
```

### *j)* Nome dos títulos vendidos pela loja ‘Bookbeat’; 

```
SELECT title
FROM titles, stores, sales
WHERE stores.stor_id = sales.stor_id AND sales.title_id = sales.title_id AND stores.stor_name = 'Bookbeat'
GROUP BY title
```

### *k)* Nome de autores que tenham publicações de tipos diferentes; 

```
SELECT au_fname AS first_name, au_lname AS last_name, COUNT(titles.type) AS total_types
FROM authors, titleauthor, titles
WHERE authors.au_id = titleauthor.au_id AND titleauthor.title_id = titles.title_id
GROUP BY au_fname, au_lname
HAVING COUNT(titles.type) > 1
```

### *l)* Para os títulos, obter o preço médio e o número total de vendas agrupado por tipo (type) e editora (pub_id);

```
SELECT titles.type,pub_id,AVG(price) AS med_price,SUM(qty) AS tot_sales FROM sales,titles
WHERE sales.title_id= titles.title_id
GROUP BY titles.type,titles.pub_id
```

### *m)* Obter o(s) tipo(s) de título(s) para o(s) qual(is) o máximo de dinheiro “à cabeça” (advance) é uma vez e meia superior à média do grupo (tipo);

```
SELECT titles.type
FROM titles
GROUP BY titles.type
HAVING MAX(titles.advance) >= 1.5 * AVG(titles.advance)	
```

### *n)* Obter, para cada título, nome dos autores e valor arrecadado por estes com a sua venda;

```
SELECT titles.title_id,titleauthor.au_id,au_fname,au_lname,type,title,price,sales.qty,royalty,royaltyper,(sales.qty*price*titles.royalty / 100 * titleauthor.royaltyper) AS valor
FROM titleauthor,titles,authors,sales
WHERE titles.title_id = titleauthor.title_id AND authors.au_id= titleauthor.au_id AND sales.title_id = titles.title_id AND sales.title_id = titleauthor.title_id

```

### *o)* Obter uma lista que incluía o número de vendas de um título (ytd_sales), o seu nome, a faturação total, o valor da faturação relativa aos autores e o valor da faturação relativa à editora;

```
SELECT title,ytd_sales,(ytd_sales*price) AS faturacao,(ytd_sales*price*royalty)/100 AS auth_reverse,(ytd_sales*price*(100-royalty))/100 AS publisher_reverse
FROM titles
```

### *p)* Obter uma lista que incluía o número de vendas de um título (ytd_sales), o seu nome, o nome de cada autor, o valor da faturação de cada autor e o valor da faturação relativa à editora;

```
SELECT title,ytd_sales,price,royalty,au_fname,au_lname,royaltyper,(ytd_sales*price) AS faturacao,((ytd_sales*price*royalty/100*royaltyper)/100) AS auth_reverse,(ytd_sales*price*(100-royalty))/100 AS publisher_reverse
FROM titles,titleauthor,authors
WHERE titles.title_id = titleauthor.title_id AND titleauthor.au_id=authors.au_id
ORDER BY title
```

### *q)* Lista de lojas que venderam pelo menos um exemplar de todos os livros;

```
SELECT stor_name, stor_address, city, [state], zip, COUNT(sales.title_id) as total_titles_sold
FROM stores, sales, titles
WHERE stores.stor_id = sales.stor_id AND sales.title_id = titles.title_id
GROUP BY stor_name, stor_address, city, [state], zip
HAVING COUNT(sales.title_id) <= (SELECT COUNT(*) FROM titles)
```

### *r)* Lista de lojas que venderam mais livros do que a média de todas as lojas;

```
SELECT stores.stor_name
FROM sales
JOIN stores ON stores.stor_id = sales.stor_id
GROUP BY stores.stor_name
HAVING SUM(sales.qty) > (
SELECT SUM(tot_sales)/COUNT(*)
FROM(
SELECT SUM(sales.qty) AS tot_sales,stor_name
FROM sales
JOIN stores ON stores.stor_id=sales.stor_id
GROUP BY stor_name
) as tabletest
)
```

### *s)* Nome dos títulos que nunca foram vendidos na loja “Bookbeat”;

```
SELECT titles.title FROM titles 
WHERE NOT EXISTS (
SELECT * FROM sales
WHERE sales.title_id= titles.title_id AND titles.title = 'BookBeat'
)
```

### *t)* Para cada editora, a lista de todas as lojas que nunca venderam títulos dessa editora; 

```
SELECT pub_name,stor_name
FROM publishers
CROSS JOIN stores EXCEPT (
SELECT pub_name,stor_name FROM titles
JOIN publishers ON  publishers.pub_id = titles.pub_id
JOIN sales ON sales.title_id=titles.title_id
JOIN stores ON sales.stor_id=stores.stor_id
)
```

## Problema 6.2

### ​5.1

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_1_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_1_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
SELECT Pname,Fname,Minit,Lname,Ssn
FROM COMPANY_project
JOIN COMPANY_works_on ON Pno = Pnumber
JOIN COMPANY_employee ON Essn = Ssn
```

##### *b)* 

```
SELECT Fname, Minit, Lname
FROM COMPANY_employee
JOIN (SELECT Ssn FROM COMPANY_employee WHERE Fname = 'Carlos' AND Minit = 'D' AND Lname = 'Gomes')AS supervisor
ON Super_ssn=supervisor.Ssn
```

##### *c)* 

```
SELECT Pname, total_hours FROM COMPANY_project
JOIN (SELECT Pno, SUM(Hours) AS total_hours FROM COMPANY_works_on GROUP BY Pno) AS total_hours_project
ON Pnumber=Pno
```

##### *d)* 

```
SELECT Fname, Minit, Lname FROM COMPANY_project
JOIN COMPANY_works_on ON Pnumber=Pno
JOIN (SELECT * FROM COMPANY_employee WHERE Dno=3) AS employees_dep3
ON Essn=Ssn
WHERE Pname = 'Aveiro Digital' AND [Hours]>20
```

##### *e)* 

```
SELECT Fname, Minit, Lname
FROM COMPANY_employee
LEFT JOIN COMPANY_works_on ON Essn = Ssn
WHERE Pno IS NULL 
```

##### *f)* 

```
SELECT Dname, AVG(Salary) AS Avg_Fem_Salary FROM COMPANY_department
JOIN (SELECT * FROM COMPANY_employee WHERE Sex='F') AS Fem_employees ON Dnumber=Dno
GROUP BY Dname
```

##### *g)* 

```
SELECT Fname, Minit, Lname FROM COMPANY_employee
JOIN (SELECT Essn, COUNT(Essn) AS count_dep FROM COMPANY_dependent GROUP BY Essn HAVING COUNT(Essn)>1) AS Two_or_more_dependents
ON Ssn=Essn
```

##### *h)* 

```
SELECT Fname, Minit, Lname FROM Company_department
JOIN (SELECT Fname, Minit, Lname, Ssn FROM COMPANY_Employee LEFT JOIN COMPANY_dependent ON Ssn=Essn WHERE Essn IS NULL) AS zero_dependents
ON Mgr_ssn=Ssn
```

##### *i)* 

```
SELECT Fname, Minit, Lname, [Address] FROM COMPANY_employee
JOIN (SELECT * FROM COMPANY_project JOIN COMPANY_dept_locations ON Dnum=Dnumber WHERE Dlocation!='Aveiro' AND Plocation='Aveiro') AS projects
ON Dno=Dnum
GROUP BY Fname, Minit, Lname, [Address]
```

### 5.2

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_2_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_2_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
SELECT nome,nif,fax,endereco,condpag,tipo FROM GESTSTOCK_encomenda
FULL OUTER JOIN GESTSTOCK_fornecedor ON fornecedor=nif
WHERE fornecedor IS NULL
```

##### *b)* 

```
SELECT nome, codigo, AVG(GESTSTOCK_item.unidades) AS unidades_media FROM GESTSTOCK_item
JOIN GESTSTOCK_produto ON codProd=codigo
GROUP BY codigo, nome
```


##### *c)* 

```
SELECT AVG(n_produtos)AS media_nprodutos FROM 
(SELECT COUNT(codProd) AS n_produtos FROM GESTSTOCK_item GROUP BY numEnc) AS n_produtos_table
```


##### *d)* 

```
SELECT nif, GESTSTOCK_fornecedor.nome, GESTSTOCK_produto.nome, total_unidades FROM GESTSTOCK_fornecedor
JOIN (SELECT codProd, fornecedor, SUM(unidades) AS total_unidades FROM GESTSTOCK_item 
JOIN GESTSTOCK_encomenda ON numEnc=numero GROUP BY codProd, fornecedor) AS total_unidades_table
ON fornecedor=nif
JOIN GESTSTOCK_produto ON codProd=codigo
```

### 5.3

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_3_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_3_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
SELECT nome, PRESCRICAO_paciente.numUtente FROM PRESCRICAO_paciente
LEFT OUTER JOIN PRESCRICAO_prescricao ON PRESCRICAO_paciente.numUtente = PRESCRICAO_prescricao.numUtente
WHERE numPresc IS NULL
```

##### *b)* 

```
SELECT especialidade, COUNT(numPresc) AS total_presc FROM PRESCRICAO_prescricao
JOIN PRESCRICAO_medico ON numMedico=numSNS
GROUP BY especialidade
```


##### *c)* 

```
SELECT nome, COUNT(numPresc) AS total_presc FROM PRESCRICAO_prescricao
JOIN PRESCRICAO_farmacia ON farmacia=nome
GROUP BY nome
```


##### *d)* 

```
SELECT PRESCRICAO_farmaco.nome  FROM PRESCRICAO_farmaco
JOIN PRESCRICAO_farmaceutica ON numRegFarm=numReg
WHERE numRegFarm=906
EXCEPT (SELECT nomeFarmaco FROM PRESCRICAO_presc_farmaco WHERE numRegFarm=906)
```

##### *e)* 

```
SELECT farmacia, nome, qtd_farmacos FROM PRESCRICAO_farmaceutica
JOIN (	SELECT farmacia, numRegFarm, COUNT(numRegFarm) AS qtd_farmacos FROM
			(SELECT farmacia, numRegFarm FROM PRESCRICAO_presc_farmaco
			JOIN PRESCRICAO_prescricao ON PRESCRICAO_presc_farmaco.numPresc=PRESCRICAO_prescricao.numPresc
			WHERE farmacia IS NOT NULL) AS selled_farmacia
		GROUP BY farmacia, numRegFarm
		) AS aux
ON numRegFarm=numReg
```

##### *f)* 

```
SELECT nome FROM PRESCRICAO_paciente
JOIN (	SELECT numUtente, COUNT(numMedico) AS med_presc_dif FROM 
			( SELECT numUtente, numMedico FROM PRESCRICAO_prescricao ) AS get_nums
		GROUP BY numUtente
		HAVING COUNT(numMedico)>1
		) AS utente_medico
ON PRESCRICAO_paciente.numUtente=utente_medico.numUtente
```
