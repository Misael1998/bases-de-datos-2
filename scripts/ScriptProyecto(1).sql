CREATE TABLE [ScriptProyecto].[dbo].[Persona]
(
	idPersona INT,
	pNombre VARCHAR(50) NOT NULL, 
	sNombre VARCHAR(50), 
	pApellido VARCHAR(50) NOT NULL, 
	sApellido VARCHAR(50),
	fechaNacimiento INT NOT NULL,
	paisNacimiento VARCHAR(50) NOT NULL, 
	CONSTRAINT PK_idPersona PRIMARY KEY(idPersona)
)

CREATE TABLE [ScriptProyecto].[dbo].[Equipo]
(
	idEquipo INT NOT NULL, 
	nombre VARCHAR(50) NOT NULL, 
	fechaFundacion INT NOT NULL,
	CONSTRAINT PK_idEquipo PRIMARY KEY(idEquipo)
)


CREATE TABLE [ScriptProyecto].[dbo].[Jugador]
(
	idJugador INT,
	dorsal VARCHAR(50) NOT NULL,
	fechaDebut INT NOT NULL,
	sueldo DECIMAL(20,2) NOT NULL,
	idPersona INT NOT NULL, 
	idEquipo INT NOT NULL,
	CONSTRAINT PK_idJugador PRIMARY KEY(idJugador),
	CONSTRAINT FK_idEquipo FOREIGN KEY(idEquipo) REFERENCES [ScriptProyecto].[dbo].[Equipo](idEquipo),
	CONSTRAINT FK_idPersona FOREIGN KEY(idPersona) REFERENCES [ScriptProyecto].[dbo].[Persona](idPersona)
)

CREATE TABLE [ScriptProyecto].[dbo].[Referee]
(
	idReferee INT,
	fechaDebut INT NULL, 
	fechaRetiro INT NULL, 
	CONSTRAINT PK_idReferee PRIMARY KEY(idReferee)
)


CREATE TABLE [ScriptProyecto].[dbo].[DirectorTecnico]
(
	idDirectorTecnico INT, 
	fechaDebut INT NULL, 
	idPersona INT, 
	CONSTRAINT PK_idDirectorTecnico PRIMARY KEY(idDirectorTecnico),
	CONSTRAINT FK_idPersonaDT FOREIGN KEY(idPersona) REFERENCES [ScriptProyecto].[dbo].[Persona](idPersona)
)

CREATE TABLE [ScriptProyecto].[dbo].[EstadisticaBaloncesto]
(
	idEstadisticasBaloncesto INT, 
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
	CONSTRAINT FK_idJugador FOREIGN KEY(idJugador) REFERENCES [ScriptProyecto].[dbo].[Jugador](idJugador)
)

CREATE TABLE [ScriptProyecto].[dbo].[EstadisticaFutbol]
(
	idEstadisticaFutbol INT NOT NULL, 
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
	CONSTRAINT FK_idEquipoF FOREIGN KEY(idEquipo) REFERENCES [ScriptProyecto].[dbo].[Equipo](idEquipo),
	CONSTRAINT FK_idJugadorF FOREIGN KEY(idJugador) REFERENCES [ScriptProyecto].[dbo].[Jugador](idJugador)
)

CREATE TABLE [ScriptProyecto].[dbo].[EstadisticasBaseball]
(
	idEstadisticaBaseball INT NOT NULL,
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
	CONSTRAINT FK_idEquipoBB FOREIGN KEY(idEquipo) REFERENCES [ScriptProyecto].[dbo].[Equipo](idEquipo),
	CONSTRAINT FK_idJugadorBB FOREIGN KEY(idJugador) REFERENCES [ScriptProyecto].[dbo].[Jugador](idJugador)
)

CREATE TABLE [ScriptProyecto].[dbo].[Parcial]
(
	idParcial INT,
	numero INT NOT NULL,
	anotaciones INT NULL, 
	idEstadisticasBaloncesto INT NULL,
	idEstadisticasFutbol INT NULL, 
	idEstadisticasBaseball INT NULL,
	CONSTRAINT FK_idEstadisticasBaloncesto FOREIGN KEY(idEstadisticasBaloncesto) REFERENCES [ScriptProyecto].[dbo].[EstadisticaBaloncesto](idEstadisticasBaloncesto),
	CONSTRAINT FK_idEstadisticasFutbol FOREIGN KEY(idEstadisticasFutbol) REFERENCES [ScriptProyecto].[dbo].[EstadisticaFutbol](idEstadisticafutbol),
	CONSTRAINT FK_idEstadisticasBaseball FOREIGN KEY(idEstadisticasBaseball) REFERENCES [ScriptProyecto].[dbo].[EstadisticasBaseball](idEstadisticaBaseball),
	CONSTRAINT PK_idParcial PRIMARY KEY(idParcial)
)

CREATE TABLE [ScriptProyecto].[dbo].[Referee]
(
	idReferee INT,
	fechaDebut INT NULL,
	fechaRetiro INT NULL, 
	idPersona INT NOT NULL,
	CONSTRAINT PK_idReferee PRIMARY KEY(idReferee),
	CONSTRAINT FK_idPersona FOREIGN KEY(idPersona) REFERENCES [dbo].[Persona] 
)

CREATE TABLE [ScriptProyecto].[dbo].[Partido]
(
	idPartido INT,
	fecha VARCHAR(10) NOT NULL,
	horaInicio VARCHAR(4) NULL,
	idReferee INT NULL,
	CONSTRAINT PK_idPartido PRIMARY KEY(idPartido),
	CONSTRAINT FK_idReferee FOREIGN KEY(idReferee) REFERENCES [ScriptProyecto].[dbo].[Persona](idPersona)
)

CREATE TABLE [ScriptProyecto].[dbo].[DirectorTecnico]
(
	idDirectorTecnico INT,
	fechaDebut INT NULL, 
	idPersona INT NOT NULL,
	CONSTRAINT PK_idDirectorTecnico PRIMARY KEY(idDirectorTecnico),
	CONSTRAINT FK_idPersona FOREIGN KEY (idPersona) REFERENCES [ScriptProyecto].[dbo].[Persona](idPersona)
)


CREATE TABLE [ScriptProyecto].[dbo].[Fase]
(
	idFase INT,
	nombre VARCHAR(50),
	descripcion VARCHAR(200),
	CONSTRAINT PK_idFase PRIMARY KEY(idFase)
)

--ALTER TABLE [ScriptProyecto].[dbo].[Partido] ADD idReferee INT NULL;
--ALTER TABLE [ScriptProyecto.[dbo].[Partido] ADD CONSTRAINT FK_idReferee PRIMARY KEY(idReferee);

CREATE TABLE [ScriptProyecto].[dbo].[Liga]
(
	idLiga INT,
	pais VARCHAR(70) NOT NULL,
	cantidadEquiposDescendidos INT NULL,
	CONSTRAINT PK_idLiga PRIMARY KEY(idLiga)
)

CREATE TABLE [ScriptProyecto].[dbo].[FaseLiga]
(
	idFase INT NOT NULL,
	idLiga INT NOT NULL,
	Anio INT NOT NULL,
	CONSTRAINT FK_idFase FOREIGN KEY (idFase) REFERENCES [ScriptProyecto].[dbo].[Fase],
	CONSTRAINT FK_idLiga FOREIGN KEY (idLiga) REFERENCES [ScriptProyecto].[dbo].[Liga]
)

ALTER TABLE [ScriptProyecto].[dbo].[Partido]
	ADD idEstadisticasBaloncesto INT;

ALTER TABLE [ScriptProyecto].[dbo].[Partido]
	ADD idEstadisticasFutbol INT;

ALTER TABLE [ScriptProyecto].[dbo].[Partido]
	ADD idEstadisticasBaseball INT;

ALTER TABLE [ScriptProyecto].[dbo].[Partido] 
	ADD CONSTRAINT FK_idEstadisticasBaloncestoP 
		FOREIGN KEY (idEstadisticasBaloncesto) REFERENCES [ScriptProyecto].[dbo].[EstadisticaBaloncesto](idEstadisticasBaloncesto)


ALTER TABLE [ScriptProyecto].[dbo].[Partido]
	ADD CONSTRAINT FK_idEstadisticaBaseballP
		FOREIGN KEY (idEstadisticasBaseball) REFERENCES [ScriptProyecto].[dbo].[EstadisticasBaseball](idEstadisticaBaseball)

ALTER TABLE [ScriptProyecto].[dbo].[Partido]
	ADD CONSTRAINT FK_idEstadisticaFutbolP
		FOREIGN KEY (idEstadisticasFutbol) REFERENCES [ScriptProyecto].[dbo].[EstadisticaFutbol](idEstadisticaFutbol)

CREATE TABLE [ScriptProyecto].[dbo].[Estadio]
(
	idEstadio INT,
	nombre VARCHAR(50) NOT NULL, 
	capacidad INT NULL, 
	--La altura hace referencia a la altura sobre el nivel del mara
	altura INT NULL,
	temperaturaPromedio INT NULL,
	pais VARCHAR(50) NOT NULL
	CONSTRAINT PK_idEstadio PRIMARY KEY(idEstadio)
)

ALTER TABLE [ScriptProyecto].[dbo].[Partido] ADD idEstadio INT NOT NULL;

ALTER TABLE [ScriptProyecto].[dbo].[Partido] 
	ADD CONSTRAINT FK_idPartido FOREIGN KEY(idEstadio) 
		REFERENCES [ScriptProyecto].[dbo].[Estadio](idEstadio)

ALTER TABLE [ScriptProyecto].[dbo].[EstadisticaBaloncesto] 
	ADD localia VARCHAR(1);

ALTER TABLE [ScriptProyecto].[dbo].[EstadisticasBaseball]
	ADD localia VARCHAR(1);

ALTER TABLE [ScriptProyecto].[dbo].[EstadisticaFutbol]
	ADD localia VARCHAR(1);


