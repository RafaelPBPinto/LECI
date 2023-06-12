CREATE FUNCTION PROJETO_historicopedidos(@nif INT)
RETURNS TABLE
AS
RETURN
(
    SELECT foi_aceite, data_pedido, maquina_ni, nivel_urgencia, notas
    FROM PROJETO_Construcao
    JOIN PROJETO_Pedido_de_Trabalho ON numero = num_pedido
    WHERE empresa_NIF = @nif
)

CREATE FUNCTION PROJETO_historicopedidosmanutencao(@nif INT)
RETURNS TABLE
AS
RETURN
(
    SELECT foi_aceite, data_pedido, maquina_ni, nivel_urgencia, descricao
    FROM PROJETO_Manutencao
    JOIN PROJETO_Pedido_de_Trabalho ON numero = num_pedido
    WHERE empresa_NIF = @nif
)

CREATE FUNCTION PROJETO_lista_trabalho_por_trabalhador(@trabalhador INT)
RETURNS TABLE
AS
RETURN
(
    SELECT trabalho
    FROM PROJETO_Trabalho_Trabalhador
    WHERE trabalhador = @trabalhador
)

CREATE FUNCTION PROJETO_ListMachines(@nif INT)
RETURNS TABLE
AS
RETURN
(
    SELECT id, tipo, marca, PROJETO_Maquina.nome
    FROM PROJETO_Maquina
    JOIN PROJETO_Empresa ON NIF = empresa_NIF
    WHERE NIF = @nif AND Maq_pendente = 0
)

CREATE FUNCTION PROJETO_pesquisa_peca(@text VARCHAR(100))
RETURNS TABLE
AS
RETURN
(
    SELECT id, nome, marca, num_de_pecas, funcionalidade
    FROM PROJETO_Peca
    JOIN PROJETO_Stock ON id = peca_id
    WHERE nome LIKE @text
)

CREATE FUNCTION PROJETO_pesquisar_trabalhador(@pesquisa VARCHAR(100))
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM Projeto_Trabalhador
    WHERE nome LIKE @pesquisa
)

CREATE FUNCTION PROJETO_trabalho_interface_trabalhador(@numcc INT)
RETURNS TABLE
AS
RETURN
(
    SELECT trabalho, pe.nome AS nome_empresa, localizacao, pm.nome AS nome_maquina, marca, tipo, data_inicio 
    FROM PROJETO_Trabalhador AS ptr
    INNER JOIN PROJETO_Trabalho_Trabalhador AS pt ON ptr.num_CC = pt.trabalhador
    INNER JOIN PROJETO_Trabalho AS ptra ON ptra.numero = pt.trabalho
    INNER JOIN PROJETO_Pedido_de_Trabalho AS ppt ON ppt.numero = ptra.numero_pedido
    INNER JOIN PROJETO_Empresa AS pe ON pe.NIF = ppt.empresa_NIF
    INNER JOIN PROJETO_Maquina AS pm ON pm.id = ppt.maquina_ni
    WHERE num_CC = @numcc
)

CREATE FUNCTION PROJETO_trabalho_interface_trabalhador(@numcc INT)
RETURNS TABLE
AS
RETURN
(
    SELECT trabalho, pe.nome AS nome_empresa, localizacao, pm.nome AS nome_maquina, marca, tipo, data_inicio 
    FROM PROJETO_Trabalhador AS ptr
    INNER JOIN PROJETO_Trabalho_Trabalhador AS pt ON ptr.num_CC = pt.trabalhador
    INNER JOIN PROJETO_Trabalho AS ptra ON ptra.numero = pt.trabalho
    INNER JOIN PROJETO_Pedido_de_Trabalho AS ppt ON ppt.numero = ptra.numero_pedido
    INNER JOIN PROJETO_Empresa AS pe ON pe.NIF = ppt.empresa_NIF
    INNER JOIN PROJETO_Maquina AS pm ON pm.id = ppt.maquina_ni
    WHERE num_CC = @numcc
)

CREATE FUNCTION PROJETO_check_trabalhador(@numcc INT)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM PROJETO_Trabalhador 
    WHERE num_CC = @numcc
)

CREATE FUNCTION PROJETO_check_empresa(@nif INT)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM PROJETO_Empresa 
    WHERE NIF = @nif
)

CREATE FUNCTION PROJETO_listar_pedidos_com_filtros(@filter VARCHAR(100))
RETURNS TABLE
AS
RETURN(
  SELECT
	ppt.numero,
    pe.nome AS nome_empresa,
	ppt.foi_aceite,
    ppt.data_pedido,
    pm.nome AS nome_maquina,
    ppt.nivel_urgencia,
    CASE
      WHEN PROJETO_Manutencao.num_pedido IS NOT NULL THEN 'Manutencao'
      WHEN PROJETO_Construcao.num_pedido IS NOT NULL THEN 'Construcao'
      ELSE ''
    END AS tipo,
    COALESCE(PROJETO_Manutencao.descricao, PROJETO_Construcao.notas) AS descricao
  FROM PROJETO_Pedido_de_Trabalho AS ppt
  LEFT JOIN PROJETO_Manutencao ON ppt.numero = PROJETO_Manutencao.num_pedido
  LEFT JOIN PROJETO_Construcao ON ppt.numero = PROJETO_Construcao.num_pedido
  INNER JOIN PROJETO_Empresa AS pe ON pe.NIF = ppt.empresa_NIF
  INNER JOIN PROJETO_Maquina AS pm ON pm.id = ppt.maquina_ni
  WHERE ppt.foi_aceite = @filter
)

CREATE FUNCTION PROJETO_listar_pedidos()
RETURNS TABLE
AS
RETURN(
  SELECT
    PROJETO_Pedido_de_Trabalho.empresa_NIF,
	PROJETO_Pedido_de_Trabalho.foi_aceite,
    PROJETO_Pedido_de_Trabalho.data_pedido,
    PROJETO_Pedido_de_Trabalho.maquina_ni,
    PROJETO_Pedido_de_Trabalho.nivel_urgencia,
    CASE
      WHEN PROJETO_Manutencao.num_pedido IS NOT NULL THEN 'Manutencao'
      WHEN PROJETO_Construcao.num_pedido IS NOT NULL THEN 'Construcao'
      ELSE ''
    END AS tipo,
    COALESCE(PROJETO_Manutencao.descricao, PROJETO_Construcao.notas) AS descricao
  FROM PROJETO_Pedido_de_Trabalho
  LEFT JOIN PROJETO_Manutencao ON PROJETO_Pedido_de_Trabalho.numero = PROJETO_Manutencao.num_pedido
  LEFT JOIN PROJETO_Construcao ON PROJETO_Pedido_de_Trabalho.numero = PROJETO_Construcao.num_pedido
)

CREATE FUNCTION PROJETO_listar_trabalhos()
RETURNS TABLE AS
RETURN(
SELECT	pt.numero,
		pt.numero_pedido,
		pt.data_inicio,
		pt.data_fim,
		pt.foi_feito,
		pt.custo,
		pt.nr_horas,
		pe.nome AS nome_empresa,
		pe.localizacao,
		pm.nome AS nome_maquina,
		CASE
			WHEN PROJETO_Manutencao.num_pedido IS NOT NULL THEN 'Manutencao'
			WHEN PROJETO_Construcao.num_pedido IS NOT NULL THEN 'Construcao'
			ELSE ''
		END AS tipo,
		COALESCE(PROJETO_Manutencao.descricao, PROJETO_Construcao.notas) AS descricao
FROM PROJETO_Trabalho AS pt
INNER JOIN PROJETO_Pedido_de_Trabalho AS ppt ON ppt.numero = pt.numero_pedido
LEFT JOIN PROJETO_Manutencao ON ppt.numero = PROJETO_Manutencao.num_pedido
LEFT JOIN PROJETO_Construcao ON ppt.numero = PROJETO_Construcao.num_pedido
INNER JOIN PROJETO_Empresa AS pe ON pe.NIF = ppt.empresa_NIF
INNER JOIN PROJETO_Maquina AS pm ON pm.id = ppt.maquina_ni
);