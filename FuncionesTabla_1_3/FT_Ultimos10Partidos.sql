-- =============================================
-- Author:		<Alexander Ismael Tejeda Barahona>
-- Create date: <25/11/2019>
-- Description:	
--				<
--					Creacion de funcion de tabla que retorne los ultimos 10 partidos que ha tenido un equipo 
--					con las anotaciones que realizo en su respectivo partido y cuantos realizo el equipo 
--					rival, ademas de ellos hacer un calculo de la fila para la evaluacion de cuales partidos a ganado
--					y cuantos partidos a perdido
--				>
-- =============================================
CREATE FUNCTION FT_UltimosPartidos 
(
)
RETURNS TABLE 
AS
RETURN 
(
	-- Add the SELECT statement with parameter references here
	SELECT 0
)


-- ----------------------------------
-- DECLARACION DE VARIABLES
-- ----------------------------------

DECLARE @idPartido INT; 

DECLARE idUltimosPartidos SCROLL CURSOR
	FOR	SELECT 
		TOP 10
		part.idPartido
			FROM [ScriptProyecto].[dbo].[Equipo] equi 
			INNER JOIN [ScriptProyecto].[dbo].[EstadisticaBaloncesto] esba ON equi.idEquipo = esba.idEquipo
			INNER JOIN [ScriptProyecto].[dbo].[Partido] part ON part.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto

OPEN idUltimosPartidos

FETCH FIRST FROM idUltimosPartidos INTO @idPartido 

--WHILE(@@FETCH_STATUS = 0)
	--BEGIN 
	SELECT
		SUM(parc.anotaciones) as anotacionesRiva,
		equi.nombre 
			FROM [ScriptProyecto].[dbo].[Equipo] equi
			INNER JOIN [ScriptProyecto].[dbo].[EstadisticaBaloncesto] esba ON esba.idEquipo = equi.idEquipo
			INNER JOIN [ScriptProyecto].[dbo].[Partido] part ON part.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
			INNER JOIN [ScriptProyecto].[dbo].[Parcial] parc ON parc.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
			WHERE equi.idEquipo = 1 and part.idPartido = 1
				GROUP BY equi.nombre,
	UNION 
	SELECT 
		equi1.nombre as EquipoRival,
		SUM(parc.anotaciones) scoreRival
			FROM [ScriptProyecto].[dbo].[Equipo] equi1
			INNER JOIN [ScriptProyecto].[dbo].[EstadisticaBaloncesto] esba ON esba.idEquipo = equi1.idEquipo
			INNER JOIN [ScriptProyecto].[dbo].[Parcial] parc ON parc.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
			INNER JOIN [ScriptProyecto].[dbo].[Partido] part ON part.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
			WHERE equi1.idEquipo <> 1 and part.idPartido = 1
				GROUP BY  equi1.nombre
	--END

	DEALLOCATE idUltimosPartidos
















































































