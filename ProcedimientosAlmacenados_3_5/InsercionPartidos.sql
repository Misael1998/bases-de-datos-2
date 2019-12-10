-- =============================================
-- Author:		<Alexander Ismael Tejeda Barahona>
-- Create date: <09/11/2019>
-- Description:	
--				<
--					Procedimiento almacenado que relice la insercio de los partidos, necesita los datos de la fecha del partido, 
--					lugar del partido, liga del partido
--				>
-- =============================================
ALTER PROCEDURE SP_InsercionPartido 
	@fechaPartido INT,
	@idEstadio INT,
	@idFase INT,
	@idDeporte INT
AS
BEGIN
	DECLARE @mensaje VARCHAR(200);
	DECLARE @codigo INT; 

	IF(@fechaPartido IS NULL)
		BEGIN
			SELECT @mensaje = 'La fecha del partido no puede ser nulo'
			SELECT @codigo = -1
			RETURN
		END
	
	IF(@idEstadio IS NULL)
		BEGIN
			SELECT @mensaje	= 'El idEstadio no puede ser nulo';
			SELECT @codigo = -1;
			RETURN 
		END
	IF(@idFase IS NULL)
	BEGIN
		SELECT @mensaje = 'El idLiga no puede ser nulo';
		SELECT @codigo = -1;
		RETURN
	END
	
	IF NOT EXISTS
	(
		SELECT fa.idFase
			FROM ScriptProyecto.dbo.Fase fa
				WHERE fa.idFase = @idFase
	)
	BEGIN
		SELECT @mensaje = 'No existe ninguna fase con ese codigo';
		SELECT @codigo = -1;
		RETURN
	END 

	IF NOT EXISTS 
	(
		SELECT *
			FROM ScriptProyecto.dbo.Estadio est
				WHERE est.idEstadio = @idEstadio
	)
	BEGIN
		SELECT @mensaje = 'No existe ningun estadio con ese id ';
		SELECT @codigo = -1;
		RETURN
	END

	SELECT 'Hola1'

	DECLARE @idEstado INT;

	IF(ScriptProyecto.dbo.ConversionFecha(@fechaPartido) < SYSDATETIME())
		BEGIN
			IF NOT EXISTS
			(
				SELECT est.nombre
					FROM ScriptProyecto.dbo.Estado est
						WHERE est.nombre = 'Finalizado'
			)
			BEGIN
				INSERT INTO ScriptProyecto.dbo.Estado(nombre) VALUES ('Finalizado')
			END
							
			SELECT @idEstado = es.idEstado
				FROM ScriptProyecto.dbo.Estado es
					WHERE es.nombre = 'Finalizado'
			
			INSERT INTO ScriptProyecto.dbo.Partido(fecha,idEstadio,idFase,idDeporte,idEstado) VALUES (@fechaPartido,@idEstadio,@idFase,@idDeporte,@idEstado)
		
		END
			ELSE 
				BEGIN
					IF NOT EXISTS
					(
						SELECT *
							FROM ScriptProyecto.dbo.Estado est 
								WHERE est.nombre = 'Pendiente'
					)
					BEGIN
		
						INSERT INTO ScriptProyecto.dbo.Estado(nombre) VALUES ('Pendiente')
						
					END 
					SELECT @idEstado = es.idEstado
						FROM ScriptProyecto.dbo.Estado es
							WHERE es.nombre = 'Finalizado'
			
					INSERT INTO ScriptProyecto.dbo.Partido(fecha,idEstadio,idFase,idDeporte,idEstado) VALUES (@fechaPartido,@idEstadio,@idFase,@idDeporte,@idEstado)
				END

END
