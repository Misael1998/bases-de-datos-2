-- -------------------------------------------------------------
-- Autor <Alexander Ismael Tejeda Barahona>
-- fecha <30/11/2019>
-- Decripcion <
--				
--			  >
-- -------------------------------------------------------------
CREATE TRIGGER TG_InsercionPartidos	
	ON [ScriptProyecto].[dbo].[Partido]
		INSTEAD OF INSERT 
AS
BEGIN 
	-- -------------------------------------------------------------
	--  DECLARACION DE VARIABLES
	-- -------------------------------------------------------------
	
	DECLARE @fechaINT INT;
	DECLARE @fechaDate DATE;

	-- -------------------------------------------------------------
	-- VERIFICACION DE LOS DATOS QUE SE DESEAN INSERTAR
	-- -------------------------------------------------------------
	SELECT @fechaINT = ins.fecha
		FROM inserted ins 
				
	SELECT @fechaDate = [ScriptProyecto].[dbo].[ConversionFecha](@fechaINT)
	
	-- -------------------------------------------------------------
	-- DECISION DE SI LA FECHA QUE SE DESEA INSERTAR ES MAYOR
	-- -------------------------------------------------------------
	IF(@fechaDate > SYSDATETIME())
		BEGIN 
			-- -------------------------------------------------------------
			-- INSTRUCCIONES SI LA FECHA ES MAYOR QUE LA INSERTADA
			-- (1)Declaracion de variable para guarar el mayor indice 
			-- (2)Capura del indicie mayor dentro de la base de datos 
			-- (3)Comprobacion para comprobar que indice es mayor
			--
			-- -------------------------------------------------------------

			DECLARE @IndiceMayor INT;

			SELECT  
				TOP 1
				@IndiceMayor = par.idPartido 
					FROM [ScriptProyecto].[dbo].[Partido] par
						ORDER BY par.idPartido DESC

			IF(@IndiceMayor <> NULL)
				BEGIN
					SELECT 'El indice ingresado es nulo, insertalo como 1'
				END

		END
			ELSE 
				BEGIN 
					
					SELECT ins.idPartido
						FROM inserted ins

				END


END



INSERT INTO Estadio(nombre,pais) VALUES ('CAMP NOU','España')
INSERT INTO Estado(nombre) VALUES ('Disponible')
INSERT INTO Partido(fecha,idEstado,idEstadio) VALUES (20191205,2,3)
INSERT INTO Partido(fecha,idEstado,idEstadio) VALUES (20191215,2,3)
INSERT INTO Partido(fecha,idEstado,idEstadio) VALUES (20191215,2,3)



SELECT  
	TOP 1
	par.idPartido 
		FROM [ScriptProyecto].[dbo].[Partido] par
			ORDER BY par.idPartido DESC






























