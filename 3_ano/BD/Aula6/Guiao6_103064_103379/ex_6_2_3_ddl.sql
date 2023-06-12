USE p1g2
GO

/*EX3 - CREATE A PRESCRICAO DATABASE*/

CREATE TABLE PRESCRICAO_medico(
[numSNS]		INT		NOT NULL,
[nome]		varchar(100)NOT NULL,
[especialidade]varchar(100)NOT NULL,
PRIMARY KEY ([numSNS])
)

CREATE TABLE PRESCRICAO_paciente(
[numUtente]		INT		NOT NULL,
[nome]		varchar(100)NOT NULL,
[dataNasc]		DATE	NOT NULL,
[endereco]	varchar(100)NOT NULL
PRIMARY KEY ([numUtente])
)

CREATE TABLE PRESCRICAO_farmacia(
[nome]		varchar(100)NOT NULL,
[telefone]		INT		NOT NULL,
[endereco]	varchar(100)NOT NULL
PRIMARY KEY ([nome])
)

CREATE TABLE PRESCRICAO_farmaceutica(
[numReg]		INT		NOT NULL,
[nome]		varchar(100)NOT NULL,
[endereco]	varchar(100)NOT NULL
PRIMARY KEY ([numReg])
)

CREATE TABLE PRESCRICAO_farmaco(
[nome]		varchar(100)NOT NULL,
[numRegFarm]	INT		NOT NULL,
[formula]	varchar(100)NOT NULL
PRIMARY KEY ([nome])
FOREIGN KEY ([numRegFarm]) REFERENCES PRESCRICAO_farmaceutica([numReg])
)

CREATE TABLE PRESCRICAO_prescricao(
[numPresc]		INT		NOT NULL,
[numUtente]		INT		NOT NULL,
[numMedico]		INT		NOT NULL,
[farmacia]		varchar(100),
[dataProc]		DATE,
PRIMARY KEY([numPresc]),
FOREIGN KEY ([numUtente]) REFERENCES PRESCRICAO_paciente([numUtente]),
FOREIGN KEY ([numMedico]) REFERENCES PRESCRICAO_medico([numSNS]),
FOREIGN KEY ([farmacia])  REFERENCES PRESCRICAO_farmacia([nome])
)

CREATE TABLE PRESCRICAO_presc_farmaco(
[numPresc]		INT		NOT NULL,
[numRegFarm]	INT		NOT NULL,
[nomeFarmaco]varchar(100)NOT NULL,
PRIMARY KEY([numPresc],[numRegFarm],[nomeFarmaco]),
FOREIGN KEY ([numPresc]) REFERENCES PRESCRICAO_prescricao([numPresc]),
FOREIGN KEY ([numRegFarm]) REFERENCES PRESCRICAO_farmaceutica([numReg]),
FOREIGN KEY ([nomeFarmaco])  REFERENCES PRESCRICAO_farmaco([nome])
)

