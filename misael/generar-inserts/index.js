const fs = require("fs");

const dataPath = "data/data.json";

const insertPath = "inserts/inserts.sql";

const generateInserts = () => {
  let sqlQuery = `
    go
    INSERT INTO [dbo].[Deporte](nombre)
    values('Baloncesto')
    go
    INSERT INTO [dbo].[Estado](nombre, descripcion)
    values('Nuevo', 'Prueba')
  `;

  let file = fs.readFileSync(dataPath);

  let teams = JSON.parse(file);

  for (team of teams) {
    sqlQuery += `
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('${team.teamName}', 00, @deporteId)
    go
        declare @teamId int;
        declare @tmpEquipo int;

        declare @deporteId int;
        declare @estadoId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        set @estadoId = (
            select top(1) idEstado
                from Estado
                where nombre = 'Nuevo'
        )

        set @teamId = (select idEquipo
            from Equipo
            where nombre = '${team.teamName}')
        ${playersParse(team.players)}
    go
    `;
  }

  const writeStream = fs.createWriteStream(insertPath);

  writeStream.write(sqlQuery);
};

const playersParse = players => {
  let playerSQLformat = ``;
  let tmpNacimiento;

  for (player of players) {
    tmpNacimiento = player.info.nacimiento.replace("/", "-");
    tmpNacimiento = tmpNacimiento.replace("/", "-");

    playerSQLformat += `INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('${player.title.replace("'", "")}',
                [dbo].[formatoFechaInt]('${tmpNacimiento}'),
                'NA',
                'NA',
                'NA',
                'NA')

        INSERT INTO [dbo].[Jugador] (
            idPersona,
            dorsal,
            fechaDebut,
            sueldo,
            idDeporte,
            idEstado)
        values(
            (select idPersona from Persona
            where pNombre = '${player.title.replace("'", "")}'),
            'NA',
            00,
            00,
            @deporteId,
            @estadoId
        )

        set @tmpEquipo = (select idJugador
            from Jugador
            where idPersona = (
                select idPersona from Persona
                where pNombre = '${player.title.replace("'", "")}'
            ))

        INSERT INTO [dbo].[Registro] (
            idEquipo,
            idJugador,
            fechaContratacion,
            fechaFinalizaion)
        values(
            @teamId,
            @tmpEquipo,
            0,
            0)
        `;
  }
  return playerSQLformat;
};

generateInserts();
