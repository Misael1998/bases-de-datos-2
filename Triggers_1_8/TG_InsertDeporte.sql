ALTER TRIGGER TG_InsercionDeportes
	ON [ScriptProyecto].[dbo].[Deporte]
		INSTEAD OF INSERT 
AS
BEGIN
	-- ---------------------------------------------------------
	-- DECLARCION DE VARIABLES
	-- ---------------------------------------------------------
	DECLARE @nombreDeporte VARCHAR(MAX)
	DECLARE @cantidadNombre INT;
	-- ---------------------------------------------------------
	-- CCAPTURAR NOMBRE DEL DEPORTE QUE SE DESEA INSERTAR
	-- ---------------------------------------------------------

	SELECT @nombreDeporte = ins.nombre
		FROM inserted ins 

	SELECT 
		@cantidadNombre  = COUNT(*)
			FROM [ScriptProyecto].[dbo].[Deporte] dep
				WHERE dep.nombre = @nombreDeporte
	IF @cantidadNombre > 0 
		BEGIN 
			SELECT 'Nombre de deporte ya insertado o muy parecido'
		END
		ELSE 
			BEGIN 
				DECLARE @longitud INT = LEN(@nombreDeporte)
				DECLARE @principio INT = @longitud * .30;
				DECLARE @final INT = @longitud * .30;
				
				SELECT @cantidadNombre = COUNT(*)
					FROM [ScriptProyecto].[dbo].[Deporte] dep
						WHERE dep.nombre LIKE (SUBSTRING(@nombreDeporte,1,@principio)) and 
							dep.nombre LIKE (SUBSTRING(@nombreDeporte,@longitud-@principio,@longitud)) 
				IF (@cantidadNombre > 0)
				BEGIN 
					SELECT 'Nombre de deporte ya insertado o muy parecido'
				END 
					ELSE 
						BEGIN
							INSERT INTO [ScriptProyecto].[dbo].[Deporte](nombre) VALUES (@nombreDeporte)
						END 
			END

END 		


























