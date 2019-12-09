-- ---------------------------------------------------------
-- Autor <Alexander Ismael Tejeda Barahona>
-- Fecha de creacion <30/11/2019>
-- Descripcion 
--			 <
--				Trigger que cuando se quiere eliminar un jugador, 
--				en lugar de eliminarlo se tiene que asociarsele a un estado de suspendido o 
--				de no habilitado 
--			 >
-- ---------------------------------------------------------

CREATE TRIGGER TG_EliminiacionJugador 
	ON [ScriptProyecto].[dbo].[Jugador]
		INSTEAD OF DELETE 
AS 
BEGIN

	-- ------------------------------------------------------------------------------
	-- DECLARACION DE VARIABLES 
	-- ------------------------------------------------------------------------------
	DECLARE @idEstadoSuspendio INT;

	-- ------------------------------------------------------------------------------
	-- CAPTURA DEL ID PARA LA TABLA QUE CONTIENE EL VALOR DE NOMBRE SUSPENDIDO
	-- ADEMAS ESTA CONSULTA CONFIRMA QUE DENTRO DE LA TABLA ESTADO EXISTE UN REGISTRO 
	-- CON EL CAMPO DE SUSPENDIDO
	-- ------------------------------------------------------------------------------

	IF NOT EXISTS
	(	
		SELECT  *
			FROM Estado est
				WHERE est.nombre IN
				(
					'Suspendido'
				)
	)
	BEGIN 
		-- ------------------------------------------------------------------------------
		-- DE NO EXISTIR LA TABLA REGISTRO ENTONCES SE TIENE QUE CREAR EL REGISTRO
		-- ------------------------------------------------------------------------------
		INSERT INTO Estado(nombre,descripcion) VALUES 
												(
												'SUSPENDIDO','Valor para Jugador/Equipos/Equipos no disponibles, 
												 cabe recalcar que este se puede usar cuando un partido
												 fue suspendido'
												)
		
		SELECT 
			@idEstadoSuspendio = est.idEstado	
				FROM Estado est
					WHERE est.nombre = 'SUSPENDIDO'
		-- ------------------------------------------------------------------------------
		-- ACTUALIZACION DE LA TABLA JUGADOR A UN ESTADO SUSPENDIDO 
		-- ------------------------------------------------------------------------------
		UPDATE [ScriptProyecto].[dbo].[Jugador]
			SET idEstado = @idEstadoSuspendio
				WHERE idJugador =
					(
						SELECT de.idJugador
							FROM deleted de 
					)
	END 
		ELSE 
			BEGIN 
				SELECT 
				-- ------------------------------------------------------------------------------
				-- ACTUALIZACION DE LA BASE DE DATOS SI EL REGISTRO DE SUSPENDIDO YA EXISTE
				-- ------------------------------------------------------------------------------
					@idEstadoSuspendio = est.idEstado	
						FROM Estado est
							WHERE est.nombre = 'Suspendido'

				UPDATE [ScriptProyecto].[dbo].[Jugador]
					SET idEstado = @idEstadoSuspendio
						WHERE idJugador =
						(
							SELECT de.idJugador
							FROM deleted de 
						)
			END
		
END

 

 




















	 



























































