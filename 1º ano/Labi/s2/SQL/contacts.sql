CREATE TABLE contacts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    firstname TEXT,
    middlename TEXT,
    lastname TEXT,
    email TEXT,
    phone INTEGER,
    company_id INTEGER 
);

INSERT INTO contacts VALUES (
    1, "João", "Manuel", "Fonseca", "jmf@gmail.com", 912345654, 3
);

INSERT INTO contacts VALUES (
    2, "Pedro", "Albuquerque", "Silva", "pedro23@gmail.com", 932454349, 2
);

INSERT INTO contacts VALUES (
    3, "Maria", "Carreira", "Dinis", "mariadi@ua.pt", 234958673, 1
);

INSERT INTO contacts VALUES (
    4, "Catarina", "Alexandra", "Rodrigo", "calexro@sapo.pt", 963343386, 1
);

SELECT * FROM contacts;

SELECT email FROM contacts Where firstname="Maria";

SELECT * FROM contacts ORDER BY firstname ASC;
SELECT * FROM contacts ORDER BY firstname DESC;

UPDATE contacts SET lastname = "Sousa" WHERE phone = 963343386;