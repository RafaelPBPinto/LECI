CREATE TABLE PrescEMed_Medico(
    [nome]  varchar(250) NOT NULL,
    [numero_identificacao] INT NOT NULL,
    [especialidade] varchar(100) NOT NULL,
    PRIMARY KEY ([numero_identificacao])
);

CREATE TABLE PrescEMed_Paciente(
    [nome]  varchar(250) NOT NULL,
    [numero_utente] INT NOT NULL,
    [endereco] varchar(250) NOT NULL,
    [data_nascimento] DATE NOT NULL,
    PRIMARY KEY ([numero_utente])
);

CREATE TABLE PrescEMed_Farmacia(
    [NIF] INT NOT NULL,
    [nome] varchar(250) NOT NULL,
    [endereco] varchar(250) NOT NULL,
    [telefone] INT NOT NULL,
    PRIMARY KEY ([NIF])
);

CREATE TABLE PrescEMed_Farmaceutico(
    [nome] varchar(250) NOT NULL,
    [endereco] varchar(250) NOT NULL,
    [telefone] INT NOT NULL,
    [num_registo_nacional] INT NOT NULL,
    PRIMARY KEY ([num_registo_nacional])
);

CREATE TABLE PrescEMed_Farmaco(
    [formula] varchar(250) NOT NULL ,
    [NIF] INT NOT NULL,
    [num_registo_farmaceutico] INT NOT NULL,
    [nome_comercial] varchar(250) NOT NULL,
    PRIMARY KEY ([nome_comercial],[num_registo_farmaceutico]),
    FOREIGN KEY ([num_registo_farmaceutico]) REFERENCES PrescEMed_Farmaceutico([num_registo_nacional])

);

CREATE TABLE PrescEMed_Farmaco_Farmacia(
    [NIF_farmacia] INT NOT NULL,
    [nome_come_farmaco] varchar(250) NOT NULL,
    [num_registo_nacional] INT NOT NULL,
    PRIMARY KEY ([NIF_farmacia],[nome_come_farmaco],[num_registo_nacional]),
    FOREIGN KEY ([NIF_farmacia]) REFERENCES PrescEMed_Farmacia([NIF]),
    FOREIGN KEY ([nome_come_farmaco],[num_registo_nacional]) REFERENCES PrescEMed_Farmaco([nome_comercial],[num_registo_farmaceutico])
);

CREATE TABLE PrescEMed_Prescricao(
    [numero_unico] INT NOT NULL,
    [data] DATE NOT NULL,
    [numero_ide_medico] INT NOT NULL,
    [numero_utente] INT NOT NULL,
    [nome_comercial_farmaco] varchar(250) NOT NULL,
    [numero_registo_farmaceutico] INT NOT NULL,
    [num_registo_nacional] INT NOT NULL,
    PRIMARY KEY ([nome_comercial_farmaco],[numero_unico],[numero_ide_medico],[numero_utente]),
    FOREIGN KEY ([numero_utente]) REFERENCES PrescEMed_Paciente([numero_utente]),
    FOREIGN KEY ([numero_ide_medico]) REFERENCES PrescEMed_Medico([numero_identificacao]),
    FOREIGN KEY ([nome_comercial_farmaco],[num_registo_nacional]) REFERENCES PrescEMed_Farmaco([nome_comercial],[num_registo_farmaceutico])
);
