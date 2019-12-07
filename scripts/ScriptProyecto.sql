use ScriptProyecto

IF NOT EXISTS
(
	SELECT * 
		FROM sysobjects sy 
			WHERE sy.name = 'Persona'
)
BEGIN
	CREATE TABLE [ScriptProyecto].[dbo].[Persona]
	(
		idPersona INT IDENTITY(1,1),
		pNombre VARCHAR(50) NOT NULL, 
		sNombre VARCHAR(50), 
		pApellido VARCHAR(50) NOT NULL, 
		sApellido VARCHAR(50),
		fechaNacimiento INT NOT NULL,
		paisNacimiento VARCHAR(50) NOT NULL, 
		CONSTRAINT PK_idPersona PRIMARY KEY(idPersona)
	)
END


IF NOT EXISTS 
(
	SELECT *	
		FROM sysobjects sy
			WHERE sy.name = 'Equipo'
)
BEGIN
	CREATE TABLE [ScriptProyecto].[dbo].[Equipo]
	(
		idEquipo INT NOT NULL IDENTITY(1,1), 
		nombre VARCHAR(50) NOT NULL, 
		fechaFundacion INT NOT NULL,
		CONSTRAINT PK_idEquipo PRIMARY KEY(idEquipo)
	)
END



IF NOT EXISTS
(
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'Jugador'
)
BEGIN
	CREATE TABLE [ScriptProyecto].[dbo].[Jugador]
	(	
		idJugador INT IDENTITY(1,1),
		dorsal VARCHAR(50) NOT NULL,
		fechaDebut INT NOT NULL,
		sueldo DECIMAL(20,2) NOT NULL,
		idPersona INT NOT NULL, 
		idEquipo INT NOT NULL,
		CONSTRAINT PK_idJugador PRIMARY KEY(idJugador),
		CONSTRAINT FK_idEquipoJ FOREIGN KEY(idEquipo) REFERENCES [ScriptProyecto].[dbo].[Equipo](idEquipo),
		CONSTRAINT FK_idPersonaJ FOREIGN KEY(idPersona) REFERENCES [ScriptProyecto].[dbo].[Persona](idPersona)
	)
END


IF NOT EXISTS
(
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'DirectorTecnico'
)
	BEGIN 
		CREATE TABLE [ScriptProyecto].[dbo].[DirectorTecnico]
		(
			idDirectorTecnico INT IDENTITY(1,1), 
			fechaDebut INT NULL, 
			idPersona INT, 
			CONSTRAINT PK_idDirectorTecnico PRIMARY KEY(idDirectorTecnico),
			CONSTRAINT FK_idPersonaDT FOREIGN KEY(idPersona) REFERENCES [ScriptProyecto].[dbo].[Persona](idPersona)
		)
	END

IF NOT EXISTS
(
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'EstadisticaBaloncesto'
)
	BEGIN
		CREATE TABLE [ScriptProyecto].[dbo].[EstadisticaBaloncesto]
		(
			idEstadisticasBaloncesto INT IDENTITY(1,1), 
			tirosHechos INT NULL, 
			tirosAnotados INT NULL, 
			triplesHechos INT NULL, 
			triplesAnotados INT NULL, 
			tirosLibresHechos INT NULL, 
			tirosLibresAnotados INT NULL, 
			Asistencia INT NULL, 
			bloqueos INT NULL, 
			robos INT NULL, 
			balonesPerdidos INT NULL,
			rebotes INT NULL, 
			rebotesOfensivos INT NULL, 
			puntosEnLaPintura INT NULL,
			faltasPersonales INT NULL,
			minutos INT NULL, 
			idEquipo INT NULL,
			idJugador INT NULL, 
			CONSTRAINT PK_idEstadisticasBaloncesto PRIMARY KEY(idEstadisticasBaloncesto),
			CONSTRAINT FK_idEquipoEB FOREIGN KEY (idEquipo) REFERENCES [ScriptProyecto].[dbo].[Equipo](idEquipo),
			CONSTRAINT FK_idJugadorEB FOREIGN KEY(idJugador) REFERENCES [ScriptProyecto].[dbo].[Jugador](idJugador)
	)		
	END


IF NOT EXISTS
(
	SELECT *
		FROM  sysobjects sy
			WHERE sy.name = 'EstadisticaFutbol'
)
	BEGIN
	CREATE TABLE [ScriptProyecto].[dbo].[EstadisticaFutbol]
	(
		idEstadisticaFutbol INT NOT NULL IDENTITY(1,1), 
		remates INT NULL, 
		rematesAlArco INT NULL, 
		posesion INT NULL, 
		pases INT NULL, 
		precisionPases INT NULL, 
		faltas INT NULL, 
		tarjetasAmarillas INT NOT NULL, 
		tarjetasRojas INT NOT NULL, 
		goles INT NOT NULL, 
		poscionAdelantada INT NULL, 
		tiroEsquina INT NULL,
		alineacionInicial VARCHAR(10), 
		idEquipo INT NULL, 
		idJugador INT NULL,
		CONSTRAINT PK_idEstadisticaFutbol PRIMARY KEY(idEstadisticaFutbol),
		CONSTRAINT FK_idEquipoEF FOREIGN KEY(idEquipo) REFERENCES [ScriptProyecto].[dbo].[Equipo](idEquipo),
		CONSTRAINT FK_idJugadorEF FOREIGN KEY(idJugador) REFERENCES [ScriptProyecto].[dbo].[Jugador](idJugador)
	)
	END


IF NOT EXISTS 
(	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'EstadisticasBaseball'
)
BEGIN 
	CREATE TABLE [ScriptProyecto].[dbo].[EstadisticasBaseball]
	(
		idEstadisticaBaseball INT NOT NULL IDENTITY(1,1),
		aBase INT NOT NULL, 
		carrera INT NOT NULL,
		hits INT NOT NULL,
		basePorBola INT NOT NULL,
		carrerasPermitidas INT NOT NULL, 
		inningsLanzados INT NOT NULL,
		hitsPermitidos INT NOT NULL, 
		carrerasLimpias INT NOT NULL, 
		ponches INT NOT NULL,
		idEquipo INT NULL,
		idJugador INT NULL 
		CONSTRAINT PK_idEstadisticaBaseball PRIMARY KEY(idEstadisticaBaseball),
		CONSTRAINT FK_idEquipoEBB FOREIGN KEY(idEquipo) REFERENCES [ScriptProyecto].[dbo].[Equipo](idEquipo),
		CONSTRAINT FK_idJugadorEBB FOREIGN KEY(idJugador) REFERENCES [ScriptProyecto].[dbo].[Jugador](idJugador)
	)
END


IF NOT EXISTS
(
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'Parcial'
)
BEGIN
	CREATE TABLE [ScriptProyecto].[dbo].[Parcial]
	(
		idParcial INT IDENTITY(1,1),
		numero INT NOT NULL,
		anotaciones INT NULL, 
		idEstadisticasBaloncesto INT NULL,
		idEstadisticasFutbol INT NULL, 
		idEstadisticasBaseball INT NULL,
		CONSTRAINT FK_idEstadisticasBaloncestoP FOREIGN KEY(idEstadisticasBaloncesto) REFERENCES [ScriptProyecto].[dbo].[EstadisticaBaloncesto](idEstadisticasBaloncesto),
		CONSTRAINT FK_idEstadisticasFutbolP FOREIGN KEY(idEstadisticasFutbol) REFERENCES [ScriptProyecto].[dbo].[EstadisticaFutbol](idEstadisticafutbol),
		CONSTRAINT FK_idEstadisticasBaseballP FOREIGN KEY(idEstadisticasBaseball) REFERENCES [ScriptProyecto].[dbo].[EstadisticasBaseball](idEstadisticaBaseball),
		CONSTRAINT PK_idParcial PRIMARY KEY(idParcial)
	)
END


IF NOT EXISTS
(	
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'Referee'
)
BEGIN
	CREATE TABLE [ScriptProyecto].[dbo].[Referee]
	(
		idReferee INT IDENTITY(1,1),
		fechaDebut INT NULL,
		fechaRetiro INT NULL, 
		idPersona INT NOT NULL,
		CONSTRAINT PK_idReferee PRIMARY KEY(idReferee),
		CONSTRAINT FK_idPersonaR FOREIGN KEY(idPersona) REFERENCES [dbo].[Persona] 
	)
END



IF NOT EXISTS
(	
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'Partido'
)
BEGIN
	CREATE TABLE [ScriptProyecto].[dbo].[Partido]
	(
		idPartido INT IDENTITY(1,1),
		fecha VARCHAR(10) NULL,
		horaInicio VARCHAR(4) NULL,
		idReferee INT NULL,
		CONSTRAINT PK_idPartido PRIMARY KEY(idPartido),
		CONSTRAINT FK_idRefereePar FOREIGN KEY(idReferee) REFERENCES [ScriptProyecto].[dbo].[Persona](idPersona)
	)
END

--//Primer punto de quiebre, la tabla partido en este punto no tiene ningun estadio

IF NOT EXISTS 
(
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'Fase'
)
	BEGIN
		CREATE TABLE [ScriptProyecto].[dbo].[Fase]
		(
			idFase INT IDENTITY(1,1),
			nombre VARCHAR(50),
			descripcion VARCHAR(200),
			CONSTRAINT PK_idFase PRIMARY KEY(idFase)
		)
	END

	

IF NOT EXISTS
(
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'Liga'
)
	BEGIN
		CREATE TABLE [ScriptProyecto].[dbo].[Liga]
		(
			idLiga INT IDENTITY(1,1),
			pais VARCHAR(70) NOT NULL,
			cantidadEquiposDescendidos INT NULL,
			CONSTRAINT PK_idLiga PRIMARY KEY(idLiga)
		)
	END


IF NOT EXISTS
(
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'FaseLiga'
)
BEGIN 
	CREATE TABLE [ScriptProyecto].[dbo].[FaseLiga]
	(
		idFase INT NOT NULL IDENTITY(1,1),
		idLiga INT NOT NULL,
		Anio INT NOT NULL,
		CONSTRAINT FK_idFase FOREIGN KEY (idFase) REFERENCES [ScriptProyecto].[dbo].[Fase],
		CONSTRAINT FK_idLigaFL FOREIGN KEY (idLiga) REFERENCES [ScriptProyecto].[dbo].[Liga]
	)	
END


IF NOT EXISTS
(	
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'Partido'
)
	BEGIN
			CREATE TABLE [ScriptProyecto].[dbo].[Partido]
			(
				idPartido INT IDENTITY(1,1),
				fecha VARCHAR(10) NOT NULL,
				horaInicio VARCHAR(4) NULL,
				idReferee INT NULL,
				CONSTRAINT PK_idPartido PRIMARY KEY(idPartido),
				CONSTRAINT FK_idRefereePar FOREIGN KEY(idReferee) REFERENCES [ScriptProyecto].[dbo].[Persona](idPersona)
			)
			ALTER TABLE [ScriptProyecto].[dbo].[Partido]
				ADD idEstadisticasBaloncesto INT;

			ALTER TABLE [ScriptProyecto].[dbo].[Partido]
				ADD idEstadisticasFutbol INT;

			ALTER TABLE [ScriptProyecto].[dbo].[Partido]
				ADD idEstadisticasBaseball INT;

			ALTER TABLE [ScriptProyecto].[dbo].[Partido] 
				ADD CONSTRAINT FK_idEstadisticasBaloncestoPar 
					FOREIGN KEY (idEstadisticasBaloncesto) REFERENCES [ScriptProyecto].[dbo].[EstadisticaBaloncesto](idEstadisticasBaloncesto)


			ALTER TABLE [ScriptProyecto].[dbo].[Partido]
				ADD CONSTRAINT FK_idEstadisticaBaseballPar
					FOREIGN KEY (idEstadisticasBaseball) REFERENCES [ScriptProyecto].[dbo].[EstadisticasBaseball](idEstadisticaBaseball)

			ALTER TABLE [ScriptProyecto].[dbo].[Partido]
				ADD CONSTRAINT FK_idEstadisticaFutbolPar
					FOREIGN KEY (idEstadisticasFutbol) REFERENCES [ScriptProyecto].[dbo].[EstadisticaFutbol](idEstadisticaFutbol)
	END
		ELSE 
			BEGIN 

			ALTER TABLE [ScriptProyecto].[dbo].[Partido]
				ADD idEstadisticasBaloncesto INT;

			ALTER TABLE [ScriptProyecto].[dbo].[Partido]
				ADD idEstadisticasFutbol INT;

			ALTER TABLE [ScriptProyecto].[dbo].[Partido]
				ADD idEstadisticasBaseball INT;

			ALTER TABLE [ScriptProyecto].[dbo].[Partido] 
				ADD CONSTRAINT FK_idEstadisticasBaloncestoPar 
					FOREIGN KEY (idEstadisticasBaloncesto) REFERENCES [ScriptProyecto].[dbo].[EstadisticaBaloncesto](idEstadisticasBaloncesto)


			ALTER TABLE [ScriptProyecto].[dbo].[Partido]
				ADD CONSTRAINT FK_idEstadisticaBaseballPar
					FOREIGN KEY (idEstadisticasBaseball) REFERENCES [ScriptProyecto].[dbo].[EstadisticasBaseball](idEstadisticaBaseball)

			ALTER TABLE [ScriptProyecto].[dbo].[Partido]
				ADD CONSTRAINT FK_idEstadisticaFutbolPar
					FOREIGN KEY (idEstadisticasFutbol) REFERENCES [ScriptProyecto].[dbo].[EstadisticaFutbol](idEstadisticaFutbol)

			END

IF NOT EXISTS
(
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'Estadio' 
)
BEGIN 
	CREATE TABLE [ScriptProyecto].[dbo].[Estadio]
	(
		idEstadio INT IDENTITY(1,1),
		nombre VARCHAR(50) NOT NULL, 
		capacidad INT NULL, 
		--La altura hace referencia a la altura sobre el nivel del mara
		altura INT NULL,
		temperaturaPromedio INT NULL,
		pais VARCHAR(50) NOT NULL
		CONSTRAINT PK_idEstadio PRIMARY KEY(idEstadio)
	)
END



IF NOT EXISTS
(
	SELECT *
		FROM sysobjects sy 
			WHERE sy.name = 'Partido'
		
)
BEGIN
		CREATE TABLE [ScriptProyecto].[dbo].[Partido]
		(
			idPartido INT IDENTITY(1,1),
			fecha VARCHAR(10) NOT NULL,
			horaInicio VARCHAR(4) NULL,
			idReferee INT NULL,
			CONSTRAINT PK_idPartido PRIMARY KEY(idPartido),
			CONSTRAINT FK_idRefereePar FOREIGN KEY(idReferee) REFERENCES [ScriptProyecto].[dbo].[Persona](idPersona)
		)

		ALTER TABLE [ScriptProyecto].[dbo].[Partido] ADD idEstadio INT NOT NULL;

		ALTER TABLE [ScriptProyecto].[dbo].[Partido] 
			ADD CONSTRAINT FK_idPartidoPar FOREIGN KEY(idEstadio) 
				REFERENCES [ScriptProyecto].[dbo].[Estadio](idEstadio)
END
	ELSE 
		BEGIN
			ALTER TABLE [ScriptProyecto].[dbo].[Partido] ADD idEstadio INT NOT NULL;

		ALTER TABLE [ScriptProyecto].[dbo].[Partido] 
			ADD CONSTRAINT FK_idPartidoPar FOREIGN KEY(idEstadio) 
				REFERENCES [ScriptProyecto].[dbo].[Estadio](idEstadio)
		END

IF NOT EXISTS
(
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'EstadisticaBaloncesto'
)
BEGIN 
		CREATE TABLE [ScriptProyecto].[dbo].[EstadisticaBaloncesto]
		(
			idEstadisticasBaloncesto INT IDENTITY(1,1), 
			tirosHechos INT NULL, 
			tirosAnotados INT NULL, 
			triplesHechos INT NULL, 
			triplesAnotados INT NULL, 
			tirosLibresHechos INT NULL, 
			tirosLibresAnotados INT NULL, 
			Asistencia INT NULL, 
			bloqueos INT NULL, 
			robos INT NULL, 
			balonesPerdidos INT NULL,
			rebotes INT NULL, 
			rebotesOfensivos INT NULL, 
			puntosEnLaPintura INT NULL,
			faltasPersonales INT NULL,
			minutos INT NULL, 
			idEquipo INT NULL,
			idJugador INT NULL, 
			CONSTRAINT PK_idEstadisticasBaloncesto PRIMARY KEY(idEstadisticasBaloncesto),
			CONSTRAINT FK_idEquipoEB FOREIGN KEY (idEquipo) REFERENCES [ScriptProyecto].[dbo].[Equipo](idEquipo),
			CONSTRAINT FK_idJugadorEB FOREIGN KEY(idJugador) REFERENCES [ScriptProyecto].[dbo].[Jugador](idJugador)
	)

	ALTER TABLE [ScriptProyecto].[dbo].[EstadisticaBaloncesto] 
		ADD localia VARCHAR(1);

END	
	ELSE 
		BEGIN 
			ALTER TABLE [ScriptProyecto].[dbo].[EstadisticaBaloncesto] 
				ADD localia VARCHAR(1);
		END

IF NOT EXISTS
(
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'EstadisticasBaseball'
)
BEGIN 
	CREATE TABLE [ScriptProyecto].[dbo].[EstadisticasBaseball]
	(
		idEstadisticaBaseball INT NOT NULL IDENTITY(1,1),
		aBase INT NOT NULL, 
		carrera INT NOT NULL,
		hits INT NOT NULL,
		basePorBola INT NOT NULL,
		carrerasPermitidas INT NOT NULL, 
		inningsLanzados INT NOT NULL,
		hitsPermitidos INT NOT NULL, 
		carrerasLimpias INT NOT NULL, 
		ponches INT NOT NULL,
		idEquipo INT NULL,
		idJugador INT NULL 
		CONSTRAINT PK_idEstadisticaBaseball PRIMARY KEY(idEstadisticaBaseball),
		CONSTRAINT FK_idEquipoEBB FOREIGN KEY(idEquipo) REFERENCES [ScriptProyecto].[dbo].[Equipo](idEquipo),
		CONSTRAINT FK_idJugadorEBB FOREIGN KEY(idJugador) REFERENCES [ScriptProyecto].[dbo].[Jugador](idJugador)
	)

	ALTER TABLE [ScriptProyecto].[dbo].[EstadisticasBaseball]
		ADD localia VARCHAR(1);
END
	ELSE 
		BEGIN 
			ALTER TABLE [ScriptProyecto].[dbo].[EstadisticasBaseball]
				ADD localia VARCHAR(1);
		END

IF NOT EXISTS
(
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'EstadisticaFutbol'
)
BEGIN 
	CREATE TABLE [ScriptProyecto].[dbo].[EstadisticaFutbol]
	(
		idEstadisticaFutbol INT NOT NULL IDENTITY(1,1), 
		remates INT NULL, 
		rematesAlArco INT NULL, 
		posesion INT NULL, 
		pases INT NULL, 
		precisionPases INT NULL, 
		faltas INT NULL, 
		tarjetasAmarillas INT NOT NULL, 
		tarjetasRojas INT NOT NULL, 
		goles INT NOT NULL, 
		poscionAdelantada INT NULL, 
		tiroEsquina INT NULL,
		alineacionInicial VARCHAR(10), 
		idEquipo INT NULL, 
		idJugador INT NULL,
		CONSTRAINT PK_idEstadisticaFutbol PRIMARY KEY(idEstadisticaFutbol),
		CONSTRAINT FK_idEquipoEF FOREIGN KEY(idEquipo) REFERENCES [ScriptProyecto].[dbo].[Equipo](idEquipo),
		CONSTRAINT FK_idJugadorEF FOREIGN KEY(idJugador) REFERENCES [ScriptProyecto].[dbo].[Jugador](idJugador)
	)

	ALTER TABLE [ScriptProyecto].[dbo].[EstadisticaFutbol]
		ADD localia VARCHAR(1);
END 
	ELSE 
		BEGIN
			ALTER TABLE [ScriptProyecto].[dbo].[EstadisticaFutbol]
				ADD localia VARCHAR(1);
		END 

-- (10) Bitacora de cambios 07/11/2019

IF NOT EXISTS
(
	SELECT *
		FROM sysobjects sy 
			WHERE sy.name = 'Jugador'
)
BEGIN 
	CREATE TABLE [ScriptProyecto].[dbo].[Jugador]
	(	
		idJugador INT IDENTITY(1,1),
		dorsal VARCHAR(50) NOT NULL,
		fechaDebut INT NOT NULL,
		sueldo DECIMAL(20,2) NOT NULL,
		idPersona INT NOT NULL, 
		idEquipo INT NOT NULL,
		CONSTRAINT PK_idJugador PRIMARY KEY(idJugador),
		CONSTRAINT FK_idEquipoJ FOREIGN KEY(idEquipo) REFERENCES [ScriptProyecto].[dbo].[Equipo](idEquipo),
		CONSTRAINT FK_idPersonaJ FOREIGN KEY(idPersona) REFERENCES [ScriptProyecto].[dbo].[Persona](idPersona)
		
		)
		ALTER TABLE [ScriptProyecto].[dbo].[Jugador]
			DROP CONSTRAINT FK_idEquipoJ

		ALTER TABLE [ScriptProyecto].[dbo].[Jugador]
			DROP COLUMN idEquipo
END
	ELSE 
		BEGIN
			ALTER TABLE [ScriptProyecto].[dbo].[Jugador]
				DROP CONSTRAINT FK_idEquipoJ

			ALTER TABLE [ScriptProyecto].[dbo].[Jugador]
				DROP COLUMN idEquipo
		END

		


IF NOT EXISTS
(
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'Registro'
)
BEGIN 
	CREATE TABLE [ScriptProyecto].[dbo].[Registro]
	(	
		idRegistro INT IDENTITY(1,1), 
		fechaContratacion INT NOT NULL,
		fechaFinalizaion INT NULL,
		idEquipo INT NOT NULL,
		idJugador INT NOT NULL,
		CONSTRAINT PK_idRegistro PRIMARY KEY(idRegistro),
		CONSTRAINT FK_idEquipoReg FOREIGN KEY (idEquipo) REFERENCES [ScriptProyecto].[dbo].[Equipo](idEquipo),
		CONSTRAINT FK_idJugadorReg FOREIGN KEY (idJugador) REFERENCES [ScriptProyecto].[dbo].[Jugador](idJugador)
	)	
END



--(10) Bitacora de cambios 07/11/2019
--(11) Bitacora de cambios 08/11/2019
IF NOT EXISTS
(
	SELECT*
		FROM sysobjects sy	
			WHERE  sy.name = 'FaseLiga'
)
BEGIN
		CREATE TABLE [ScriptProyecto].[dbo].[FaseLiga]
		(
			idFase INT NOT NULL IDENTITY(1,1),
			idLiga INT NOT NULL,
			Anio INT NOT NULL,
			CONSTRAINT FK_idFase FOREIGN KEY (idFase) REFERENCES [ScriptProyecto].[dbo].[Fase],
			CONSTRAINT FK_idLigaFL FOREIGN KEY (idLiga) REFERENCES [ScriptProyecto].[dbo].[Liga]
		)

		ALTER TABLE [ScriptProyecto].[dbo].[FaseLiga]
			DROP COLUMN Anio
END
	ELSE 
		BEGIN
			ALTER TABLE [ScriptProyecto].[dbo].[FaseLiga]
				DROP COLUMN Anio
		END 

IF NOT EXISTS 
(
	SELECT *
		FROM sysobjects sy 
			WHERE sy.name = 'Liga'
)
BEGIN
		CREATE TABLE [ScriptProyecto].[dbo].[Liga]
		(
			idLiga INT IDENTITY(1,1),
			pais VARCHAR(70) NOT NULL,
			cantidadEquiposDescendidos INT NULL,
			CONSTRAINT PK_idLiga PRIMARY KEY(idLiga)
		)

		ALTER TABLE [ScriptProyecto].[dbo].[Liga]
			ADD fechaInicio INT NOT NULL

		ALTER TABLE [ScriptProyecto].[dbo].[Liga]
			ADD fechaFin INT NULL
END
	ELSE
		BEGIN 
			ALTER TABLE [ScriptProyecto].[dbo].[Liga]
				ADD fechaInicio INT NOT NULL

			ALTER TABLE [ScriptProyecto].[dbo].[Liga]
				ADD fechaFin INT NULL
		END


--(11) Bitacora de cambios 08/11/2019
--(12) Bitacora de cambios 12/11/2019
IF NOT EXISTS
(
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'Deporte'
)
BEGIN
	CREATE TABLE [ScriptProyecto].[dbo].[Deporte]
	(
		idDeporte INT IDENTITY(1,1),
		nombre VARCHAR(50),
		CONSTRAINT PK_idDeporte PRIMARY KEY(idDeporte)
	)		
END 


--(12) Bitacora de cambios 12/11/2019

--Hasta aqui se puede hacer la ejecucion masiva de los scripts, probado el 12/11/2019 a las 5:31 am

--(13) Bitacora de cambios 12/11/2019
IF NOT EXISTS 
(
	SELECT *
		FROM sysobjects sy
			WHERE sy.name = 'Equipo'
)
BEGIN
	CREATE TABLE [ScriptProyecto].[dbo].[Equipo]
	(
		idEquipo INT NOT NULL IDENTITY(1,1), 
		nombre VARCHAR(50) NOT NULL, 
		fechaFundacion INT NOT NULL,
		CONSTRAINT PK_idEquipo PRIMARY KEY(idEquipo)
	)

		ALTER TABLE [ScriptProyecto].[dbo].[Equipo]
			ADD idDeporte INT NOT NULL

		ALTER TABLE [ScriptProyecto].[dbo].[Equipo]
			ADD CONSTRAINT FK_idDeporteEqu 
				FOREIGN KEY(idDeporte) 
					REFERENCES [ScriptProyecto].[dbo].[Deporte]
END
	ELSE 
		BEGIN
			ALTER TABLE [ScriptProyecto].[dbo].[Equipo]
				ADD idDeporte INT NOT NULL

			ALTER TABLE [ScriptProyecto].[dbo].[Equipo]
				ADD CONSTRAINT FK_idDeporteEqu 
					FOREIGN KEY(idDeporte) 
						REFERENCES [ScriptProyecto].[dbo].[Deporte]
		END

--(13) Bitacora de cambios 12/11/2019
--(14)Bitacora de cambios 12/11/2019
	ALTER TABLE [ScriptProyecto].[dbo].[Liga]
		DROP COLUMN fechaInicio
	
	ALTER TABLE [ScriptProyecto].[dbo].[Liga]
		DROP COLUMN fechaFIn

	ALTER TABLE [ScriptProyecto].[dbo].[FaseLiga]
		ADD fechaInicio INT NOT NULL

	ALTER TABLE [ScriptProyecto].[dbo].[FaseLiga]
		ADD fechaFin INT NULL


--(14)Bitacora de cambios 12/11/2019
--(15) Bitacora de cambios 12//11/2019	

IF NOT EXISTS
(
	SELECT * 
		FROM sysobjects sy
			WHERE sy.name = 'Temporada'
)
BEGIN
	CREATE TABLE [ScriptProyecto].[dbo].[Temporada]
	(
		idTemporada INT IDENTITY(1,1), 
		fechaInicio INT NOT NULL,
		fechaFin INT NULL,
		CONSTRAINT PK_idTemporada  PRIMARY KEY(idTemporada)
	)
END


ALTER TABLE [ScriptProyecto].[dbo].[FaseLiga]
	ADD idTemporada INT NOT NULL

ALTER TABLE [ScriptProyecto].[dbo].[FaseLiga]
	ADD CONSTRAINT FK_idTemporadaFL FOREIGN KEY (idTemporada) 
		REFERENCES [ScriptProyecto].[dbo].[Temporada](idTemporada)
--(15) Bitacora de cambios 12//11/2019
--(14) Bitacora de cambios  15/11/2019

select * FROM FaseLiga
ALTER TABLE [ScriptProyecto].[dbo].[FaseLiga] DROP FK_idLigaFL
ALTER TABLE [ScriptProyecto].[dbo].[FaseLiga] DROP COLUMN idLiga

ALTER TABLE [ScriptProyecto].[dbo].[Temporada] ADD idLiga INT NOT NULL;
ALTER TABLE [ScriptProyecto].[dbo].[Temporada] ADD CONSTRAINT FK_idLigaT FOREIGN KEY(idLiga) REFERENCES [ScriptProyecto].[dbo].[Liga]
--(14) Bitacora de cambios  15/11/2019
--(15) Bitacora de cambios 15/11/2019

ALTER TABLE [ScriptProyecto].[dbo].[Partido] ADD idFase INT NULL
ALTER TABLE [ScriptProyecto].[dbo].[Partido] ADD CONSTRAINT FK_idFaseP FOREIGN KEY(idFase) REFERENCES [ScriptProyecto].[dbo].[Fase]



--(15) Bitacora de cambios 15/11/2019
--(16) Bitacora de cambios 16/11/2019
	ALTER TABLE [ScriptProyecto].[dbo].[Jugador] ADD idDeporte INT
	ALTER TABLE [ScriptProyecto].[dbo].[Jugador] 
		ADD CONSTRAINT FK_idDeporteJ FOREIGN KEY(idDeporte) 
			REFERENCES [ScriptProyecto].[dbo].[Deporte]
--(16) Bitacora de cambios 16/11/2019
--(17) Bitacora de cambios 25/11/2019

ALTER TABLE [ScriptProyecto].[dbo].[Partido] ADD idDeporte INT;
ALTER TABLE [ScriptProyecto].[dbo].[Partido] ADD CONSTRAINT FK_idDeporte FOREIGN KEY(idDeporte) REFERENCES [ScriptProyecto].[dbo].[Deporte]

--(17) Bitacora de cambios 25/11/2019
--(18) Bitacora de cambios 27/11/2019
IF NOT EXISTS 
(
	SELECT * 
		FROM sysobjects syob
			WHERE syob.name = 'Estado'
)
BEGIN 
	CREATE TABLE Estado 
	(
		idEstado INT NOT NULL IDENTITY(1,1), 
		nombre VARCHAR(50) NOT NULL,
		descripcion  VARCHAR(200) 
	)
END




--(18) Bitacora de cambios 27/11/2019

--(19) Bitacora de cambios 28/11/2019
		IF NOT EXISTS
	(
		SELECT *
			FROM sysobjects sybo
			WHERE sybo.name = 'MejorEquipo'
	)
	BEGIN
		CREATE TABLE [ScriptProyecto].[dbo].[MejorEquipo]
		(
			idMejoreEquipo INT, 
			nombre VARCHAR(50) NOT NULL,
			fechaInicio INT NOT NULL, 
			anotaciones INT NOT NULL
		)
	END


--(19) Bitacora de cambios 28/11/2019

--(20) Bitacora de cambios 28/11/2019
	ALTER TABLE [ScriptProyecto].[dbo].[Estado]  ADD CONSTRAINT PK_idEstado PRIMARY KEY(idEstado)
	ALTER TABLE [ScriptProyecto].[dbo].[Jugador] ADD idEstado INT
	ALTER TABLE [ScriptProyecto].[dbo].[Jugador] ADD CONSTRAINT FK_idEstadoJu FOREIGN KEY(idEstado) REFERENCES [ScriptProyecto].[dbo].[Estado](idEstado)
	ALTER TABLE [ScriptProyecto].[dbo].[Partido] ADD idEstado INT NOT NULL
	ALTER TABLE [ScriptProyecto].[dbo].[Partido] ADD CONSTRAINT FK_idPartido FOREIGN KEY (idEstado) REFERENCES [ScriptProyecto].[dbo].[Estado](idEstado)
--(20) Bitacora de cambios 28/11/2019

 






















































































































