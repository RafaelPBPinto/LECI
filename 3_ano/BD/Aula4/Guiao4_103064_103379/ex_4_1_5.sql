CREATE TABLE CONFERENCE_PESSOA (
    [nome] VARCHAR(30) NOT NULL,
    [e-mail] VARCHAR(30) NOT NULL,
    PRIMARY KEY ([e-mail], [nome])
);

CREATE TABLE CONFERENCE_PARTICIPANTE (
    [nome_pessoa] VARCHAR(30) NOT NULL,
    [morada] VARCHAR(30) NOT NULL,
    [e-mail_pessoa] VARCHAR(30) NOT NULL,
    [data_inscricao] DATE NOT NULL,
    PRIMARY KEY ([e-mail_pessoa]),
    FOREIGN KEY ([e-mail_pessoa], [nome_pessoa]) REFERENCES CONFERENCE_PESSOA([e-mail], [nome])
);

CREATE TABLE CONFERENCE_NAO_ESTUDANTE (
    [e-mail_participante] VARCHAR(30) NOT NULL,
    [referencia_transacao] INT NOT NULL CHECK([referencia_transacao] > 0),
    PRIMARY KEY ([e-mail_participante]),
    FOREIGN KEY ([e-mail_participante]) REFERENCES CONFERENCE_PARTICIPANTE([e-mail_pessoa])
);

CREATE TABLE CONFERENCE_INSTITUICAO (
    [codigo] INT NOT NULL CHECK([codigo] > 0),
    [nome] VARCHAR(30) NOT NULL,
    [endereco] VARCHAR(30) NOT NULL,
    PRIMARY KEY ([codigo])
);

CREATE TABLE CONFERENCE_ESTUDANTE (
    [e-mail_participante] VARCHAR(30) NOT NULL,
    [comprovativo] VARCHAR(50) NOT NULL,
    [codigo_inst] INT NOT NULL CHECK([codigo_inst] > 0),
    PRIMARY KEY ([e-mail_participante]),
    FOREIGN KEY ([e-mail_participante]) REFERENCES CONFERENCE_PARTICIPANTE([e-mail_pessoa]),
    FOREIGN KEY ([codigo_inst]) REFERENCES CONFERENCE_INSTITUICAO([codigo])
);

CREATE TABLE CONFERENCE_AUTOR (
    [e_mail_pessoa] VARCHAR(30) NOT NULL,
    [nome_pessoa] VARCHAR(30) NOT NULL,
    [codigo_inst] INT NOT NULL CHECK([codigo_inst] > 0),
    PRIMARY KEY ([e_mail_pessoa]),
    FOREIGN KEY ([e_mail_pessoa], [nome_pessoa]) REFERENCES CONFERENCE_PESSOA([e-mail], [nome]),
    FOREIGN KEY ([codigo_inst]) REFERENCES CONFERENCE_INSTITUICAO([codigo])
);

CREATE TABLE CONFERENCE_ARTIGO_CIENTIFICO (
    [n_registo] INT NOT NULL CHECK([n_registo] > 0),
    [titulo] VARCHAR(30) NOT NULL,
    [e_mail_autor] VARCHAR(30) NOT NULL,
    PRIMARY KEY ([n_registo]),
    FOREIGN KEY ([e_mail_autor]) REFERENCES CONFERENCE_AUTOR([e_mail_pessoa])
);
