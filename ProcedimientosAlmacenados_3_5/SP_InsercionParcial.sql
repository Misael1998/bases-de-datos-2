-- =============================================
-- Author:		<Alexander Ismael Tejeda Barahona>
-- Create date: <09/11/2019>
-- Description:	
--				<
--					Procedimiento almacenado que realice toda la insercion de un partido, 
--					por parcial(Es decir por intervalo) de tiempo
--				>
-- =============================================
ALTER PROCEDURE SP_InsercionParcial 
	-- ==========================================================
	-- @idPartido: Para realizar el enlace a las estadisiticas y posteriormente hacer en enlace con los parciales
	-- @idDeporte: Para conocer con que tabla se tienen que realizar el enlace
	-- ==========================================================
	@idPartido INT,
	@idDeporte INT,
	@anotaciones INT
AS
BEGIN
	--  ========================================================
	-- DECLARACION DE VARIABLES
	-- @mensaje: Para la correcion de errores cuando se envian valores nulo o no validos
	-- @codigo: Codigo para distinguir cuales son los tipos de errores
	--  ========================================================
	DECLARE @mensaje VARCHAR(200)
	DECLARE @codigo INT;
	--  ========================================================
	-- VALIDACION DE CAMPOS NO VACIOS
	--  ========================================================

	IF(@idDeporte IS NULL)
		BEGIN 

			SELECT @mensaje = 'El deporte no puede ser nulo';
			SELECT @codigo = 1

			RETURN 
		END 

	IF(@idPartido IS NULL)
		BEGIN
			SELECT @mensaje = 'El idPartido no puede ser nulo';
			SELECT @codigo = 1;
		
			RETURN 
		END 
		DECLARE @nombreDeporte VARCHAR(200)
	
	SELECT 
		@nombreDeporte = DEP.nombre
			FROM ScriptProyecto.dbo.Deporte dep
				WHERE dep.idDeporte = @idDeporte
	--  ========================================================
	-- DECLARACION DE VARIABLES 
	-- @idEstaditsitcas: Variable que sirve para capturar el id de las estadisticas que se estan usando, y si este es nulo, no inserta
	-- @numeroParcial: Para la insercion de cual es el siguinete dato que se va insertar
	--  ========================================================

	DECLARE @idEstadisticas INT; 
	DECLARE @numeroParcial INT;

	IF(UPPER(@nombreDeporte) = 'BALONCESTO')
	BEGIN 
		SELECT 
			@idEstadisticas = esba.idEstadisticasBaloncesto
				FROM ScriptProyecto.dbo.Partido par
				INNER JOIN ScriptProyecto.dbo.EstadisticaBaloncesto esba ON esba.idEstadisticasBaloncesto = par.idEstadisticasBaloncesto 
					WHERE par.idPartido = @idPartido
		IF(@idEstadisticas IS NULL)
		BEGIN
			SELECT @mensaje = 'No existe ningun registro de estadisticas asociado a este partido';
			SELECT @codigo = -1;
			RETURN 
		END
			ELSE 
				BEGIN
					--  ========================================================
					-- Aqui en este punto miramos que se esta evaluando cual es el ultimo numero de parcial,
					-- la funciones ISNULL(parc.numero,1) para cuando la consulta retorna un valor nulo entonces se reemplaza por 1 
					--  ========================================================
					SELECT 
						TOP 1 
						@numeroParcial= ISNULL(parc.numero,1) + 1 
						FROM ScriptProyecto.dbo.EstadisticaBaloncesto esba 
						INNER JOIN ScriptProyecto.dbo.Parcial parc ON parc.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
							WHERE parc.idEstadisticasBaloncesto = @idEstadisticas
								ORDER BY parc.numero DESC
						IF(@anotaciones is NULL)
							BEGIN
								SELECT @mensaje	= 'Las anotaciones no puede ser nulas'
								SELECT @codigo = -1
								RETURN
							END 
								ELSE 
									BEGIN
										-- =================================================================
										-- INSERCION Para las estadisticas de baloncesto
										-- =================================================================
										INSERT INTO ScriptProyecto.dbo.Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES (@numeroParcial,@anotaciones,@idEstadisticas)
									END 
				END
	END
	
	IF (UPPER(@nombreDeporte) = 'FUTBOL')
	BEGIN 
		SELECT @idEstadisticas = esfu.idEstadisticaFutbol
			FROM ScriptProyecto.dbo.Partido par
			INNER JOIN ScriptProyecto.dbo.EstadisticaFutbol esfu ON esfu.idEstadisticaFutbol = par.idEstadisticasFutbol
				WHERE par.idPartido = @idPartido
		IF(@idEstadisticas is NULL)
			BEGIN 
				SELECT @mensaje = 'No hay ningun registro asociado a este id';
				SELECT @codigo = -1
				RETURN
			END
				ELSE 
					BEGIN
					--  ========================================================
					-- Aqui en este punto miramos que se esta evaluando cual es el ultimo numero de parcial,
					-- la funciones ISNULL(parc.numero,1) para cuando la consulta retorna un valor nulo entonces se reemplaza por 1 
					--  ========================================================
						SELECT 
							TOP 1 
							@numeroParcial = ISNULL(par.numero,1) + 1
								FROM ScriptProyecto.dbo.EstadisticaFutbol esfu
								INNER JOIN ScriptProyecto.dbo.Parcial par ON par.idEstadisticasFutbol = esfu.idEstadisticaFutbol
									WHERE par.idEstadisticasFutbol = @idEstadisticas
						IF(@anotaciones IS NULL)
							BEGIN
								SELECT @mensaje = 'Las anotaciones no pueden ser nulas'
								SELECT @codigo = -1
								RETURN
							END
								ELSE 
									BEGIN
										-- =================================================================
										-- INSERCION Para las estadisticas de baloncesto
										-- =================================================================
										INSERT INTO ScriptProyecto.dbo.Parcial(numero,anotaciones,idEstadisticasFutbol) VALUES (@numeroParcial,@anotaciones,@idEstadisticas)
									END
					END
	END
	
END
GO