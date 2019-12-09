-- =============================================
-- Author:		<Alexander Ismael Tejeda Barahona>
-- Create date: <06/11/2019>
-- Description:	
--				<
-- Procedimiento almacenado que calcule e inserte los equipo de los cuales han realizado mas anotaciones 
-- en la temporada actual y los inserte dentro de una tabla la cual se va esta relacionada con una tabla 
--				>
-- =============================================
ALTER PROCEDURE SP_MejoresAnotadores 
	-- ========================================================================
	-- PARAMETROS  REQUERIDOS
	-- @idTemporada: Para filtrar por el deporte, dado que a partir de la liga y el deporte vammos a calcular cual es la ultima fecha de inicio, 
	-- es decir si nosotros queremos que nuestro deporte sea baloncesto, va filtrar todas las ligas de baloncesto, pero ademas de ello vamos a calcular 
	--  cual es la ultima temporada, para determinada liga
	-- @idLIga: Para hacer el calculo de la liga a la cual le queremos ver cuales son los mejores equipos de esa liga 
	-- ========================================================================
	@idLiga INT,
	@idDeporte INT 
AS
BEGIN
	-- ========================================================================
	-- DECLARACION DE VARIABLES
	-- @totalAnotaciones: Sirve para calcular la cantidad, de anotaciones que  realizo el equipo durante la temporada actual
	-- @partidosJugados: Calculo de cuantos partidos sehan jugado para poder ver sacar el promedio de anotaciones por partido
	-- @nombreDeporte: Para poder filtar por el deporte
	-- ========================================================================
	
	DECLARE @totalAnotaciones INT;
	DECLARE @partidosJugados INT; 
	DECLARE @nombreDeporte VARCHAR(MAX);
	DECLARE @idTemporada INT;

	-- ========================================================================
	-- Captura del dato de cual es el deporte que necesitamos
	-- ========================================================================

	SELECT @nombreDeporte = dep.nombre
		FROM ScriptProyecto.dbo.Deporte dep 
			WHERE dep.idDeporte = @idDeporte

	SELECT 
		TOP 1
		@idTemporada = idTemporada
			FROM ScriptProyecto.dbo.Liga li
			INNER JOIN ScriptProyecto.dbo.Temporada temp ON li.idLiga = li.idLiga 
				WHERE li.idLiga = @idLiga
					ORDER BY temp.fechaInicio		

	-- ========================================================================
	--Calculo de cuando el nombre del deporte sea Baloncesto
	-- ========================================================================
	
	IF(UPPER(@nombreDeporte) = 'BALONCESTO')
		BEGIN
			INSERT INTO ScriptProyecto.dbo.MejorEquipo
									(
										idMejoreEquipo,
										nombre,
										anotaciones,
										fechaInicio
									)
				SELECT 
					TOP 10
					equ.idEquipo,
					equ.nombre,
					SUM(par.anotaciones)/s1.PartidosJugados,
					ScriptProyecto.dbo.FE_ConversionAInt(SYSDATETIME())
						FROM ScriptProyecto.dbo.Liga li 
						INNER JOIN ScriptProyecto.dbo.Temporada temp ON temp.idLiga = li.idLiga
						INNER JOIN ScriptProyecto.dbo.FaseLiga fali ON fali.idTemporada = temp.idTemporada
						INNER JOIN ScriptProyecto.dbo.Fase fa ON fa.idFase = fali.idFase
						INNER JOIN ScriptProyecto.dbo.Partido part ON part.idFase = part.idFase
						INNER JOIN ScriptProyecto.dbo.EstadisticaBaloncesto esba ON esba.idEstadisticasBaloncesto = part.idEstadisticasBaloncesto
						INNER JOIN ScriptProyecto.dbo.Parcial par on par.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
						INNER JOIN ScriptProyecto.dbo.Equipo equ ON equ.idEquipo = esba.idEquipo
						INNER JOIN 
							(
								SELECT 
									equ.idEquipo as idEquipo,
									COUNT(part.idPartido) as PartidosJugados
										FROM ScriptProyecto.dbo.Equipo equ
										INNER JOIN ScriptProyecto.dbo.EstadisticaBaloncesto esba ON esba.idEquipo = equ.idEquipo
										INNER JOIN ScriptProyecto.dbo.Partido part ON part.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
											GROUP BY  equ.idEquipo
							) s1 ON s1.idEquipo = equ.idEquipo
								WHERE temp.idTemporada = @idtemporada
									GROUP BY equ.idEquipo, s1.PartidosJugados,equ.nombre
							
							UPDATE ScriptProyecto.dbo.MejorEquipo 
								SET fechaInicio = ScriptProyecto.dbo.FE_ConversionAInt(SYSDATETIME()) 																
									WHERE fechaInicio is Null
		END
		IF(UPPER(@nombreDeporte) = 'FUTBOL')
			BEGIN 

			INSERT INTO ScriptProyecto.dbo.MejorEquipo 
			(
				idMejoreEquipo,
				nombre,
				anotaciones,
				fechaInicio
			)
					SELECT 
						equ.idEquipo,
						equ.nombre,
						SUM(par.anotaciones)/s1.PartidosJugados,
						ScriptProyecto.dbo.FE_ConversionAInt(SYSDATETIME())
							FROM ScriptProyecto.dbo.Liga li 
							INNER JOIN ScriptProyecto.dbo.Temporada temp ON temp.idLiga = li.idLiga
							INNER JOIN ScriptProyecto.dbo.FaseLiga fali ON fali.idTemporada = temp.idTemporada
							INNER JOIN ScriptProyecto.dbo.Fase fa ON fa.idFase = fali.idFase
							INNER JOIN ScriptProyecto.dbo.Partido part ON part.idFase = part.idFase
							INNER JOIN ScriptProyecto.dbo.EstadisticaFutbol esfu ON esfu.idEstadisticaFutbol = part.idEstadisticasFutbol
							INNER JOIN ScriptProyecto.dbo.Parcial par on par.idEstadisticasFutbol = esfu.idEstadisticaFutbol
							INNER JOIN ScriptProyecto.dbo.Equipo equ ON equ.idEquipo = esfu.idEquipo
							INNER JOIN 
								(
									SELECT 
										equ.idEquipo as idEquipo,
										COUNT(part.idPartido) as PartidosJugados
											FROM ScriptProyecto.dbo.Equipo equ
											INNER JOIN ScriptProyecto.dbo.EstadisticaFutbol esfu ON esfu.idEquipo = equ.idEquipo
											INNER JOIN ScriptProyecto.dbo.Partido part ON part.idEstadisticasFutbol = esfu.idEstadisticaFutbol
												GROUP BY  equ.idEquipo
								) s1 ON s1.idEquipo = equ.idEquipo
									WHERE temp.idTemporada = @idTemporada
										GROUP BY equ.idEquipo, s1.PartidosJugados,equ.nombre

			END 
END
















