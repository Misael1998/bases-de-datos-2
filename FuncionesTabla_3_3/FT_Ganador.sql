SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER FUNCTION FT_CalculoGanador 
(
	@idPartido INT
)
RETURNS @Ganador TABLE 
(
	idEquipo INT, 
	nombre VARCHAR(60),
	anotaciones INT
)
AS
BEGIN
	-- ---------------------------------------------
	-- DECLARACION DE VARIABLES
	-- ---------------------------------------------
	DECLARE @nombreDeporte VARCHAR(50);

	-- ---------------------------------------------
	-- OBTENCION DE EL VALOR AL QUE PERTENECE EL DEPORTE
	-- ---------------------------------------------
	SELECT 
		@nombreDeporte = depor.nombre
			FROM [ScriptProyecto].[dbo].[Partido] part
			INNER JOIN [ScriptProyecto].[dbo].[Deporte] depor ON depor.idDeporte = part.idDeporte

	IF(UPPER(@nombreDeporte) = 'BALONCESTO' or UPPER(@nombreDeporte) = 'BASKETBALL')
		BEGIN 
		INSERT INTO @Ganador
			SELECT
				TOP 1
				equ.idEquipo,
				equ.nombre,
				SUM(parc.anotaciones) as totalAnotaciones
					FROM [ScriptProyecto].[dbo].[Partido] part 
					INNER JOIN [ScriptProyecto].[dbo].[EstadisticaBaloncesto] esba ON esba.idEstadisticasBaloncesto = part.idEstadisticasBaloncesto
					INNER JOIN [ScriptProyecto].[dbo].[Equipo] equ ON equ.idEquipo = esba.idEquipo
					INNER JOIN [ScriptProyecto].[dbo].[Parcial] parc ON parc.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
						WHERE part.idPartido = @idPartido
							GROUP BY equ.nombre,equ.idEquipo
								ORDER BY totalAnotaciones ASC 
		END 
			ELSE
					IF(UPPER(@nombreDeporte) = 'FUTBOL' or UPPER(@nombreDeporte) = 'FOOTBALL')
				BEGIN
					INSERT INTO @Ganador
					SELECT 
						TOP 1
						equ.nombre,
						equ.nombre,
						SUM(parc.anotaciones) as totalAnotaciones
							FROM [ScriptProyecto].[dbo].[Partido] part
							INNER JOIN [ScriptProyecto].[dbo].[EstadisticaBaloncesto] esba ON esba.idEstadisticasBaloncesto = part.idEstadisticasBaloncesto
							INNER JOIN [ScriptProyecto].[dbo].[Equipo] equ ON equ.idEquipo = esba.idEquipo
							INNER JOIN [ScriptProyecto].[dbo].[Parcial] parc ON parc.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
								WHERE part.idPartido = @idPartido 
									GROUP BY equ.nombre,equ.idEquipo
										ORDER BY totalAnotaciones
								
				END
	RETURN 
END
GO