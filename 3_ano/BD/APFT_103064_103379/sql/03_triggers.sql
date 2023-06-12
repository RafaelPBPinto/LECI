CREATE TRIGGER PROJETO_verificar_data_pedidos
ON PROJETO_Pedido_de_Trabalho
INSTEAD OF INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @EmpresaNIF INT 
    DECLARE @DataInicio DATE 

    DECLARE @RowCount INT
    DECLARE @MaxRowCount INT
    SET @MaxRowCount = 3

    DECLARE cursorVerificarTresLinhas CURSOR FOR
    SELECT empresa_NIF, data_pedido FROM inserted

    OPEN cursorVerificarTresLinhas

    FETCH NEXT FROM cursorVerificarTresLinhas INTO @EmpresaNIF, @DataInicio

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SET @RowCount = (SELECT COUNT(*) FROM PROJETO_Pedido_de_Trabalho WHERE empresa_NIF = @EmpresaNIF AND data_pedido = @DataInicio)

        IF @RowCount >= @MaxRowCount
        BEGIN

            RAISERROR('So pode realizar ate tres pedidos por dia.', 16, 1)

            ROLLBACK;
            RETURN;
        END

        FETCH NEXT FROM cursorVerificarTresLinhas INTO @EmpresaNIF, @DataInicio
    END

    CLOSE cursorVerificarTresLinhas
    DEALLOCATE cursorVerificarTresLinhas


    INSERT INTO PROJETO_Pedido_de_Trabalho (numero,empresa_NIF, foi_aceite,data_pedido,maquina_ni,nivel_urgencia)
    SELECT * FROM inserted;
END

CREATE TRIGGER PROJETO_verifyupdatematerial ON PROJETO_Stock
INSTEAD OF INSERT,UPDATE
AS
BEGIN

	IF EXISTS (SELECT inserted.num_de_pecas FROM inserted WHERE num_de_pecas < 0)
		RAISERROR('Nao tem quantidade suficiente no stock dessa peca',16,1);
	ELSE 
		INSERT INTO PROJECT_Stock SELECT * FROM inserted;
END;