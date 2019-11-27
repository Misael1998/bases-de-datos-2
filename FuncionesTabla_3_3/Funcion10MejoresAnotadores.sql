-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER FUNCTION FT_MejoresAnotadores 
(
	@idDeporte INT, 
	@idTemporada INT
)

RETURNS @MejoresJugadores TABLE
(
	idEquipo INT,
	nombreEquipo VARCHAR(50),
	cantidadAnotaciones INT
)	
AS
BEGIN

	-- ---------------------------------------------------------------------
	-- DECLARACION DE VARIABLES 
	-- Y TABLAS TEMPORALES 
	-- ---------------------------------------------------------------------
	DECLARE @nombreDeporte VARCHAR(50)
	-- ---------------------------------------------------------------------
	-- CAPTURA DEL DEPORTE NOMBRE DEL DEPORTE PARA PODER REALIZAR LA 
	-- CONSULTA DESDE AHI 
	-- ---------------------------------------------------------------------
	
	SELECT 
		@nombreDeporte = depo.nombre
		FROM [ScriptProyecto].[dbo].[Deporte] depo
			WHERE depo.idDeporte = @idDeporte
	
	-- ---------------------------------------------------------------------
	-- CONDICION DE CUANDO EL DEPORTE CAPTURADO ES BALONCESTO
	-- ---------------------------------------------------------------------
	IF(UPPER(@nombreDeporte) = 'BALONCESTO' or UPPER(@nombreDeporte) = 'BASKETBALL') 
			BEGIN
			INSERT INTO @MejoresJugadores
					SELECT TOP 10 
					equ.idEquipo,
					equ.nombre,
					COUNT(parc.anotaciones) AS cantidadAnotaciones
						FROM [ScriptProyecto].[dbo].[Equipo] equ
						INNER JOIN [ScriptProyecto].[dbo].[EstadisticaBaloncesto] esba ON esba.idEquipo = equ.idEquipo
						INNER JOIN [ScriptProyecto].[dbo].[Parcial] parc ON parc.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
							GROUP BY equ.nombre,equ.idEquipo
		END 
	-- ---------------------------------------------------------------------
	-- CONDICION DE CUANDO EL DEPORTE CAPTURADO ES EL FOOTBALL
	-- ---------------------------------------------------------------------

	IF(UPPER(@nombreDeporte) = 'FOOTBALL' or UPPER(@nombreDeporte) = 'BALONCESTO')
		BEGIN 
			INSERT INTO @MejoresJugadores
				SELECT TOP 10
					equ.idEquipo,
					equ.nombre,
					COUNT(par.anotaciones) as cantidadAnotaciones 
						FROM [ScriptProyecto].[dbo].[Equipo] equ
						INNER JOIN [ScriptProyecto].[dbo].[EstadisticaFutbol] esfu ON esfu.idEquipo = equ.idEquipo
						INNER JOIN [ScriptProyecto].[dbo].[Parcial] par ON par.idEstadisticasFutbol = esfu.idEstadisticaFutbol
							GROUP BY equ.nombre,equ.idEquipo
		END

	-- ---------------------------------------------------------------------
	-- LOGICA PARA EL CALCULO DE LA MAYOR CANTIDAD DE CARRERAS POR EQUIPO
	-- ---------------------------------------------------------------------

	IF(UPPER(@nombreDeporte) = 'BASEBALL')
		BEGIN 
			INSERT INTO @MejoresJugadores
				SELECT 
					equ.idEquipo,
					equ.nombre,
					COUNT(par.anotaciones) as cantidadAnotaciones
						FROM [ScriptProyecto].[dbo].[Equipo] equ
						INNER JOIN [ScriptProyecto].[dbo].[EstadisticasBaseball] esba ON esba.idEquipo = equ.idEquipo
						INNER JOIN [ScriptProyecto].[dbo].[Parcial] par ON par.idEstadisticasBaseball = esba.idEstadisticaBaseball
							GROUP BY equ.nombre,equ.idEquipo
		END
	RETURN
END
GO































