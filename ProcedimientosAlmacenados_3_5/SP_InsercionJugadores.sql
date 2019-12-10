-- =============================================
-- Author:		<Alexander Ismael Tejeda Barahona>
-- Create date: <2019/12/09>
-- Description:	
--<
--
--(1) Procedimiento almacenado que realice la insercion de un nuevo jugador, este nuevo jugador que llevar los parametros
--   obligatorios de:
--   1.) Primer Nombre 
--   2.) Segundo Nombre 
--   3.) Primer apellido 
--   4.) Segundo apellido
--   5.) Fecha de nacimiento
--   6.) Lugar de nacimiento
--   7.) pais de nacimiento
--   8.) dorsal
--   9.) fechaDeDebut 
--   10.) sueldo
-->
-- =============================================
ALTER PROCEDURE SP_InsercionJugador
	@primerNombre VARCHAR(50),
	@segundoNombre VARCHAR(50),
	@primerApellido VARCHAR(50),
	@segundoApellido VARCHAR(50),
	@fechaNacimiento INT, 
	@paisNacimiento VARCHAR(100),
	@dorsal  INT,
	@fechaDebut INT,
	@sueldo DECIMAL(30,2),
	@idDeporte INT,
	@idEstado INT
AS
BEGIN
	DECLARE @mensaje VARCHAR(200);
	DECLARE @codigo INT 
	IF(@primerNombre IS NULL)
		BEGIN
			SELECT @mensaje = 'El primer nombre no puede ser nulo';
			SELECT @codigo = -1;
			RETURN @mensaje; 
			RETURN @codigo;
			RETURN
		END
	IF(@primerApellido IS NULL)
		BEGIN 
			SELECT @mensaje = 'El primer apellido no puede ser nulo';
			SELECT @codigo = -1;
			RETURN @mensaje;
			RETURN @codigo;
			RETURN 
		END
	IF (@fechaNacimiento IS NULL)
		BEGIN 
			SELECT @mensaje = 'La fecha de nacimiento no puede ser nula';
			SELECT @codigo = -1;
			RETURN @mensaje;
			RETURN @codigo;
			RETURN
		END	
	IF(@paisNacimiento IS NULL)
		BEGIN 
			SELECT @mensaje = 'El pais de nacimiento no puese ser nula';
			SELECT @codigo	= -1;
			RETURN @codigo;
			RETURN @mensaje;
			RETURN;
		END
	IF(@dorsal IS NULL)
		BEGIN 
			SELECT @mensaje = 'El numero de dorsal no puede ser nulo';
			SELECT @codigo = -1;
			RETURN @codigo;
			RETURN @mensaje; 
			RETURN;
		END 
	IF(@fechaDebut IS NULL)
		BEGIN
			SELECT @mensaje = 'La fecha de debut no puede ser nula';
			SELECT @codigo = -1;
			RETURN @mensaje;
			RETURN @codigo;
			RETURN; 
		END
	IF(@idDeporte IS NULL)
		BEGIN
			SELECT @mensaje = 'El id del deporte no puede ser nulo';
			SELECT @codigo = -1;
			RETURN @mensaje;
			RETURN @codigo;
			RETURN;
		END
	IF(@idEstado IS NULL)
		BEGIN 
			SELECT @mensaje = 'El idEstado no puede ser nulo';
			SELECT @codigo = -1;
			RETURN @mensaje;
			RETURN @codigo;
			RETURN;
		END
	IF NOT EXISTS
	(
		SELECT es.idEstado
			FROM ScriptProyecto.dbo.Estado es
			 WHERE es.idEstado = @idEstado
	)
	BEGIN
		SELECT @mensaje = 'El idEstado no existe';
		SELECT @codigo = 0;
		RETURN @mensaje;
		RETURN @codigo;
		RETURN;
	END
	IF NOT EXISTS
	(
		SELECT dep.idDeporte
			FROM ScriptProyecto.dbo.Deporte dep
				WHERE dep.idDeporte = @idDeporte
	)
		BEGIN 
			SELECT @mensaje = 'El idDeporte no existe';
			SELECT @codigo = 0;
			RETURN @mensaje;
			RETURN @codigo;
			RETURN;
		END

		INSERT INTO ScriptProyecto.dbo.Persona(pNombre,
											   sNombre,
											   pApellido,
											   sApellido,
											   fechaNacimiento,
											   paisNacimiento) 
															VALUES
																 (
																	 @primerNombre,
																	 @segundoNombre,
																	 @primerApellido,
																	 @segundoApellido,
																	 @fechaNacimiento,
																	 @paisNacimiento
																 )
		INSERT INTO ScriptProyecto.dbo.Jugador
											(
												dorsal,
												fechaDebut,
												sueldo,
												idPersona,
												idDeporte,
												idEstado
											)
														VALUES
															  (
																	@dorsal,
																	@fechaDebut,
																	@sueldo,
																	@@IDENTITY,
																	@idDeporte,
																	@idEstado
															  )
END

