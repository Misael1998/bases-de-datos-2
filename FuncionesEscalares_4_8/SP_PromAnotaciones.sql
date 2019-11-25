SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Alexander Ismael Tejeda Barahona>
-- Create date: <12/11/2019>
-- Description:	<
--					Creacion de una funcion que calcule el promedio de anotaciones 
--					para un equipo
--				>
-- =============================================
ALTER FUNCTION F_promedioAnotaciones 
(
	@idEquipo INT,
	@idTemporada INT 
)
RETURNS DECIMAL(20,2)
AS
BEGIN	

	/*
		-----------------------------------------------
			INICIACION DE VARIABLES
		-----------------------------------------------
	*/

		DECLARE @nombreDeporte VARCHAR(50);
		DECLARE @anotaciones DECIMAL(20,2);
		DECLARE @cantidadPartidos INT;
	
	/*
		-----------------------------------------------
			FIN INICIACION DE VARIABLES
		-----------------------------------------------
	*/
	SELECT 
		@nombreDeporte = dep.nombre
		FROM [ScriptProyecto].[dbo].[Equipo] equ
			INNER JOIN [ScriptProyecto].[dbo].[Deporte] dep ON equ.idDeporte = dep.idDeporte
				WHERE equ.idEquipo = 1;

	IF(UPPER(@nombreDeporte) = 'BALONCESTO') 
		BEGIN
			SELECT @anotaciones = COUNT(parc.anotaciones) 
				FROM [ScriptProyecto].[dbo].[Temporada] temp
				INNER JOIN [ScriptProyecto].[dbo].[FaseLiga] fali ON fali.idTemporada = temp.idTemporada
				INNER JOIN [ScriptProyecto].[dbo].[Fase] fa ON fa.idFase = fali.idFase
				INNER JOIN [ScriptProyecto].[dbo].[Partido] par ON par.idFase = fa.idFase
				INNER JOIN [ScriptProyecto].[dbo].[EstadisticaBaloncesto] esba ON esba.idEstadisticasBaloncesto = par.idEstadisticasBaloncesto
				INNER JOIN [ScriptProyecto].[dbo].[Parcial] parc ON parc.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
				INNER JOIN [ScriptProyecto].[dbo].[Equipo] equ ON equ.idEquipo = esba.idEquipo
				WHERE temp.idTemporada = @idTemporada and equ.idEquipo = @idEquipo 
				
			SELECT @cantidadPartidos = COUNT(par.idPartido) 
				FROM [ScriptProyecto].[dbo].[Equipo] equ
				INNER JOIN [ScriptProyecto].[dbo].[EstadisticaBaloncesto] esba ON esba.idEquipo = equ.idEquipo
				INNER JOIN [ScriptProyecto].[dbo].[Partido] par ON par.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
				INNER JOIN [ScriptProyecto].[dbo].[Fase] fas ON fas.idFase = par.idFase
				INNER JOIN [ScriptProyecto].[dbo].[FaseLiga] fali ON fali.idFase = fas.idFase
				INNER JOIN [ScriptProyecto].[dbo].[Temporada] temp ON temp.idTemporada = fali.idTemporada
				WHERE temp.idTemporada = @idTemporada and equ.idEquipo = @idEquipo
		END
	IF (UPPER(@nombreDeporte) = 'FUTBOL')
		BEGIN
		SELECT @anotaciones = COUNT(parc.anotaciones)
			FROM [ScriptProyecto].[dbo].[Temporada] temp
				INNER JOIN [ScriptProyecto].[dbo].[FaseLiga] fali ON fali.idTemporada = temp.idTemporada
				INNER JOIN [ScriptProyecto].[dbo].[Fase] fa ON fa.idFase = fali.idFase
				INNER JOIN [ScriptProyecto].[dbo].[Partido] par ON par.idFase = fa.idFase
				INNER JOIN [ScriptProyecto].[dbo].[EstadisticaFutbol] esfu ON esfu.idEstadisticaFutbol = par.idEstadisticasFutbol
				INNER JOIN [ScriptProyecto].[dbo].[Parcial] parc ON parc.idEstadisticasFutbol = esfu.idEstadisticaFutbol
				INNER JOIN [ScriptProyecto].[dbo].[Equipo] equ ON equ.idEquipo = esfu.idEquipo
					WHERE temp.idTemporada = @idTemporada and equ.idEquipo = @idEquipo

		SELECT @cantidadPartidos = COUNT(par.idPartido) 
				FROM [ScriptProyecto].[dbo].[Equipo] equ
					INNER JOIN [ScriptProyecto].[dbo].[EstadisticaFutbol] esfu ON esfu.idEquipo = equ.idEquipo
					INNER JOIN [ScriptProyecto].[dbo].[Partido] par ON par.idEstadisticasFutbol = esfu.idEstadisticaFutbol
					INNER JOIN [ScriptProyecto].[dbo].[Fase] fas ON fas.idFase = par.idFase
					INNER JOIN [ScriptProyecto].[dbo].[FaseLiga] fali ON fali.idFase = fas.idFase
					INNER JOIN [ScriptProyecto].[dbo].[Temporada] temp ON temp.idTemporada = fali.idTemporada
						WHERE temp.idTemporada = @idTemporada and equ.idEquipo = @idEquipo
		END


		IF (UPPER(@nombreDeporte) = 'BASEBALL')
			BEGIN
				SELECT @anotaciones = COUNT(parc.anotaciones) 
					FROM [ScriptProyecto].[dbo].[Temporada] temp
					INNER JOIN [ScriptProyecto].[dbo].[FaseLiga] fali ON fali.idTemporada = temp.idTemporada
					INNER JOIN [ScriptProyecto].[dbo].[Fase] fa ON fa.idFase = fali.idFase
					INNER JOIN [ScriptProyecto].[dbo].[Partido] par ON par.idFase = fa.idFase
					INNER JOIN [ScriptProyecto].[dbo].[EstadisticasBaseball] esba  ON esba.idEstadisticaBaseball = par.idEstadisticasBaseball
					INNER JOIN [ScriptProyecto].[dbo].[Parcial] parc ON parc.idEstadisticasBaseball = esba.idEstadisticaBaseball
					INNER JOIN [ScriptProyecto].[dbo].[Equipo] equi ON equi.idEquipo = esba.idEquipo
						WHERE temp.idTemporada = @idTemporada and equi.idEquipo = @idEquipo
				
				SELECT @cantidadPartidos = COUNT(par.idPartido) 
					FROM [ScriptProyecto].[dbo].[Equipo] equ
					INNER JOIN [ScriptProyecto].[dbo].[EstadisticasBaseball] esba ON esba.idEquipo = equ.idEquipo
					INNER JOIN [ScriptProyecto].[dbo].[Partido] par ON par.idEstadisticasBaseball = esba.idEstadisticaBaseball
					INNER JOIN [ScriptProyecto].[dbo].[Fase] fas ON fas.idFase = par.idFase
					INNER JOIN [ScriptProyecto].[dbo].[FaseLiga] fali ON fali.idFase = fas.idFase
					INNER JOIN [ScriptProyecto].[dbo].[Temporada] temp ON temp.idTemporada = fali.idTemporada
					WHERE temp.idTemporada = @idTemporada and equ.idEquipo = @idEquipo
			END
	
	RETURN (@anotaciones/@cantidadPartidos) * 100;
END
GO











