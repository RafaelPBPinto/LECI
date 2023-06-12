CREATE TABLE ATL_PESSOA (
    [nome] VARCHAR(30) NOT NULL,
    [num_cc] INT NOT NULL CHECK([num_cc] > 0 AND [num_cc] < 99999999),
    [morada] VARCHAR(30) NOT NULL,
    [data_nascimento] DATE NOT NULL,
    PRIMARY KEY ([num_cc])
);

CREATE TABLE ATL_ATIVIDADE (
    [id] INT NOT NULL CHECK([id] > 0),
    [descricao] VARCHAR(30) NOT NULL,
    [custo] INT NOT NULL CHECK([custo] > 0),
    PRIMARY KEY ([id])
);

CREATE TABLE ATL_TURMA (
    [id] INT NOT NULL CHECK([id] > 0),
    [ano_letivo] INT NOT NULL CHECK([ano_letivo] > 0),
    [num_max_alunos] INT NOT NULL CHECK([num_max_alunos] > 0),
    [designacao] VARCHAR(30) NOT NULL,
    [professor] INT NOT NULL CHECK([professor] > 0),
    PRIMARY KEY ([id]),
    FOREIGN KEY ([professor]) REFERENCES ATL_PESSOA([num_cc])
);

CREATE TABLE ATL_ALUNO (
    [num_cc] INT NOT NULL CHECK([num_cc] > 0 AND [num_cc] < 99999999),
    [id_turma] INT NOT NULL CHECK([id_turma] > 0),
    [id_atividade] INT NOT NULL CHECK([id_atividade] > 0),
    [id] INT NOT NULL CHECK([id] > 0),
    PRIMARY KEY ([id], [num_cc]),
    FOREIGN KEY ([num_cc]) REFERENCES ATL_PESSOA([num_cc]),
    FOREIGN KEY ([id_turma]) REFERENCES ATL_TURMA([id]),
    FOREIGN KEY ([id_atividade]) REFERENCES ATL_ATIVIDADE([id])
);

CREATE TABLE ATL_ENC_EDUCACAO (
    [id] INT NOT NULL CHECK([id] > 0),
    [e-mail] VARCHAR(30) NOT NULL,
    [contato] INT NOT NULL CHECK([contato] > 0 AND [contato] < 999999999),
    [num_cc] INT NOT NULL CHECK([num_cc] > 0 AND [num_cc] < 99999999),
    [num_cc_aluno] INT NOT NULL CHECK([num_cc_aluno] > 0 AND [num_cc_aluno] < 99999999),
    [aluno] INT NOT NULL CHECK([aluno] > 0),
    PRIMARY KEY ([id], [num_cc]),
    FOREIGN KEY ([num_cc]) REFERENCES ATL_PESSOA([num_cc]),
    FOREIGN KEY ([aluno], [num_cc_aluno]) REFERENCES ATL_ALUNO([id], [num_cc])
);

CREATE TABLE ATL_PROFESSOR (
    [num_func] INT NOT NULL CHECK([num_func] > 0 AND [num_func] < 99999999),
    [num_cc] INT NOT NULL CHECK([num_cc] > 0 AND [num_cc] < 99999999),
    [id_turma] INT NOT NULL CHECK([id_turma] > 0),
    [e-mail] VARCHAR(30) NOT NULL,
    [contato] INT NOT NULL CHECK([contato] > 0 AND [contato] < 999999999),
    PRIMARY KEY ([num_func], [num_cc]),
    FOREIGN KEY ([num_cc]) REFERENCES ATL_PESSOA([num_cc]),
    FOREIGN KEY ([id_turma]) REFERENCES ATL_TURMA([id])
);