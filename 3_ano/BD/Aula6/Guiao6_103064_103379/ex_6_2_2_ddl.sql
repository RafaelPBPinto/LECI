
USE p1g2
GO
/*CREATE GESTSTOCK DATABASE*/

CREATE TABLE GESTSTOCK_tipo_fornecedor(
[codigo]	INT		NOT NULL,
[designacao]varchar(100) NOT NULL,
PRIMARY KEY ([codigo])
)

CREATE TABLE GESTSTOCK_fornecedor(
[nif]			INT		NOT NULL,
[nome]		varchar(100)NOT NULL,
[fax]			INT		NOT NULL,
[endereco]	varchar(100),
[condpag]		INT		NOT NULL,
[tipo]			INT		NOT NULL,
PRIMARY KEY ([nif]),
FOREIGN KEY ([tipo]) REFERENCES GESTSTOCK_tipo_fornecedor([codigo])
)

CREATE TABLE GESTSTOCK_produto(
[codigo]			INT		NOT NULL,
[nome]		varchar(100)	NOT NULL,
[preco]			FLOAT		NOT NULL,
[iva]			INT			NOT NULL,
[unidades]		INT			NOT NULL,
PRIMARY KEY ([codigo])
)

CREATE TABLE GESTSTOCK_encomenda(
[numero]		INT		NOT NULL,
[data]			DATE	NOT NULL,
[fornecedor]	INT		NOT NULL,
PRIMARY KEY ([numero]),
FOREIGN KEY ([fornecedor]) REFERENCES GESTSTOCK_fornecedor([nif])
)

CREATE TABLE GESTSTOCK_item(
[numEnc]		INT		NOT NULL,
[codProd]		INT		NOT NULL,
[unidades]		INT		NOT NULL,
PRIMARY KEY ([numEnc],[codProd]),
FOREIGN KEY ([numEnc]) REFERENCES GESTSTOCK_encomenda([numero]),
FOREIGN KEY ([codProd]) REFERENCES GESTSTOCK_produto([codigo])
)