SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Alexander Ismael Tejeda Barahona>
-- Create date: <17/11/2019>
-- Description:	<
--				Calculo de los jugadores con mas porcentaje de anotaciones para la actual temporada o para
--				la ultima temporada
--a				>
-- =============================================
ALTER FUNCTION FP_AnotacionJugador
(
	@idJugador INT
)
RETURNS DECIMAL(20,2)
AS
BEGIN
	DECLARE @nombreDeporte VARCHAR(50)
	DECLARE @anotacion INT;
	DECLARE @cantidadPartidos  INT;
	SELECT @nombreDeporte = depo.nombre 
		FROM [ScriptProyecto].[dbo].[Jugador] jug
			INNER JOIN [ScriptProyecto].[dbo].[Deporte] depo ON depo.idDeporte =  jug.idDeporte
				WHERE @idJugador = jug.idJugador

	IF (@nombreDeporte = UPPER('BALONCESTO'))
		BEGIN
			SELECT @anotacion = count(par.anotaciones) 
				FROM [ScriptProyecto].[dbo].[Jugador] jug 
				INNER JOIN [ScriptProyecto].[dbo].[EstadisticaBaloncesto] esba ON esba.idJugador = jug.idJugador
				INNER JOIN [ScriptProyecto].[dbo].[Parcial] par ON par.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
					WHERE jug.idJugador = @idJugador 

			SELECT @cantidadPartidos = COUNT(par.idPartido)
				FROM [ScriptProyecto].[dbo].[Jugador] jug 
				INNER JOIN [ScriptProyecto].[dbo].[EstadisticaBaloncesto] esba ON esba.idJugador = jug.idJugador
				INNER JOIN [ScriptProyecto].[dbo].[Partido] par ON par.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
				WHERE jug.idJugador = @idJugador
		END

		IF(UPPER(@nombreDeporte) = 'BASEBALL')
			BEGIN
				SELECT @anotacion = COUNT(par.anotaciones)
					FROM [ScriptProyecto].[dbo].[Jugador] jug 
					INNER JOIN [ScriptProyecto].[dbo].[EstadisticasBaseball] esba ON esba.idJugador = jug.idJugador
					INNER JOIN [ScriptProyecto].[dbo].[Parcial] par ON par.idEstadisticasBaseball = esba.idEstadisticaBaseball
						WHERE @idJugador = jug.idJugador

				SELECT @cantidadPartidos = COUNT(par.idPartido)
					FROM [ScriptProyecto].[dbo].[Jugador] jug 
					INNER JOIN [ScriptProyecto].[dbo].[EstadisticasBaseball] esba ON esba.idJugador = jug.idJugador
					INNER JOIN [ScriptProyecto].[dbo].[Partido] par ON par.idEstadisticasBaseball = esba.idEstadisticaBaseball
						WHERE jug.idJugador = @idJugador
			END

		IF(UPPER(@nombreDeporte) = 'FUTBOL')
			BEGIN
				SELECT @anotacion = COUNT(par.anotaciones) 
					FROM [ScriptProyecto].[dbo].[Jugador] jug
					INNER JOIN [ScriptProyecto].[dbo].[EstadisticaFutbol] esfu ON esfu.idJugador = jug.idJugador
					INNER JOIN [ScriptProyecto].[dbo].[Parcial] par ON par.idEstadisticasFutbol  = par.idEstadisticasFutbol
					WHERE @idJugador = jug.idJugador

				SELECT @cantidadPartidos = COUNT(par.idPartido) 
					FROM [ScriptProyecto].[dbo].[Jugador] jug 
					INNER JOIN [ScriptProyecto].[dbo].[EstadisticaFutbol] esfu ON esfu.idJugador = jug.idJugador
					INNER JOIN [ScriptProyecto].[dbo].[Partido] par ON par.idEstadisticasFutbol = esfu.idEstadisticaFutbol
						WHERE jug.idJugador = @idJugador
			END

			RETURN (@anotacion/@cantidadPartidos)*100
END
GO
























