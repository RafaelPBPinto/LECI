USE p1g2
GO

CREATE TABLE RentACar_Cliente(
	[nome] varchar(255) NOT NULL,
	[endereco] varchar(255) NOT NULL,
	[num_carta] INT NOT NULL,
	[NIF] INT NOT NULL,
	PRIMARY KEY (NIF)

);

CREATE TABLE RentACar_Tipo_Veiculo(
    [designacao] varchar(255) NOT NULL,
    [arcondicionado] BIT NOT NULL,
    [codigo] INT NOT NULL,
    PRIMARY KEY (codigo)
);

CREATE TABLE RentACar_Veiculo_Ligeiro(
    [numlugares] INT NOT NULL CHECK ([numlugares] > 0),
    [portas] INT NOT NULL CHECK ([portas] > 0),
    [combustivel] varchar(255) NOT NULL,
    [codigo_tipoveiculo] INT NOT NULL,
    PRIMARY KEY ([codigo_tipoveiculo]),
    FOREIGN KEY ([codigo_tipoveiculo]) REFERENCES RentACar_Tipo_Veiculo([codigo])
);

CREATE TABLE RentACar_Veiculo_Pesado(
    [passageiros] INT NOT NULL CHECK ([passageiros] >= 0),
    [peso] INT NOT NULL CHECK ([peso] > 0),
    [codigo_tipoveiculo] INT NOT NULL,
    PRIMARY KEY ([codigo_tipoveiculo]),
    FOREIGN KEY ([codigo_tipoveiculo]) REFERENCES RentACar_Tipo_Veiculo([codigo])
);

CREATE TABLE RentACar_Veiculo(
    [marca] varchar(20) NOT NULL,
    [ano] INT NOT NULL CHECK (ano > 1886),
    [matricula] varchar(8) NOT NULL,
    [codigo_tipoveiculo] INT NOT NULL,
    PRIMARY KEY ([matricula]),
    FOREIGN KEY ([codigo_tipoveiculo]) REFERENCES RentACar_Tipo_Veiculo([codigo])
);

CREATE TABLE RentACar_Similaridade(
    [codigo_a] INT NOT NULL,
    [codigo_b] INT NOT NULL,
    PRIMARY KEY ([codigo_a],[codigo_b]),
    FOREIGN KEY ([codigo_a]) REFERENCES RentACar_Tipo_Veiculo([codigo]),
    FOREIGN KEY ([codigo_b]) REFERENCES RentACar_Tipo_Veiculo([codigo])
);

CREATE TABLE RentACar_Aluguer(
    [data] DATE NOT NULL,
    [duracao] INT NOT NULL CHECK (duracao > 0),
    [numero]INT NOT NULL,
    [numero_balcao] INT NOT NULL,
    [matricula_veiculo] varchar(8) NOT NULL,
    [NIF_cliente] INT NOT NULL,
    PRIMARY KEY ([numero]),
    FOREIGN KEY ([matricula_veiculo]) REFERENCES RentACar_Veiculo([matricula]),
    FOREIGN KEY ([numero_balcao]) REFERENCES RentACar_Balcao([numero]),
    FOREIGN KEY ([NIF_cliente]) REFERENCES RentACar_Cliente([NIF])
);