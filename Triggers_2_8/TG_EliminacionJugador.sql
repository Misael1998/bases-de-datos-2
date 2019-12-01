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
		INSERT INTO Estado(nombre,descripcion) VALUES ('Suspendido','Valor para Jugador/Equipos no disponibles')
		
		SELECT 
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
		ELSE 
			BEGIN 
				SELECT 
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

 

 




















	 



























































