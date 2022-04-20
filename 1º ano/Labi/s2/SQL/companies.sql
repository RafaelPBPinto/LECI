CREATE TABLE companies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    address TEXT,
    vatnumber INTEGER
);

INSERT INTO companies VALUES (
    1, "MaxiPlano", "Aveiro", "123123123123"
);

INSERT INTO companies VALUES (
    2, "Luis Manuel & filhos", "Águeda", 54534343435
);

INSERT INTO companies VALUES (
    3, "ProDesign", "Porto", 54534343435
);

SELECT * FROM companies;

SELECT vatnumber FROM companies WHERE id = 1;
SELECT phone FROM contacts WHERE company_id = 1;
SELECT email FROM contacts WHERE company_id = 1;
