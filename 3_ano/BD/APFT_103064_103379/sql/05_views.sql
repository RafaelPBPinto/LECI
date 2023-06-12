CREATE VIEW PROJETO_lista_trabalhadores AS 
SELECT * FROM PROJETO_Trabalhador

CREATE VIEW PROJETO_lista_empresa AS
SELECT * FROM PROJETO_Empresa;

CREATE VIEW PROJETO_listar_fornecedores AS
SELECT * FROM PROJETO_Fornecedor ;

CREATE VIEW PROJETO_lista_pecas AS
SELECT * FROM PROJETO_Peca;

CREATE VIEW PROJETO_pedido_material_pendentes AS
SELECT * FROM PROJETO_Pedido_de_Material 
WHERE verify = 0;

CREATE VIEW PROJETO_listar_stock AS
SELECT id,nome,marca,num_de_pecas 
FROM PROJETO_Peca 
JOIN PROJETO_Stock ON id = peca_id;

CREATE VIEW PROJETO_lista_trabalhos_pendentes AS
SELECT pt.numero,pt.numero_pedido,pt.data_inicio,ppt.empresa_NIF,pe.nome AS nome_empresa,ppt.maquina_ni,pm.nome AS nome_maquina 
FROM PROJETO_Trabalho as pt
JOIN PROJETO_Pedido_de_Trabalho AS  ppt ON pt.numero_pedido = ppt.numero
JOIN PROJETO_Empresa AS pe ON ppt.empresa_NIF = pe.NIF
JOIN PROJETO_Maquina AS pm ON ppt.maquina_ni = pm.id
WHERE pt.foi_feito = 0;

CREATE VIEW PROJETO_lista_trabalhos AS 
SELECT * FROM PROJETO_Trabalho

CREATE VIEW PROJETO_lista_trabalho_trabalhador AS
SELECT 
    PROJETO_Trabalhador.num_cc,
    PROJETO_Trabalhador.nome,
    PROJETO_Empresa.nome AS nome_empresa,
    PROJETO_Empresa.NIF,
    PROJETO_Maquina.marca,
    PROJETO_Maquina.tipo,
    PROJETO_Maquina.nome AS nome_maquina,
    PROJETO_Trabalho.numero AS numero_trabalho,
    PROJETO_Pedido_de_Trabalho.numero AS numero_pedido
FROM 
    PROJETO_Trabalhador
    JOIN PROJETO_Trabalho_Trabalhador ON PROJETO_Trabalhador.num_cc = PROJETO_Trabalho_Trabalhador.trabalhador
    JOIN PROJETO_Trabalho ON PROJETO_Trabalho_Trabalhador.trabalho = PROJETO_Trabalho.numero
    JOIN PROJETO_Pedido_de_Trabalho ON PROJETO_Trabalho.numero_pedido = PROJETO_Pedido_de_Trabalho.numero
    JOIN PROJETO_Maquina ON PROJETO_Pedido_de_Trabalho.maquina_ni = PROJETO_Maquina.id
    JOIN PROJETO_Empresa ON PROJETO_Maquina.empresa_NIF = PROJETO_Empresa.NIF