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

-- ------------------------------------------
-- DECLARACION DE VARIABLES USADAS DENTRO DE LA FUNCION
-- ------------------------------------------
	DECLARE @nombreDeporte VARCHAR(50);
-- ------------------------------------------
-- CONSULTA PARA TRAER EL DEPORTE EN EL QUE ESTA ESTE EQUIPO
-- ------------------------------------------
SELECT 
	@nombreDeporte = depo.nombre
	FROM [ScriptProyecto].[dbo].[Equipo] equi 
	INNER JOIN [ScriptProyecto].[dbo].[Deporte] depo ON depo.idDeporte = equi.idDeporte
	WHERE depo.idDeporte = 1

	IF(UPPER(@nombreDeporte) = 'BALONCESTO' or UPPER(@nombreDeporte) = 'BASKETBALL')
		BEGIN
						
		END



		esba 



SELECT 
	equ.nombre,
	COUNT(parc.anotaciones) totalEquipo
	FROM [ScriptProyecto].[dbo].[Partido] par
	INNER JOIN [ScriptProyecto].[dbo].[EstadisticaBaloncesto] esba ON esba.idEstadisticasBaloncesto = par.idEstadisticasBaloncesto	
	INNER JOIN [ScriptProyecto].[dbo].[Parcial] parc ON parc.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
	INNER JOIN [ScriptProyecto].[dbo].[Equipo] equ ON equ.idEquipo = esba.idEquipo
	INNER JOIN 
	(
		SELECT 
			par.idPartido,
			equi.nombre as nombreRival,
			COUNT(parc.anotaciones) as totalRival
				FROM [ScriptProyecto].[dbo].[Partido] par
				INNER JOIN [ScriptProyecto].[dbo].[EstadisticaBaloncesto] esba ON esba.idEstadisticasBaloncesto = par.idEstadisticasBaloncesto
				INNER JOIN [ScriptProyecto].[dbo].[Equipo] equi ON equi.idEquipo = esba.idEquipo
				INNER JOIN [ScriptProyecto].[dbo].[Parcial] parc ON par.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
						WHERE equi.idEquipo <> 1
						GROUP BY equi.nombre,par.idPartido
					 
	) s1 ON s1.idPartido = par.idPartido
		WHERE equ.idEquipo = 1 
			GROUP BY equ.idEquipo




















































