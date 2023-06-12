CREATE PROCEDURE dbo.PROJETO_inserir_construcao 
(@tipo VARCHAR(100),
 @marca VARCHAR(100),
 @nome VARCHAR(100),
 @NIF INT ,
 @date DATE,
 @nivel_urgencia VARCHAR(50),
 @descricao VARCHAR(500))
 AS
	BEGIN
		BEGIN TRY
			BEGIN TRAN

				DECLARE @max_maq AS INT;
				DECLARE @max_ped AS INT;
				INSERT INTO PROJETO_Maquina (tipo,marca,nome,empresa_NIF,Maq_pendente) VALUES
				(@tipo,@marca,@nome,@NIF,1);
				SET @max_maq = (SELECT MAX(id) FROM PROJETO_Maquina);
				INSERT INTO PROJETO_Pedido_de_Trabalho (empresa_NIF,foi_aceite,data_pedido,maquina_ni,nivel_urgencia) VALUES
					(@NIF,'Pendente',@date,@max_maq,@nivel_urgencia);
				SET @max_ped = (SELECT MAX(numero) FROM PROJETO_Pedido_de_Trabalho);
				INSERT INTO PROJETO_Construcao (num_pedido,notas) VALUES
					(@max_ped,@descricao);
			COMMIT TRAN
		END TRY
		BEGIN CATCH
			ROLLBACK;
		END CATCH;
END;

CREATE PROCEDURE PROJETO_inserir_manutencao (@nif INT,
										 @date DATE,
										 @maquina_ni INT,
										 @nivel_urgencia VARCHAR(100),
										 @descricao VARCHAR(100))
AS
	BEGIN
		DECLARE @maxnumber AS INT;
		BEGIN
			BEGIN TRY
				BEGIN TRAN
					INSERT INTO PROJETO_Pedido_de_Trabalho (empresa_NIF,foi_aceite,data_pedido,maquina_ni,nivel_urgencia) VALUES
					(@nif,'Pendente',@date,@maquina_ni,@nivel_urgencia);
					SET @maxnumber = (SELECT MAX(numero) FROM PROJETO_Pedido_de_Trabalho)
					INSERT INTO PROJETO_Manutencao (num_pedido,descricao) VALUES
					(@maxnumber,@descricao);
				COMMIT TRAN;
			END TRY
			BEGIN CATCH
				SELECT   
					ERROR_NUMBER() AS ErrorNumber  
					,ERROR_MESSAGE() AS ErrorMessage; 				
				
				ROLLBACK;

			END CATCH;
				
		END;

	END;

CREATE PROCEDURE PROJETO_inserir_nova_peca (@nome VARCHAR(50),@marca VARCHAR(100),@funcionalidade VARCHAR(200))
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN
			DECLARE @pecaid AS INT;
			INSERT INTO PROJETO_Peca(nome,marca,funcionalidade) VALUES
			(@nome,@marca,@funcionalidade);
			SET @pecaid = (SELECT MAX(id) FROM PROJETO_Peca);
			INSERT INTO PROJETO_Stock (peca_id,num_de_pecas) VALUES
			(@pecaid,1);
		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		ROLLBACK;
	END CATCH;
END;

CREATE PROCEDURE PROJETO_inserir_pedido_de_material
(@date DATE,@hour TIME,@peca_id INT,@quantidade INT ,@trabalho INT,@trabalhador INT) AS
BEGIN
	INSERT INTO PROJETO_Pedido_de_Material 
	([data],hora,peca_id,quantidade,trabalho,trabalhador)
	VALUES (@date,@hour,@peca_id,@quantidade,@trabalho,@trabalhador);
END;

CREATE PROCEDURE PROJETO_inserir_trabalho_aceite(@num_pedido INT,@state VARCHAR(50),@date DATE)
AS 
BEGIN
	IF @state = 'Rejeitado'
			BEGIN
				UPDATE PROJETO_Pedido_de_Trabalho
				SET foi_aceite = 'Rejeitado'
				WHERE numero= @num_pedido;
			END;

	IF @state = 'Aceite'
		BEGIN
			BEGIN TRY 
				BEGIN TRAN

					UPDATE PROJETO_Pedido_de_Trabalho
					SET foi_aceite = 'Aceite'
					WHERE numero = @num_pedido;

					INSERT INTO PROJETO_Trabalho (numero_pedido,data_inicio,foi_feito)
					VALUES (@num_pedido,@date,0)
				COMMIT TRAN;
			END TRY
			BEGIN CATCH	
				ROLLBACK;
			END CATCH;
		END;
END;

CREATE PROCEDURE PROJETO_inserir_trabalho_trabalhador(@num_pedido INT,@nif INT)
AS
BEGIN
	DECLARE @num_trabalho AS INT
	SET @num_trabalho = (SELECT numero FROM PROJETO_Trabalho WHERE numero_pedido=@num_pedido)

	INSERT INTO PROJETO_Trabalho_Trabalhador (trabalho,trabalhador) VALUES
	(@num_trabalho,@nif);
END;

CREATE PROCEDURE PROJETO_update_material (@pedido INT)
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN

			DECLARE @peca_id AS INT;
			DECLARE @quant_peca AS INT;
			SET @peca_id = (SELECT peca_id FROM PROJETO_Pedido_de_Material WHERE numero=@pedido);
			SET @quant_peca = (SELECT quantidade FROM PROJETO_Pedido_de_Material WHERE numero=@pedido);
	
			UPDATE PROJETO_Stock
			SET num_de_pecas = num_de_pecas - @quant_peca
			WHERE peca_id = @peca_id;


			UPDATE PROJETO_Pedido_de_Material
			SET verify=1
			WHERE numero = @pedido;
			
		COMMIT TRAN;
	END TRY
	BEGIN CATCH
		SELECT   
			ERROR_NUMBER() AS ErrorNumber,  
			ERROR_MESSAGE() AS ErrorMessage;
		ROLLBACK;
	END CATCH;
END;

CREATE PROCEDURE PROJETO_concluir_trabalho (@trabalho INT,@datafinal DATE,@custo INT,@horas INT)
AS
BEGIN
	UPDATE PROJETO_Trabalho 
	SET data_fim = @datafinal , nr_horas = @horas, custo = @custo,foi_feito = 1 
	WHERE numero = @trabalho
END;

CREATE PROCEDURE PROJETO_add_fornecedor (@pedido INT,@fornecedor INT,@preco FLOAT)
AS
BEGIN
	UPDATE PROJETO_Pedido_de_Material 
	SET verify = 1 , preco = @preco , fornecedor = @fornecedor WHERE numero = @pedido;
END;

CREATE PROCEDURE PROJETO_add_stock (@peca INT,@quantidade INT)
AS
BEGIN
	UPDATE PROJETO_Stock
	SET num_de_pecas = num_de_pecas + @quantidade
	WHERE peca_id = @peca;
END;

CREATE PROCEDURE PROJETO_remove_trabalhador (@trabalhador INT)
AS
BEGIN
	DELETE FROM PROJETO_Trabalhador
	WHERE num_CC = @trabalhador;
END;

CREATE PROCEDURE PROJETO_insert_trabalhador (@nome VARCHAR(100),@numcc INT,@morada VARCHAR(100))
AS
BEGIN
	INSERT INTO PROJETO_Trabalhador (nome,num_CC,morada) VALUES
	(@nome,@numcc,@morada);
END;

CREATE PROCEDURE PROJETO_ordenar_stock (@tipo VARCHAR(100))
AS
BEGIN

	IF @tipo = 'ID'
		SELECT id,nome,marca,num_de_pecas FROM PROJETO_Peca
		JOIN PROJETO_Stock ON id = peca_id
		ORDER BY id;
	
	IF @tipo = 'Nome'
		SELECT id,nome,marca,num_de_pecas FROM PROJETO_Peca
		JOIN PROJETO_Stock ON id = peca_id
		ORDER BY nome;

	IF @tipo = 'Marca'
		SELECT id,nome,marca,num_de_pecas FROM PROJETO_Peca
		JOIN PROJETO_Stock ON id = peca_id
		ORDER BY marca;
END;

CREATE PROCEDURE PROJETO_ordenar_trabalhadores (@tipo VARCHAR(100))
AS 
BEGIN

	IF @tipo = 'NUMCC'
		SELECT * FROM PROJETO_Trabalhador
		ORDER BY num_CC;

	IF @tipo = 'NOME'
		SELECT * FROM PROJETO_Trabalhador
		ORDER BY nome;

END;