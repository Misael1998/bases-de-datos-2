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
	@idDeporte INT,
	@idTemporada INT
AS
BEGIN
	
	-- ========================================================================================
	-- DECLARACION DE VARIABLES
	-- ========================================================================================
	DECLARE	@nombreDeporte VARCHAR(MAX)


	SELECT @nombreDeporte = nom.nombre
		FROM ScriptProyecto.dbo.Deporte nom

	IF(UPPER(@nombreDeporte) = 'BALONCESTO')
		BEGIN
			SELECT 
				SUM(parc.anotaciones) anotaciones
					FROM ScriptProyecto.dbo.Equipo equ 
					INNER JOIN ScriptProyecto.dbo.EstadisticaBaloncesto esba ON esba.idEquipo = equ.idEquipo
					INNER JOIN ScriptProyecto.dbo.Parcial parc ON esba.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
					INNER JOIN ScriptProyecto.dbo.Partido par ON esba.idEstadisticasBaloncesto = esba.idEstadisticasBaloncesto
					INNER JOIN ScriptProyecto.dbo.Fase fas ON fas.idFase = par.idFase
					INNER JOIN ScriptProyecto.dbo.FaseLiga fali ON fali.idFase = fas.idFase	
					INNER JOIN ScriptProyecto.dbo.Temporada tem  ON tem.idTemporada = fali.idTemporada
						WHERE tem.idTemporada = 1
							GROUP BY equ.idEquipo
								ORDER BY anotaciones

							
		END 




	SET NOCOUNT ON;



	
END
GO


SELECT * FROM Parcial




INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,30,1)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,30,1)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,30,1)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,30,1)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,25,2)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,25,2)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,25,2)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,25,2)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,28,3)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,28,3)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,28,3)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,28,3)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,31,4)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,31,4)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,31,4)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,31,4)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,31,5)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,31,5)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,31,5)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,31,5)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,31,6)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,31,6)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,31,6)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,31,6)
-- INSERTS DE PRIMER EQUIPO
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,30,7)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,30,7)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,30,7)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,30,7)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,25,8)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,25,8)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,25,8)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,25,8)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,28,9)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,28,9)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,28,9)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,28,9)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,31,10)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,31,10)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,31,10)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,31,10)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,31,11)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,31,11)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,31,11)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,31,11)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,31,12)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,31,12)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,31,12)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,31,12)
--INSERTS DEL TERCER EQUIPO
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,30,13)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,30,13)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,12,13)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,30,13)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,25,14)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,11,14)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,17,14)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,17,14)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,28,15)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,28,15)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,17,15)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,28,15)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,31,16)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,31,16)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,17,16)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,17,16)
-- INSERTS DEL CUARTO EQUIPO
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,18,23)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,30,23)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,30,23)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,20,23)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,28,24)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,25,24)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,28,24)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,28,24)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,28,25)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,29,25)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,29,25)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,28,25)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(1,31,26)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(2,29,26)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(3,29,26)
INSERT INTO Parcial(numero,anotaciones,idEstadisticasBaloncesto) VALUES	(4,29,26)




