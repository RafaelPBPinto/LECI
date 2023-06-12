CREATE TABLE PROJETO_Empresa(
	[NIF]			INT NOT NULL CHECK (NIF > 0),
	[nome]			VARCHAR(50) NOT NULL ,
	[localizacao]	VARCHAR(50) NOT NULL,
	PRIMARY KEY ([NIF]),
);

CREATE TABLE PROJETO_Fornecedor (
	[NIF]			INT NOT NULL CHECK (NIF > 0),
	[nome]			VARCHAR(50) NOT NULL,
	[localizacao]	VARCHAR(50) NOT NULL,
	PRIMARY KEY([NIF])
);


CREATE TABLE PROJETO_Peca(
	[id]				INT NOT NULL IDENTITY(1,1) CHECK ([id] > 0),
	[nome]				VARCHAR(50) NOT NULL,
	[marca]				VARCHAR(50) NOT NULL,
	[funcionalidade]	VARCHAR(200) NOT NULL DEFAULT('desconhecida'),
	PRIMARY KEY ([id])
);


CREATE TABLE PROJETO_Trabalhador(
	[nome]		VARCHAR(100) NOT NULL,
	[num_CC]	INT NOT NULL CHECK (Num_CC > 0),
	[morada]	VARCHAR(100),
	PRIMARY KEY ([num_CC])
);

CREATE TABLE PROJETO_Maquina (
	[id]			INT NOT NULL IDENTITY(1,1) CHECK ([id] > 0),
	[tipo]			VARCHAR(100) NOT NULL ,
	[marca]			VARCHAR(100) NOT NULL,
	[nome]			VARCHAR(100),
	[empresa_NIF]	INT NOT NULL CHECK ([empresa_NIF] > 0),
	[Maq_pendente]	BIT,
	PRIMARY KEY([id], [empresa_NIF]),
	FOREIGN KEY ([empresa_NIF]) REFERENCES PROJETO_Empresa([NIF]) ON DELETE CASCADE
);

CREATE TABLE PROJETO_Stock(
	[peca_id]		INT NOT NULL,
	[num_de_pecas]	INT NOT NULL DEFAULT(1),
	PRIMARY KEY ([peca_id]),
	FOREIGN KEY ([peca_id]) REFERENCES PROJETO_Peca([id]) ON DELETE CASCADE
);

CREATE TABLE PROJETO_Pedido_de_Trabalho(
	[numero]			INT IDENTITY(1,1) NOT NULL,
	[empresa_NIF]		INT NOT NULL,
	[foi_aceite]		VARCHAR(50) NOT NULL CHECK ([foi_aceite] IN('Rejeitado','Pendente','Aceite')) DEFAULT('Pendente'),
	[data_pedido]		DATE NOT NULL,
	[maquina_ni]		INT NOT NULL,
	[nivel_urgencia]	VARCHAR(50) NOT NULL CHECK ([nivel_urgencia] IN('Pouco Urgente','Normal','Muito Urgente')),
	PRIMARY KEY([numero]),
	FOREIGN KEY ([maquina_ni] , [empresa_NIF]) REFERENCES PROJETO_Maquina([id], [empresa_NIF]) ON DELETE CASCADE
);

CREATE TABLE PROJETO_Manutencao(
	[num_pedido]	INT NOT NULL,
	[descricao]		VARCHAR(500) NOT NULL DEFAULT('sem descricao')
	PRIMARY KEY([num_pedido]),
	FOREIGN KEY ([num_pedido]) REFERENCES PROJETO_Pedido_de_Trabalho([numero]) ON DELETE CASCADE
);

CREATE TABLE PROJETO_Construcao(
	[num_pedido]	INT NOT NULL,
	[notas]			VARCHAR(500) NOT NULL DEFAULT('sem notas')
	PRIMARY KEY([num_pedido]),
	FOREIGN KEY ([num_pedido]) REFERENCES PROJETO_Pedido_de_Trabalho([numero]) ON DELETE CASCADE
);


CREATE TABLE PROJETO_Trabalho(
	[numero]			INT IDENTITY(1,1) NOT NULL,
	[numero_pedido]		INT NOT NULL,
	[data_inicio]		DATE NOT NULL,
	[data_fim]			DATE,
	[nr_horas]			TIME  ,
	[foi_feito]			BIT NOT NULL DEFAULT(0),
	[custo]				FLOAT,
	PRIMARY KEY ([numero]),
	FOREIGN KEY ([numero_pedido]) REFERENCES PROJETO_Pedido_de_Trabalho([numero]),	
);

CREATE TABLE PROJETO_Trabalho_Trabalhador(
	[trabalho]	INT NOT NULL,
	[trabalhador] INT NOT NULL,
	PRIMARY KEY([trabalho],[trabalhador]),
	FOREIGN KEY ([trabalho]) REFERENCES PROJETO_Trabalho([numero]) ON DELETE CASCADE,
	FOREIGN KEY ([trabalhador]) REFERENCES PROJETO_Trabalhador([num_CC]) ON DELETE CASCADE
);

CREATE TABLE PROJETO_Pedido_de_Material(
	[numero]		INT NOT NULL IDENTITY(1,1),
	[data]			DATE NOT NULL,
	[hora]			TIME NOT NULL,
	[preco]			FLOAT NOT NULL CHECK (preco > 0),
	[peca_id]		INT NOT NULL,
	[quantidade]	INT NOT NULL CHECK(quantidade > 0),
	[fornecedor]	INT ,
	[trabalho]      INT NOT NULL,
	[trabalhador]   INT NOT NULL,
	[verify]		BIT,
	PRIMARY KEY ([numero]),
	FOREIGN KEY ([peca_id]) REFERENCES PROJETO_Peca([id]) ON DELETE CASCADE,
	FOREIGN KEY ([fornecedor]) REFERENCES PROJETO_Fornecedor([NIF]) ON DELETE CASCADE,
	FOREIGN KEY ([trabalho], [trabalhador]) REFERENCES PROJETO_Trabalho_Trabalhador([trabalho], [trabalhador]) ON DELETE CASCADE
);
