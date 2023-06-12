CREATE TABLE STOCKS_ARMAZEM (
    [morada] VARCHAR(30) NOT NULL,
    [unidades_armazem] INT NOT NULL CHECK([unidades_armazem] > 0),
    [codigo] INT NOT NULL CHECK([codigo] > 0),
    PRIMARY KEY ([codigo])
);

CREATE TABLE STOCKS_PRODUTOS (
    [codigo] INT NOT NULL CHECK([codigo] > 0),
    [codigo_armazem] INT NOT NULL CHECK([codigo_armazem] > 0),
    PRIMARY KEY ([codigo], [codigo_armazem]),
    FOREIGN KEY ([codigo_armazem]) REFERENCES STOCKS_ARMAZEM([codigo])
);

CREATE TABLE STOCKS_TIPO_FORNECEDOR (
    [codigo] INT NOT NULL CHECK([codigo] > 0),
    [designacao] VARCHAR(10) NOT NULL,
    PRIMARY KEY([codigo])
);

CREATE TABLE STOCKS_CONDICOES_PAGAMENTO (
    [codigo] INT NOT NULL CHECK([codigo] > 0),
    [prazo] DATE NOT NULL,
    [designacao] VARCHAR(10),
    PRIMARY KEY ([codigo])
);

CREATE TABLE STOCKS_FORNECEDOR (
    [codigo] INT NOT NULL CHECK([codigo] > 0),
    [nome] VARCHAR(30) NOT NULL,
    [NIF] INT NOT NULL CHECK([NIF] > 0 AND [NIF] < 999999),
    [codigo_tipo_fornecedor] INT NOT NULL CHECK([codigo_tipo_fornecedor] > 0),
    [codigo_cond_pagamento] INT NOT NULL CHECK([codigo_cond_pagamento] > 0),
    PRIMARY KEY ([codigo], [codigo_tipo_fornecedor], [codigo_cond_pagamento]),
    FOREIGN KEY ([codigo_tipo_fornecedor]) REFERENCES STOCKS_TIPO_FORNECEDOR([codigo]),
    FOREIGN KEY ([codigo_cond_pagamento]) REFERENCES STOCKS_CONDICOES_PAGAMENTO([codigo])
);

CREATE TABLE STOCKS_ECOMENDA (
    [codigo] INT NOT NULL CHECK([codigo] > 0),
    [codigo_produtos] INT NOT NULL CHECK([codigo_produtos] > 0),
    [codigo_fornecedor] INT NOT NULL CHECK([codigo_fornecedor] > 0),
    [codigo_armazem] INT NOT NULL CHECK([codigo_armazem] > 0),
    [codigo_tipo_fornecedor] INT NOT NULL CHECK([codigo_tipo_fornecedor] > 0),
    [codigo_cond_pagamento] INT NOT NULL CHECK([codigo_cond_pagamento] > 0),
    PRIMARY KEY ([codigo], [codigo_produtos], [codigo_fornecedor]),
    FOREIGN KEY ([codigo_fornecedor], [codigo_tipo_fornecedor], [codigo_cond_pagamento]) REFERENCES STOCKS_FORNECEDOR([codigo], [codigo_tipo_fornecedor], [codigo_cond_pagamento]),
    FOREIGN KEY ([codigo_produtos], [codigo_armazem]) REFERENCES STOCKS_PRODUTOS([codigo], [codigo_armazem])    
);

