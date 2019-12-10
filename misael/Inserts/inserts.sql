
    go
    INSERT INTO [dbo].[Deporte](nombre)
    values('Baloncesto')
    go
    INSERT INTO [dbo].[Estado](nombre, descripcion)
    values('Nuevo', 'Prueba')
  
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Atlanta Hawks', 00, @deporteId)
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
            where nombre = 'Atlanta Hawks')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('DeAndre Bembry',
                [dbo].[formatoFechaInt]('07-04-1994'),
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
            where pNombre = 'DeAndre Bembry'),
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
                where pNombre = 'DeAndre Bembry'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Charles Brown Jr.',
                [dbo].[formatoFechaInt]('02-02-1997'),
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
            where pNombre = 'Charles Brown Jr.'),
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
                where pNombre = 'Charles Brown Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Vince Carter',
                [dbo].[formatoFechaInt]('01-26-1977'),
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
            where pNombre = 'Vince Carter'),
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
                where pNombre = 'Vince Carter'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('John Collins',
                [dbo].[formatoFechaInt]('09-23-1997'),
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
            where pNombre = 'John Collins'),
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
                where pNombre = 'John Collins'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Allen Crabbe',
                [dbo].[formatoFechaInt]('04-09-1992'),
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
            where pNombre = 'Allen Crabbe'),
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
                where pNombre = 'Allen Crabbe'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Bruno Fernando',
                [dbo].[formatoFechaInt]('08-15-1998'),
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
            where pNombre = 'Bruno Fernando'),
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
                where pNombre = 'Bruno Fernando'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Brandon Goodwin',
                [dbo].[formatoFechaInt]('10-02-1995'),
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
            where pNombre = 'Brandon Goodwin'),
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
                where pNombre = 'Brandon Goodwin'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kevin Huerter',
                [dbo].[formatoFechaInt]('08-27-1998'),
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
            where pNombre = 'Kevin Huerter'),
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
                where pNombre = 'Kevin Huerter'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('DeAndre Hunter',
                [dbo].[formatoFechaInt]('12-02-1997'),
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
            where pNombre = 'DeAndre Hunter'),
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
                where pNombre = 'DeAndre Hunter'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Damian Jones',
                [dbo].[formatoFechaInt]('06-30-1995'),
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
            where pNombre = 'Damian Jones'),
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
                where pNombre = 'Damian Jones'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Alex Len',
                [dbo].[formatoFechaInt]('06-16-1993'),
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
            where pNombre = 'Alex Len'),
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
                where pNombre = 'Alex Len'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jabari Parker',
                [dbo].[formatoFechaInt]('03-15-1995'),
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
            where pNombre = 'Jabari Parker'),
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
                where pNombre = 'Jabari Parker'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Chandler Parsons',
                [dbo].[formatoFechaInt]('10-25-1988'),
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
            where pNombre = 'Chandler Parsons'),
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
                where pNombre = 'Chandler Parsons'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Cam Reddish',
                [dbo].[formatoFechaInt]('09-01-1999'),
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
            where pNombre = 'Cam Reddish'),
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
                where pNombre = 'Cam Reddish'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Evan Turner',
                [dbo].[formatoFechaInt]('10-27-1988'),
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
            where pNombre = 'Evan Turner'),
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
                where pNombre = 'Evan Turner'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tyrone Wallace',
                [dbo].[formatoFechaInt]('06-10-1994'),
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
            where pNombre = 'Tyrone Wallace'),
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
                where pNombre = 'Tyrone Wallace'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Trae Young',
                [dbo].[formatoFechaInt]('09-19-1998'),
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
            where pNombre = 'Trae Young'),
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
                where pNombre = 'Trae Young'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Boston Celtics', 00, @deporteId)
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
            where nombre = 'Boston Celtics')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jaylen Brown',
                [dbo].[formatoFechaInt]('10-24-1996'),
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
            where pNombre = 'Jaylen Brown'),
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
                where pNombre = 'Jaylen Brown'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Carsen Edwards',
                [dbo].[formatoFechaInt]('03-12-1998'),
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
            where pNombre = 'Carsen Edwards'),
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
                where pNombre = 'Carsen Edwards'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tacko Fall',
                [dbo].[formatoFechaInt]('12-10-1995'),
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
            where pNombre = 'Tacko Fall'),
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
                where pNombre = 'Tacko Fall'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Javonte Green',
                [dbo].[formatoFechaInt]('07-23-1993'),
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
            where pNombre = 'Javonte Green'),
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
                where pNombre = 'Javonte Green'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Gordon Hayward',
                [dbo].[formatoFechaInt]('03-23-1990'),
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
            where pNombre = 'Gordon Hayward'),
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
                where pNombre = 'Gordon Hayward'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Enes Kanter',
                [dbo].[formatoFechaInt]('05-20-1992'),
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
            where pNombre = 'Enes Kanter'),
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
                where pNombre = 'Enes Kanter'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Romeo Langford',
                [dbo].[formatoFechaInt]('10-25-1999'),
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
            where pNombre = 'Romeo Langford'),
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
                where pNombre = 'Romeo Langford'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Semi Ojeleye',
                [dbo].[formatoFechaInt]('12-05-1994'),
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
            where pNombre = 'Semi Ojeleye'),
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
                where pNombre = 'Semi Ojeleye'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Vincent Poirier',
                [dbo].[formatoFechaInt]('10-17-1993'),
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
            where pNombre = 'Vincent Poirier'),
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
                where pNombre = 'Vincent Poirier'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Marcus Smart',
                [dbo].[formatoFechaInt]('03-06-1994'),
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
            where pNombre = 'Marcus Smart'),
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
                where pNombre = 'Marcus Smart'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jayson Tatum',
                [dbo].[formatoFechaInt]('03-03-1998'),
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
            where pNombre = 'Jayson Tatum'),
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
                where pNombre = 'Jayson Tatum'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Daniel Theis',
                [dbo].[formatoFechaInt]('04-04-1992'),
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
            where pNombre = 'Daniel Theis'),
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
                where pNombre = 'Daniel Theis'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kemba Walker',
                [dbo].[formatoFechaInt]('05-08-1990'),
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
            where pNombre = 'Kemba Walker'),
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
                where pNombre = 'Kemba Walker'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Brad Wanamaker',
                [dbo].[formatoFechaInt]('07-25-1989'),
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
            where pNombre = 'Brad Wanamaker'),
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
                where pNombre = 'Brad Wanamaker'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tremont Waters',
                [dbo].[formatoFechaInt]('01-10-1998'),
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
            where pNombre = 'Tremont Waters'),
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
                where pNombre = 'Tremont Waters'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Grant Williams',
                [dbo].[formatoFechaInt]('11-30-1998'),
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
            where pNombre = 'Grant Williams'),
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
                where pNombre = 'Grant Williams'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Robert Williams III',
                [dbo].[formatoFechaInt]('10-17-1997'),
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
            where pNombre = 'Robert Williams III'),
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
                where pNombre = 'Robert Williams III'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Brooklyn Nets', 00, @deporteId)
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
            where nombre = 'Brooklyn Nets')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jarrett Allen',
                [dbo].[formatoFechaInt]('04-21-1998'),
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
            where pNombre = 'Jarrett Allen'),
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
                where pNombre = 'Jarrett Allen'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Wilson Chandler',
                [dbo].[formatoFechaInt]('05-10-1987'),
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
            where pNombre = 'Wilson Chandler'),
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
                where pNombre = 'Wilson Chandler'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Nicolas Claxton',
                [dbo].[formatoFechaInt]('04-17-1999'),
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
            where pNombre = 'Nicolas Claxton'),
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
                where pNombre = 'Nicolas Claxton'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Spencer Dinwiddie',
                [dbo].[formatoFechaInt]('04-06-1993'),
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
            where pNombre = 'Spencer Dinwiddie'),
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
                where pNombre = 'Spencer Dinwiddie'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kevin Durant',
                [dbo].[formatoFechaInt]('09-29-1988'),
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
            where pNombre = 'Kevin Durant'),
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
                where pNombre = 'Kevin Durant'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Henry Ellenson',
                [dbo].[formatoFechaInt]('01-13-1997'),
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
            where pNombre = 'Henry Ellenson'),
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
                where pNombre = 'Henry Ellenson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Joe Harris',
                [dbo].[formatoFechaInt]('09-06-1991'),
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
            where pNombre = 'Joe Harris'),
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
                where pNombre = 'Joe Harris'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kyrie Irving',
                [dbo].[formatoFechaInt]('03-23-1992'),
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
            where pNombre = 'Kyrie Irving'),
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
                where pNombre = 'Kyrie Irving'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('DeAndre Jordan',
                [dbo].[formatoFechaInt]('07-21-1988'),
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
            where pNombre = 'DeAndre Jordan'),
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
                where pNombre = 'DeAndre Jordan'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Rodions Kurucs',
                [dbo].[formatoFechaInt]('02-05-1998'),
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
            where pNombre = 'Rodions Kurucs'),
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
                where pNombre = 'Rodions Kurucs'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Caris LeVert',
                [dbo].[formatoFechaInt]('08-25-1994'),
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
            where pNombre = 'Caris LeVert'),
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
                where pNombre = 'Caris LeVert'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Timothe Luwawu-Cabarrot',
                [dbo].[formatoFechaInt]('05-09-1995'),
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
            where pNombre = 'Timothe Luwawu-Cabarrot'),
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
                where pNombre = 'Timothe Luwawu-Cabarrot'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dzanan Musa',
                [dbo].[formatoFechaInt]('05-08-1999'),
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
            where pNombre = 'Dzanan Musa'),
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
                where pNombre = 'Dzanan Musa'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('David Nwaba',
                [dbo].[formatoFechaInt]('01-14-1993'),
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
            where pNombre = 'David Nwaba'),
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
                where pNombre = 'David Nwaba'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Theo Pinson',
                [dbo].[formatoFechaInt]('11-05-1995'),
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
            where pNombre = 'Theo Pinson'),
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
                where pNombre = 'Theo Pinson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Taurean Prince',
                [dbo].[formatoFechaInt]('03-22-1994'),
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
            where pNombre = 'Taurean Prince'),
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
                where pNombre = 'Taurean Prince'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Iman Shumpert',
                [dbo].[formatoFechaInt]('06-26-1990'),
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
            where pNombre = 'Iman Shumpert'),
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
                where pNombre = 'Iman Shumpert'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Garrett Temple',
                [dbo].[formatoFechaInt]('05-08-1986'),
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
            where pNombre = 'Garrett Temple'),
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
                where pNombre = 'Garrett Temple'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Charlotte Hornets', 00, @deporteId)
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
            where nombre = 'Charlotte Hornets')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dwayne Bacon',
                [dbo].[formatoFechaInt]('08-30-1995'),
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
            where pNombre = 'Dwayne Bacon'),
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
                where pNombre = 'Dwayne Bacon'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Nicolas Batum',
                [dbo].[formatoFechaInt]('12-14-1988'),
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
            where pNombre = 'Nicolas Batum'),
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
                where pNombre = 'Nicolas Batum'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Bismack Biyombo',
                [dbo].[formatoFechaInt]('08-28-1992'),
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
            where pNombre = 'Bismack Biyombo'),
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
                where pNombre = 'Bismack Biyombo'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Miles Bridges',
                [dbo].[formatoFechaInt]('03-21-1998'),
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
            where pNombre = 'Miles Bridges'),
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
                where pNombre = 'Miles Bridges'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Robert Franks',
                [dbo].[formatoFechaInt]('12-18-1996'),
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
            where pNombre = 'Robert Franks'),
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
                where pNombre = 'Robert Franks'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Devonte Graham',
                [dbo].[formatoFechaInt]('02-22-1995'),
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
            where pNombre = 'Devonte Graham'),
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
                where pNombre = 'Devonte Graham'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Willy Hernangomez',
                [dbo].[formatoFechaInt]('05-27-1994'),
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
            where pNombre = 'Willy Hernangomez'),
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
                where pNombre = 'Willy Hernangomez'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Michael Kidd-Gilchrist',
                [dbo].[formatoFechaInt]('09-26-1993'),
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
            where pNombre = 'Michael Kidd-Gilchrist'),
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
                where pNombre = 'Michael Kidd-Gilchrist'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Caleb Martin',
                [dbo].[formatoFechaInt]('09-28-1995'),
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
            where pNombre = 'Caleb Martin'),
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
                where pNombre = 'Caleb Martin'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Cody Martin',
                [dbo].[formatoFechaInt]('09-28-1995'),
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
            where pNombre = 'Cody Martin'),
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
                where pNombre = 'Cody Martin'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jalen McDaniels',
                [dbo].[formatoFechaInt]('01-31-1998'),
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
            where pNombre = 'Jalen McDaniels'),
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
                where pNombre = 'Jalen McDaniels'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Malik Monk',
                [dbo].[formatoFechaInt]('02-04-1998'),
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
            where pNombre = 'Malik Monk'),
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
                where pNombre = 'Malik Monk'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Terry Rozier',
                [dbo].[formatoFechaInt]('03-17-1994'),
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
            where pNombre = 'Terry Rozier'),
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
                where pNombre = 'Terry Rozier'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kobi Simmons',
                [dbo].[formatoFechaInt]('07-04-1997'),
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
            where pNombre = 'Kobi Simmons'),
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
                where pNombre = 'Kobi Simmons'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('P.J. Washington',
                [dbo].[formatoFechaInt]('08-23-1998'),
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
            where pNombre = 'P.J. Washington'),
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
                where pNombre = 'P.J. Washington'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Marvin Williams',
                [dbo].[formatoFechaInt]('06-19-1986'),
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
            where pNombre = 'Marvin Williams'),
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
                where pNombre = 'Marvin Williams'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Cody Zeller',
                [dbo].[formatoFechaInt]('10-05-1992'),
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
            where pNombre = 'Cody Zeller'),
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
                where pNombre = 'Cody Zeller'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Chicago Bulls', 00, @deporteId)
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
            where nombre = 'Chicago Bulls')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ryan Arcidiacono',
                [dbo].[formatoFechaInt]('03-26-1994'),
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
            where pNombre = 'Ryan Arcidiacono'),
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
                where pNombre = 'Ryan Arcidiacono'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Wendell Carter Jr.',
                [dbo].[formatoFechaInt]('04-16-1999'),
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
            where pNombre = 'Wendell Carter Jr.'),
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
                where pNombre = 'Wendell Carter Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kris Dunn',
                [dbo].[formatoFechaInt]('03-18-1994'),
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
            where pNombre = 'Kris Dunn'),
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
                where pNombre = 'Kris Dunn'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Cristiano Felicio',
                [dbo].[formatoFechaInt]('07-07-1992'),
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
            where pNombre = 'Cristiano Felicio'),
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
                where pNombre = 'Cristiano Felicio'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Daniel Gafford',
                [dbo].[formatoFechaInt]('10-01-1998'),
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
            where pNombre = 'Daniel Gafford'),
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
                where pNombre = 'Daniel Gafford'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Shaquille Harrison',
                [dbo].[formatoFechaInt]('10-06-1993'),
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
            where pNombre = 'Shaquille Harrison'),
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
                where pNombre = 'Shaquille Harrison'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Chandler Hutchison',
                [dbo].[formatoFechaInt]('04-26-1996'),
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
            where pNombre = 'Chandler Hutchison'),
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
                where pNombre = 'Chandler Hutchison'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Luke Kornet',
                [dbo].[formatoFechaInt]('07-15-1995'),
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
            where pNombre = 'Luke Kornet'),
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
                where pNombre = 'Luke Kornet'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Zach LaVine',
                [dbo].[formatoFechaInt]('03-10-1995'),
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
            where pNombre = 'Zach LaVine'),
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
                where pNombre = 'Zach LaVine'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Lauri Markkanen',
                [dbo].[formatoFechaInt]('05-22-1997'),
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
            where pNombre = 'Lauri Markkanen'),
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
                where pNombre = 'Lauri Markkanen'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Adam Mokoka',
                [dbo].[formatoFechaInt]('07-18-1998'),
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
            where pNombre = 'Adam Mokoka'),
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
                where pNombre = 'Adam Mokoka'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Otto Porter Jr.',
                [dbo].[formatoFechaInt]('06-03-1993'),
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
            where pNombre = 'Otto Porter Jr.'),
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
                where pNombre = 'Otto Porter Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tomas Satoransky',
                [dbo].[formatoFechaInt]('10-30-1991'),
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
            where pNombre = 'Tomas Satoransky'),
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
                where pNombre = 'Tomas Satoransky'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Max Strus',
                [dbo].[formatoFechaInt]('03-28-1996'),
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
            where pNombre = 'Max Strus'),
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
                where pNombre = 'Max Strus'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Denzel Valentine',
                [dbo].[formatoFechaInt]('11-16-1993'),
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
            where pNombre = 'Denzel Valentine'),
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
                where pNombre = 'Denzel Valentine'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Coby White',
                [dbo].[formatoFechaInt]('02-16-2000'),
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
            where pNombre = 'Coby White'),
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
                where pNombre = 'Coby White'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Thaddeus Young',
                [dbo].[formatoFechaInt]('06-21-1988'),
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
            where pNombre = 'Thaddeus Young'),
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
                where pNombre = 'Thaddeus Young'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Cleveland Cavaliers', 00, @deporteId)
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
            where nombre = 'Cleveland Cavaliers')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jordan Clarkson',
                [dbo].[formatoFechaInt]('06-07-1992'),
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
            where pNombre = 'Jordan Clarkson'),
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
                where pNombre = 'Jordan Clarkson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tyler Cook',
                [dbo].[formatoFechaInt]('09-23-1997'),
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
            where pNombre = 'Tyler Cook'),
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
                where pNombre = 'Tyler Cook'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Matthew Dellavedova',
                [dbo].[formatoFechaInt]('09-08-1990'),
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
            where pNombre = 'Matthew Dellavedova'),
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
                where pNombre = 'Matthew Dellavedova'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Darius Garland',
                [dbo].[formatoFechaInt]('01-26-2000'),
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
            where pNombre = 'Darius Garland'),
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
                where pNombre = 'Darius Garland'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('John Henson',
                [dbo].[formatoFechaInt]('12-28-1990'),
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
            where pNombre = 'John Henson'),
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
                where pNombre = 'John Henson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Brandon Knight',
                [dbo].[formatoFechaInt]('12-02-1991'),
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
            where pNombre = 'Brandon Knight'),
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
                where pNombre = 'Brandon Knight'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kevin Love',
                [dbo].[formatoFechaInt]('09-07-1988'),
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
            where pNombre = 'Kevin Love'),
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
                where pNombre = 'Kevin Love'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Alfonzo McKinnie',
                [dbo].[formatoFechaInt]('09-17-1992'),
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
            where pNombre = 'Alfonzo McKinnie'),
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
                where pNombre = 'Alfonzo McKinnie'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Larry Nance Jr.',
                [dbo].[formatoFechaInt]('01-01-1993'),
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
            where pNombre = 'Larry Nance Jr.'),
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
                where pNombre = 'Larry Nance Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Cedi Osman',
                [dbo].[formatoFechaInt]('04-08-1995'),
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
            where pNombre = 'Cedi Osman'),
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
                where pNombre = 'Cedi Osman'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kevin Porter Jr.',
                [dbo].[formatoFechaInt]('05-04-2000'),
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
            where pNombre = 'Kevin Porter Jr.'),
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
                where pNombre = 'Kevin Porter Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Collin Sexton',
                [dbo].[formatoFechaInt]('01-04-1999'),
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
            where pNombre = 'Collin Sexton'),
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
                where pNombre = 'Collin Sexton'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tristan Thompson',
                [dbo].[formatoFechaInt]('03-13-1991'),
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
            where pNombre = 'Tristan Thompson'),
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
                where pNombre = 'Tristan Thompson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dean Wade',
                [dbo].[formatoFechaInt]('11-20-1996'),
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
            where pNombre = 'Dean Wade'),
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
                where pNombre = 'Dean Wade'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dylan Windler',
                [dbo].[formatoFechaInt]('09-22-1996'),
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
            where pNombre = 'Dylan Windler'),
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
                where pNombre = 'Dylan Windler'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ante Zizic',
                [dbo].[formatoFechaInt]('01-04-1997'),
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
            where pNombre = 'Ante Zizic'),
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
                where pNombre = 'Ante Zizic'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Dallas Mavericks', 00, @deporteId)
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
            where nombre = 'Dallas Mavericks')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('J.J. Barea',
                [dbo].[formatoFechaInt]('06-26-1984'),
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
            where pNombre = 'J.J. Barea'),
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
                where pNombre = 'J.J. Barea'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ryan Broekhoff',
                [dbo].[formatoFechaInt]('08-23-1990'),
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
            where pNombre = 'Ryan Broekhoff'),
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
                where pNombre = 'Ryan Broekhoff'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jalen Brunson',
                [dbo].[formatoFechaInt]('08-31-1996'),
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
            where pNombre = 'Jalen Brunson'),
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
                where pNombre = 'Jalen Brunson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Antonius Cleveland',
                [dbo].[formatoFechaInt]('02-02-1994'),
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
            where pNombre = 'Antonius Cleveland'),
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
                where pNombre = 'Antonius Cleveland'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Seth Curry',
                [dbo].[formatoFechaInt]('08-23-1990'),
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
            where pNombre = 'Seth Curry'),
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
                where pNombre = 'Seth Curry'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Luka Doncic',
                [dbo].[formatoFechaInt]('02-28-1999'),
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
            where pNombre = 'Luka Doncic'),
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
                where pNombre = 'Luka Doncic'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dorian Finney-Smith',
                [dbo].[formatoFechaInt]('05-04-1993'),
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
            where pNombre = 'Dorian Finney-Smith'),
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
                where pNombre = 'Dorian Finney-Smith'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tim Hardaway Jr.',
                [dbo].[formatoFechaInt]('03-16-1992'),
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
            where pNombre = 'Tim Hardaway Jr.'),
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
                where pNombre = 'Tim Hardaway Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Justin Jackson',
                [dbo].[formatoFechaInt]('03-28-1995'),
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
            where pNombre = 'Justin Jackson'),
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
                where pNombre = 'Justin Jackson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Maxi Kleber',
                [dbo].[formatoFechaInt]('01-29-1992'),
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
            where pNombre = 'Maxi Kleber'),
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
                where pNombre = 'Maxi Kleber'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Courtney Lee',
                [dbo].[formatoFechaInt]('10-03-1985'),
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
            where pNombre = 'Courtney Lee'),
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
                where pNombre = 'Courtney Lee'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Boban Marjanovic',
                [dbo].[formatoFechaInt]('08-15-1988'),
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
            where pNombre = 'Boban Marjanovic'),
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
                where pNombre = 'Boban Marjanovic'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kristaps Porzingis',
                [dbo].[formatoFechaInt]('08-02-1995'),
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
            where pNombre = 'Kristaps Porzingis'),
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
                where pNombre = 'Kristaps Porzingis'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dwight Powell',
                [dbo].[formatoFechaInt]('07-20-1991'),
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
            where pNombre = 'Dwight Powell'),
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
                where pNombre = 'Dwight Powell'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Josh Reaves',
                [dbo].[formatoFechaInt]('06-04-1997'),
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
            where pNombre = 'Josh Reaves'),
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
                where pNombre = 'Josh Reaves'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Isaiah Roby',
                [dbo].[formatoFechaInt]('02-03-1998'),
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
            where pNombre = 'Isaiah Roby'),
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
                where pNombre = 'Isaiah Roby'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Delon Wright',
                [dbo].[formatoFechaInt]('04-26-1992'),
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
            where pNombre = 'Delon Wright'),
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
                where pNombre = 'Delon Wright'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Denver Nuggets', 00, @deporteId)
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
            where nombre = 'Denver Nuggets')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Will Barton',
                [dbo].[formatoFechaInt]('01-06-1991'),
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
            where pNombre = 'Will Barton'),
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
                where pNombre = 'Will Barton'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Malik Beasley',
                [dbo].[formatoFechaInt]('11-26-1996'),
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
            where pNombre = 'Malik Beasley'),
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
                where pNombre = 'Malik Beasley'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Bol Bol',
                [dbo].[formatoFechaInt]('11-16-1999'),
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
            where pNombre = 'Bol Bol'),
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
                where pNombre = 'Bol Bol'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Vlatko Cancar',
                [dbo].[formatoFechaInt]('04-10-1997'),
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
            where pNombre = 'Vlatko Cancar'),
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
                where pNombre = 'Vlatko Cancar'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Torrey Craig',
                [dbo].[formatoFechaInt]('12-19-1990'),
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
            where pNombre = 'Torrey Craig'),
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
                where pNombre = 'Torrey Craig'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('PJ Dozier',
                [dbo].[formatoFechaInt]('10-25-1996'),
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
            where pNombre = 'PJ Dozier'),
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
                where pNombre = 'PJ Dozier'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jerami Grant',
                [dbo].[formatoFechaInt]('03-12-1994'),
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
            where pNombre = 'Jerami Grant'),
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
                where pNombre = 'Jerami Grant'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Gary Harris',
                [dbo].[formatoFechaInt]('09-14-1994'),
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
            where pNombre = 'Gary Harris'),
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
                where pNombre = 'Gary Harris'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Juancho Hernangomez',
                [dbo].[formatoFechaInt]('09-28-1995'),
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
            where pNombre = 'Juancho Hernangomez'),
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
                where pNombre = 'Juancho Hernangomez'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Nikola Jokic',
                [dbo].[formatoFechaInt]('02-19-1995'),
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
            where pNombre = 'Nikola Jokic'),
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
                where pNombre = 'Nikola Jokic'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Paul Millsap',
                [dbo].[formatoFechaInt]('02-10-1985'),
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
            where pNombre = 'Paul Millsap'),
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
                where pNombre = 'Paul Millsap'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Monte Morris',
                [dbo].[formatoFechaInt]('06-27-1995'),
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
            where pNombre = 'Monte Morris'),
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
                where pNombre = 'Monte Morris'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jamal Murray',
                [dbo].[formatoFechaInt]('02-23-1997'),
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
            where pNombre = 'Jamal Murray'),
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
                where pNombre = 'Jamal Murray'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Mason Plumlee',
                [dbo].[formatoFechaInt]('03-05-1990'),
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
            where pNombre = 'Mason Plumlee'),
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
                where pNombre = 'Mason Plumlee'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Michael Porter Jr.',
                [dbo].[formatoFechaInt]('06-29-1998'),
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
            where pNombre = 'Michael Porter Jr.'),
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
                where pNombre = 'Michael Porter Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jarred Vanderbilt',
                [dbo].[formatoFechaInt]('04-03-1999'),
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
            where pNombre = 'Jarred Vanderbilt'),
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
                where pNombre = 'Jarred Vanderbilt'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Detroit Pistons', 00, @deporteId)
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
            where nombre = 'Detroit Pistons')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jordan Bone',
                [dbo].[formatoFechaInt]('11-05-1997'),
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
            where pNombre = 'Jordan Bone'),
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
                where pNombre = 'Jordan Bone'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Bruce Brown',
                [dbo].[formatoFechaInt]('08-15-1996'),
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
            where pNombre = 'Bruce Brown'),
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
                where pNombre = 'Bruce Brown'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Sekou Doumbouya',
                [dbo].[formatoFechaInt]('12-23-2000'),
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
            where pNombre = 'Sekou Doumbouya'),
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
                where pNombre = 'Sekou Doumbouya'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Andre Drummond',
                [dbo].[formatoFechaInt]('08-10-1993'),
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
            where pNombre = 'Andre Drummond'),
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
                where pNombre = 'Andre Drummond'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tim Frazier',
                [dbo].[formatoFechaInt]('11-01-1990'),
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
            where pNombre = 'Tim Frazier'),
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
                where pNombre = 'Tim Frazier'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Langston Galloway',
                [dbo].[formatoFechaInt]('12-09-1991'),
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
            where pNombre = 'Langston Galloway'),
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
                where pNombre = 'Langston Galloway'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Blake Griffin',
                [dbo].[formatoFechaInt]('03-16-1989'),
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
            where pNombre = 'Blake Griffin'),
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
                where pNombre = 'Blake Griffin'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Reggie Jackson',
                [dbo].[formatoFechaInt]('04-16-1990'),
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
            where pNombre = 'Reggie Jackson'),
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
                where pNombre = 'Reggie Jackson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Luke Kennard',
                [dbo].[formatoFechaInt]('06-24-1996'),
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
            where pNombre = 'Luke Kennard'),
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
                where pNombre = 'Luke Kennard'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Louis King',
                [dbo].[formatoFechaInt]('04-06-1999'),
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
            where pNombre = 'Louis King'),
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
                where pNombre = 'Louis King'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Thon Maker',
                [dbo].[formatoFechaInt]('02-25-1997'),
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
            where pNombre = 'Thon Maker'),
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
                where pNombre = 'Thon Maker'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Markieff Morris',
                [dbo].[formatoFechaInt]('09-02-1989'),
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
            where pNombre = 'Markieff Morris'),
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
                where pNombre = 'Markieff Morris'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Svi Mykhailiuk',
                [dbo].[formatoFechaInt]('06-10-1997'),
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
            where pNombre = 'Svi Mykhailiuk'),
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
                where pNombre = 'Svi Mykhailiuk'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Derrick Rose',
                [dbo].[formatoFechaInt]('10-04-1988'),
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
            where pNombre = 'Derrick Rose'),
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
                where pNombre = 'Derrick Rose'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tony Snell',
                [dbo].[formatoFechaInt]('11-10-1991'),
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
            where pNombre = 'Tony Snell'),
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
                where pNombre = 'Tony Snell'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Khyri Thomas',
                [dbo].[formatoFechaInt]('05-08-1996'),
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
            where pNombre = 'Khyri Thomas'),
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
                where pNombre = 'Khyri Thomas'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Christian Wood',
                [dbo].[formatoFechaInt]('09-27-1995'),
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
            where pNombre = 'Christian Wood'),
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
                where pNombre = 'Christian Wood'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Golden State Warriors', 00, @deporteId)
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
            where nombre = 'Golden State Warriors')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ky Bowman',
                [dbo].[formatoFechaInt]('06-16-1997'),
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
            where pNombre = 'Ky Bowman'),
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
                where pNombre = 'Ky Bowman'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Alec Burks',
                [dbo].[formatoFechaInt]('07-20-1991'),
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
            where pNombre = 'Alec Burks'),
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
                where pNombre = 'Alec Burks'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Willie Cauley-Stein',
                [dbo].[formatoFechaInt]('08-18-1993'),
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
            where pNombre = 'Willie Cauley-Stein'),
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
                where pNombre = 'Willie Cauley-Stein'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Marquese Chriss',
                [dbo].[formatoFechaInt]('07-02-1997'),
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
            where pNombre = 'Marquese Chriss'),
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
                where pNombre = 'Marquese Chriss'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Stephen Curry',
                [dbo].[formatoFechaInt]('03-14-1988'),
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
            where pNombre = 'Stephen Curry'),
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
                where pNombre = 'Stephen Curry'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jacob Evans',
                [dbo].[formatoFechaInt]('06-18-1997'),
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
            where pNombre = 'Jacob Evans'),
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
                where pNombre = 'Jacob Evans'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Draymond Green',
                [dbo].[formatoFechaInt]('03-04-1990'),
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
            where pNombre = 'Draymond Green'),
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
                where pNombre = 'Draymond Green'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Damion Lee',
                [dbo].[formatoFechaInt]('10-21-1992'),
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
            where pNombre = 'Damion Lee'),
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
                where pNombre = 'Damion Lee'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kevon Looney',
                [dbo].[formatoFechaInt]('02-06-1996'),
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
            where pNombre = 'Kevon Looney'),
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
                where pNombre = 'Kevon Looney'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Eric Paschall',
                [dbo].[formatoFechaInt]('11-04-1996'),
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
            where pNombre = 'Eric Paschall'),
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
                where pNombre = 'Eric Paschall'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jordan Poole',
                [dbo].[formatoFechaInt]('06-19-1999'),
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
            where pNombre = 'Jordan Poole'),
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
                where pNombre = 'Jordan Poole'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Glenn Robinson III',
                [dbo].[formatoFechaInt]('01-08-1994'),
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
            where pNombre = 'Glenn Robinson III'),
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
                where pNombre = 'Glenn Robinson III'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('DAngelo Russell',
                [dbo].[formatoFechaInt]('02-23-1996'),
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
            where pNombre = 'DAngelo Russell'),
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
                where pNombre = 'DAngelo Russell'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Alen Smailagic',
                [dbo].[formatoFechaInt]('08-18-2000'),
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
            where pNombre = 'Alen Smailagic'),
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
                where pNombre = 'Alen Smailagic'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Omari Spellman',
                [dbo].[formatoFechaInt]('07-21-1997'),
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
            where pNombre = 'Omari Spellman'),
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
                where pNombre = 'Omari Spellman'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Klay Thompson',
                [dbo].[formatoFechaInt]('02-08-1990'),
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
            where pNombre = 'Klay Thompson'),
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
                where pNombre = 'Klay Thompson'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Houston Rockets', 00, @deporteId)
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
            where nombre = 'Houston Rockets')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Clint Capela',
                [dbo].[formatoFechaInt]('05-18-1994'),
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
            where pNombre = 'Clint Capela'),
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
                where pNombre = 'Clint Capela'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tyson Chandler',
                [dbo].[formatoFechaInt]('10-02-1982'),
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
            where pNombre = 'Tyson Chandler'),
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
                where pNombre = 'Tyson Chandler'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Gary Clark',
                [dbo].[formatoFechaInt]('11-16-1994'),
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
            where pNombre = 'Gary Clark'),
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
                where pNombre = 'Gary Clark'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Chris Clemons',
                [dbo].[formatoFechaInt]('07-23-1997'),
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
            where pNombre = 'Chris Clemons'),
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
                where pNombre = 'Chris Clemons'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Michael Frazier',
                [dbo].[formatoFechaInt]('03-08-1994'),
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
            where pNombre = 'Michael Frazier'),
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
                where pNombre = 'Michael Frazier'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Eric Gordon',
                [dbo].[formatoFechaInt]('12-25-1988'),
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
            where pNombre = 'Eric Gordon'),
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
                where pNombre = 'Eric Gordon'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Gerald Green',
                [dbo].[formatoFechaInt]('01-26-1986'),
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
            where pNombre = 'Gerald Green'),
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
                where pNombre = 'Gerald Green'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('James Harden',
                [dbo].[formatoFechaInt]('08-26-1989'),
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
            where pNombre = 'James Harden'),
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
                where pNombre = 'James Harden'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Isaiah Hartenstein',
                [dbo].[formatoFechaInt]('05-05-1998'),
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
            where pNombre = 'Isaiah Hartenstein'),
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
                where pNombre = 'Isaiah Hartenstein'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Danuel House Jr.',
                [dbo].[formatoFechaInt]('06-07-1993'),
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
            where pNombre = 'Danuel House Jr.'),
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
                where pNombre = 'Danuel House Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ben McLemore',
                [dbo].[formatoFechaInt]('02-11-1993'),
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
            where pNombre = 'Ben McLemore'),
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
                where pNombre = 'Ben McLemore'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Nene ',
                [dbo].[formatoFechaInt]('09-13-1982'),
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
            where pNombre = 'Nene '),
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
                where pNombre = 'Nene '
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Austin Rivers',
                [dbo].[formatoFechaInt]('08-01-1992'),
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
            where pNombre = 'Austin Rivers'),
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
                where pNombre = 'Austin Rivers'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Thabo Sefolosha',
                [dbo].[formatoFechaInt]('05-02-1984'),
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
            where pNombre = 'Thabo Sefolosha'),
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
                where pNombre = 'Thabo Sefolosha'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('P.J. Tucker',
                [dbo].[formatoFechaInt]('05-05-1985'),
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
            where pNombre = 'P.J. Tucker'),
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
                where pNombre = 'P.J. Tucker'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Russell Westbrook',
                [dbo].[formatoFechaInt]('11-12-1988'),
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
            where pNombre = 'Russell Westbrook'),
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
                where pNombre = 'Russell Westbrook'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Indiana Pacers', 00, @deporteId)
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
            where nombre = 'Indiana Pacers')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Goga Bitadze',
                [dbo].[formatoFechaInt]('07-20-1999'),
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
            where pNombre = 'Goga Bitadze'),
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
                where pNombre = 'Goga Bitadze'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Brian Bowen II',
                [dbo].[formatoFechaInt]('10-02-1998'),
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
            where pNombre = 'Brian Bowen II'),
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
                where pNombre = 'Brian Bowen II'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Malcolm Brogdon',
                [dbo].[formatoFechaInt]('12-11-1992'),
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
            where pNombre = 'Malcolm Brogdon'),
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
                where pNombre = 'Malcolm Brogdon'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Aaron Holiday',
                [dbo].[formatoFechaInt]('09-30-1996'),
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
            where pNombre = 'Aaron Holiday'),
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
                where pNombre = 'Aaron Holiday'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Justin Holiday',
                [dbo].[formatoFechaInt]('04-05-1989'),
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
            where pNombre = 'Justin Holiday'),
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
                where pNombre = 'Justin Holiday'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Alize Johnson',
                [dbo].[formatoFechaInt]('04-22-1996'),
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
            where pNombre = 'Alize Johnson'),
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
                where pNombre = 'Alize Johnson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jeremy Lamb',
                [dbo].[formatoFechaInt]('05-30-1992'),
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
            where pNombre = 'Jeremy Lamb'),
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
                where pNombre = 'Jeremy Lamb'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('TJ Leaf',
                [dbo].[formatoFechaInt]('04-30-1997'),
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
            where pNombre = 'TJ Leaf'),
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
                where pNombre = 'TJ Leaf'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('T.J. McConnell',
                [dbo].[formatoFechaInt]('03-25-1992'),
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
            where pNombre = 'T.J. McConnell'),
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
                where pNombre = 'T.J. McConnell'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Doug McDermott',
                [dbo].[formatoFechaInt]('01-03-1992'),
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
            where pNombre = 'Doug McDermott'),
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
                where pNombre = 'Doug McDermott'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Naz Mitrou-Long',
                [dbo].[formatoFechaInt]('08-03-1993'),
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
            where pNombre = 'Naz Mitrou-Long'),
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
                where pNombre = 'Naz Mitrou-Long'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Victor Oladipo',
                [dbo].[formatoFechaInt]('05-04-1992'),
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
            where pNombre = 'Victor Oladipo'),
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
                where pNombre = 'Victor Oladipo'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Domantas Sabonis',
                [dbo].[formatoFechaInt]('05-03-1996'),
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
            where pNombre = 'Domantas Sabonis'),
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
                where pNombre = 'Domantas Sabonis'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('JaKarr Sampson',
                [dbo].[formatoFechaInt]('03-20-1993'),
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
            where pNombre = 'JaKarr Sampson'),
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
                where pNombre = 'JaKarr Sampson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Edmond Sumner',
                [dbo].[formatoFechaInt]('12-31-1995'),
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
            where pNombre = 'Edmond Sumner'),
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
                where pNombre = 'Edmond Sumner'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Myles Turner',
                [dbo].[formatoFechaInt]('03-24-1996'),
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
            where pNombre = 'Myles Turner'),
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
                where pNombre = 'Myles Turner'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('T.J. Warren',
                [dbo].[formatoFechaInt]('09-05-1993'),
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
            where pNombre = 'T.J. Warren'),
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
                where pNombre = 'T.J. Warren'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('LA Clippers', 00, @deporteId)
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
            where nombre = 'LA Clippers')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Patrick Beverley',
                [dbo].[formatoFechaInt]('07-12-1988'),
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
            where pNombre = 'Patrick Beverley'),
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
                where pNombre = 'Patrick Beverley'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Amir Coffey',
                [dbo].[formatoFechaInt]('06-17-1997'),
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
            where pNombre = 'Amir Coffey'),
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
                where pNombre = 'Amir Coffey'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Paul George',
                [dbo].[formatoFechaInt]('05-02-1990'),
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
            where pNombre = 'Paul George'),
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
                where pNombre = 'Paul George'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('JaMychal Green',
                [dbo].[formatoFechaInt]('06-21-1990'),
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
            where pNombre = 'JaMychal Green'),
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
                where pNombre = 'JaMychal Green'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Maurice Harkless',
                [dbo].[formatoFechaInt]('05-11-1993'),
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
            where pNombre = 'Maurice Harkless'),
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
                where pNombre = 'Maurice Harkless'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Montrezl Harrell',
                [dbo].[formatoFechaInt]('01-26-1994'),
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
            where pNombre = 'Montrezl Harrell'),
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
                where pNombre = 'Montrezl Harrell'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Mfiondu Kabengele',
                [dbo].[formatoFechaInt]('08-14-1997'),
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
            where pNombre = 'Mfiondu Kabengele'),
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
                where pNombre = 'Mfiondu Kabengele'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kawhi Leonard',
                [dbo].[formatoFechaInt]('06-29-1991'),
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
            where pNombre = 'Kawhi Leonard'),
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
                where pNombre = 'Kawhi Leonard'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Terance Mann',
                [dbo].[formatoFechaInt]('10-18-1996'),
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
            where pNombre = 'Terance Mann'),
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
                where pNombre = 'Terance Mann'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Rodney McGruder',
                [dbo].[formatoFechaInt]('07-29-1991'),
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
            where pNombre = 'Rodney McGruder'),
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
                where pNombre = 'Rodney McGruder'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Johnathan Motley',
                [dbo].[formatoFechaInt]('05-04-1995'),
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
            where pNombre = 'Johnathan Motley'),
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
                where pNombre = 'Johnathan Motley'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Patrick Patterson',
                [dbo].[formatoFechaInt]('03-14-1989'),
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
            where pNombre = 'Patrick Patterson'),
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
                where pNombre = 'Patrick Patterson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jerome Robinson',
                [dbo].[formatoFechaInt]('02-22-1997'),
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
            where pNombre = 'Jerome Robinson'),
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
                where pNombre = 'Jerome Robinson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Landry Shamet',
                [dbo].[formatoFechaInt]('03-13-1997'),
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
            where pNombre = 'Landry Shamet'),
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
                where pNombre = 'Landry Shamet'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Derrick Walton Jr.',
                [dbo].[formatoFechaInt]('04-03-1995'),
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
            where pNombre = 'Derrick Walton Jr.'),
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
                where pNombre = 'Derrick Walton Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Lou Williams',
                [dbo].[formatoFechaInt]('10-27-1986'),
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
            where pNombre = 'Lou Williams'),
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
                where pNombre = 'Lou Williams'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ivica Zubac',
                [dbo].[formatoFechaInt]('03-18-1997'),
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
            where pNombre = 'Ivica Zubac'),
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
                where pNombre = 'Ivica Zubac'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Los Angeles Lakers', 00, @deporteId)
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
            where nombre = 'Los Angeles Lakers')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kostas Antetokounmpo',
                [dbo].[formatoFechaInt]('11-20-1997'),
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
            where pNombre = 'Kostas Antetokounmpo'),
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
                where pNombre = 'Kostas Antetokounmpo'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Avery Bradley',
                [dbo].[formatoFechaInt]('11-26-1990'),
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
            where pNombre = 'Avery Bradley'),
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
                where pNombre = 'Avery Bradley'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kentavious Caldwell-Pope',
                [dbo].[formatoFechaInt]('02-18-1993'),
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
            where pNombre = 'Kentavious Caldwell-Pope'),
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
                where pNombre = 'Kentavious Caldwell-Pope'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Alex Caruso',
                [dbo].[formatoFechaInt]('02-28-1994'),
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
            where pNombre = 'Alex Caruso'),
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
                where pNombre = 'Alex Caruso'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Quinn Cook',
                [dbo].[formatoFechaInt]('03-23-1993'),
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
            where pNombre = 'Quinn Cook'),
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
                where pNombre = 'Quinn Cook'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('DeMarcus Cousins',
                [dbo].[formatoFechaInt]('08-13-1990'),
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
            where pNombre = 'DeMarcus Cousins'),
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
                where pNombre = 'DeMarcus Cousins'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Troy Daniels',
                [dbo].[formatoFechaInt]('07-15-1991'),
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
            where pNombre = 'Troy Daniels'),
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
                where pNombre = 'Troy Daniels'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Anthony Davis',
                [dbo].[formatoFechaInt]('03-11-1993'),
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
            where pNombre = 'Anthony Davis'),
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
                where pNombre = 'Anthony Davis'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jared Dudley',
                [dbo].[formatoFechaInt]('07-10-1985'),
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
            where pNombre = 'Jared Dudley'),
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
                where pNombre = 'Jared Dudley'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Danny Green',
                [dbo].[formatoFechaInt]('06-22-1987'),
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
            where pNombre = 'Danny Green'),
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
                where pNombre = 'Danny Green'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Talen Horton-Tucker',
                [dbo].[formatoFechaInt]('11-25-2000'),
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
            where pNombre = 'Talen Horton-Tucker'),
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
                where pNombre = 'Talen Horton-Tucker'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dwight Howard',
                [dbo].[formatoFechaInt]('12-08-1985'),
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
            where pNombre = 'Dwight Howard'),
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
                where pNombre = 'Dwight Howard'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('LeBron James',
                [dbo].[formatoFechaInt]('12-30-1984'),
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
            where pNombre = 'LeBron James'),
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
                where pNombre = 'LeBron James'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kyle Kuzma',
                [dbo].[formatoFechaInt]('07-24-1995'),
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
            where pNombre = 'Kyle Kuzma'),
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
                where pNombre = 'Kyle Kuzma'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('JaVale McGee',
                [dbo].[formatoFechaInt]('01-19-1988'),
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
            where pNombre = 'JaVale McGee'),
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
                where pNombre = 'JaVale McGee'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Zach Norvell Jr.',
                [dbo].[formatoFechaInt]('12-09-1997'),
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
            where pNombre = 'Zach Norvell Jr.'),
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
                where pNombre = 'Zach Norvell Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Rajon Rondo',
                [dbo].[formatoFechaInt]('02-22-1986'),
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
            where pNombre = 'Rajon Rondo'),
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
                where pNombre = 'Rajon Rondo'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Memphis Grizzlies', 00, @deporteId)
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
            where nombre = 'Memphis Grizzlies')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Grayson Allen',
                [dbo].[formatoFechaInt]('10-08-1995'),
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
            where pNombre = 'Grayson Allen'),
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
                where pNombre = 'Grayson Allen'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kyle Anderson',
                [dbo].[formatoFechaInt]('09-20-1993'),
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
            where pNombre = 'Kyle Anderson'),
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
                where pNombre = 'Kyle Anderson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dillon Brooks',
                [dbo].[formatoFechaInt]('01-22-1996'),
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
            where pNombre = 'Dillon Brooks'),
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
                where pNombre = 'Dillon Brooks'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Bruno Caboclo',
                [dbo].[formatoFechaInt]('09-21-1995'),
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
            where pNombre = 'Bruno Caboclo'),
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
                where pNombre = 'Bruno Caboclo'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Brandon Clarke',
                [dbo].[formatoFechaInt]('09-19-1996'),
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
            where pNombre = 'Brandon Clarke'),
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
                where pNombre = 'Brandon Clarke'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jae Crowder',
                [dbo].[formatoFechaInt]('07-06-1990'),
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
            where pNombre = 'Jae Crowder'),
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
                where pNombre = 'Jae Crowder'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Marko Guduric',
                [dbo].[formatoFechaInt]('03-08-1995'),
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
            where pNombre = 'Marko Guduric'),
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
                where pNombre = 'Marko Guduric'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Solomon Hill',
                [dbo].[formatoFechaInt]('03-18-1991'),
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
            where pNombre = 'Solomon Hill'),
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
                where pNombre = 'Solomon Hill'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Andre Iguodala',
                [dbo].[formatoFechaInt]('01-28-1984'),
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
            where pNombre = 'Andre Iguodala'),
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
                where pNombre = 'Andre Iguodala'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Josh Jackson',
                [dbo].[formatoFechaInt]('02-10-1997'),
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
            where pNombre = 'Josh Jackson'),
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
                where pNombre = 'Josh Jackson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jaren Jackson Jr.',
                [dbo].[formatoFechaInt]('09-15-1999'),
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
            where pNombre = 'Jaren Jackson Jr.'),
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
                where pNombre = 'Jaren Jackson Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tyus Jones',
                [dbo].[formatoFechaInt]('05-10-1996'),
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
            where pNombre = 'Tyus Jones'),
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
                where pNombre = 'Tyus Jones'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('John Konchar',
                [dbo].[formatoFechaInt]('03-22-1996'),
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
            where pNombre = 'John Konchar'),
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
                where pNombre = 'John Konchar'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('DeAnthony Melton',
                [dbo].[formatoFechaInt]('05-28-1998'),
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
            where pNombre = 'DeAnthony Melton'),
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
                where pNombre = 'DeAnthony Melton'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ja Morant',
                [dbo].[formatoFechaInt]('08-10-1999'),
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
            where pNombre = 'Ja Morant'),
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
                where pNombre = 'Ja Morant'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jonas Valanciunas',
                [dbo].[formatoFechaInt]('05-06-1992'),
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
            where pNombre = 'Jonas Valanciunas'),
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
                where pNombre = 'Jonas Valanciunas'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Yuta Watanabe',
                [dbo].[formatoFechaInt]('10-13-1994'),
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
            where pNombre = 'Yuta Watanabe'),
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
                where pNombre = 'Yuta Watanabe'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Miami Heat', 00, @deporteId)
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
            where nombre = 'Miami Heat')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Bam Adebayo',
                [dbo].[formatoFechaInt]('07-18-1997'),
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
            where pNombre = 'Bam Adebayo'),
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
                where pNombre = 'Bam Adebayo'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jimmy Butler',
                [dbo].[formatoFechaInt]('09-14-1989'),
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
            where pNombre = 'Jimmy Butler'),
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
                where pNombre = 'Jimmy Butler'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Goran Dragic',
                [dbo].[formatoFechaInt]('05-06-1986'),
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
            where pNombre = 'Goran Dragic'),
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
                where pNombre = 'Goran Dragic'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Udonis Haslem',
                [dbo].[formatoFechaInt]('06-09-1980'),
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
            where pNombre = 'Udonis Haslem'),
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
                where pNombre = 'Udonis Haslem'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tyler Herro',
                [dbo].[formatoFechaInt]('01-20-2000'),
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
            where pNombre = 'Tyler Herro'),
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
                where pNombre = 'Tyler Herro'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('James Johnson',
                [dbo].[formatoFechaInt]('02-20-1987'),
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
            where pNombre = 'James Johnson'),
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
                where pNombre = 'James Johnson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Derrick Jones Jr.',
                [dbo].[formatoFechaInt]('02-15-1997'),
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
            where pNombre = 'Derrick Jones Jr.'),
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
                where pNombre = 'Derrick Jones Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Meyers Leonard',
                [dbo].[formatoFechaInt]('02-27-1992'),
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
            where pNombre = 'Meyers Leonard'),
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
                where pNombre = 'Meyers Leonard'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Daryl Macon',
                [dbo].[formatoFechaInt]('11-29-1995'),
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
            where pNombre = 'Daryl Macon'),
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
                where pNombre = 'Daryl Macon'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kendrick Nunn',
                [dbo].[formatoFechaInt]('08-03-1995'),
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
            where pNombre = 'Kendrick Nunn'),
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
                where pNombre = 'Kendrick Nunn'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('KZ Okpala',
                [dbo].[formatoFechaInt]('04-28-1999'),
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
            where pNombre = 'KZ Okpala'),
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
                where pNombre = 'KZ Okpala'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kelly Olynyk',
                [dbo].[formatoFechaInt]('04-19-1991'),
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
            where pNombre = 'Kelly Olynyk'),
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
                where pNombre = 'Kelly Olynyk'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Duncan Robinson',
                [dbo].[formatoFechaInt]('04-22-1994'),
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
            where pNombre = 'Duncan Robinson'),
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
                where pNombre = 'Duncan Robinson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Chris Silva',
                [dbo].[formatoFechaInt]('09-19-1996'),
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
            where pNombre = 'Chris Silva'),
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
                where pNombre = 'Chris Silva'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dion Waiters',
                [dbo].[formatoFechaInt]('12-10-1991'),
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
            where pNombre = 'Dion Waiters'),
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
                where pNombre = 'Dion Waiters'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Justise Winslow',
                [dbo].[formatoFechaInt]('03-26-1996'),
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
            where pNombre = 'Justise Winslow'),
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
                where pNombre = 'Justise Winslow'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Milwaukee Bucks', 00, @deporteId)
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
            where nombre = 'Milwaukee Bucks')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Giannis Antetokounmpo',
                [dbo].[formatoFechaInt]('12-06-1994'),
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
            where pNombre = 'Giannis Antetokounmpo'),
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
                where pNombre = 'Giannis Antetokounmpo'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Thanasis Antetokounmpo',
                [dbo].[formatoFechaInt]('07-18-1992'),
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
            where pNombre = 'Thanasis Antetokounmpo'),
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
                where pNombre = 'Thanasis Antetokounmpo'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dragan Bender',
                [dbo].[formatoFechaInt]('11-17-1997'),
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
            where pNombre = 'Dragan Bender'),
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
                where pNombre = 'Dragan Bender'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Eric Bledsoe',
                [dbo].[formatoFechaInt]('12-09-1989'),
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
            where pNombre = 'Eric Bledsoe'),
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
                where pNombre = 'Eric Bledsoe'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Sterling Brown',
                [dbo].[formatoFechaInt]('02-10-1995'),
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
            where pNombre = 'Sterling Brown'),
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
                where pNombre = 'Sterling Brown'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Pat Connaughton',
                [dbo].[formatoFechaInt]('01-06-1993'),
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
            where pNombre = 'Pat Connaughton'),
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
                where pNombre = 'Pat Connaughton'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Donte DiVincenzo',
                [dbo].[formatoFechaInt]('01-31-1997'),
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
            where pNombre = 'Donte DiVincenzo'),
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
                where pNombre = 'Donte DiVincenzo'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('George Hill',
                [dbo].[formatoFechaInt]('05-04-1986'),
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
            where pNombre = 'George Hill'),
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
                where pNombre = 'George Hill'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ersan Ilyasova',
                [dbo].[formatoFechaInt]('05-15-1987'),
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
            where pNombre = 'Ersan Ilyasova'),
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
                where pNombre = 'Ersan Ilyasova'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kyle Korver',
                [dbo].[formatoFechaInt]('03-17-1981'),
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
            where pNombre = 'Kyle Korver'),
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
                where pNombre = 'Kyle Korver'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Brook Lopez',
                [dbo].[formatoFechaInt]('04-01-1988'),
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
            where pNombre = 'Brook Lopez'),
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
                where pNombre = 'Brook Lopez'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Robin Lopez',
                [dbo].[formatoFechaInt]('04-01-1988'),
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
            where pNombre = 'Robin Lopez'),
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
                where pNombre = 'Robin Lopez'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Frank Mason',
                [dbo].[formatoFechaInt]('04-03-1994'),
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
            where pNombre = 'Frank Mason'),
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
                where pNombre = 'Frank Mason'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Wesley Matthews',
                [dbo].[formatoFechaInt]('10-14-1986'),
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
            where pNombre = 'Wesley Matthews'),
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
                where pNombre = 'Wesley Matthews'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Khris Middleton',
                [dbo].[formatoFechaInt]('08-12-1991'),
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
            where pNombre = 'Khris Middleton'),
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
                where pNombre = 'Khris Middleton'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Cameron Reynolds',
                [dbo].[formatoFechaInt]('02-07-1995'),
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
            where pNombre = 'Cameron Reynolds'),
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
                where pNombre = 'Cameron Reynolds'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('D.J. Wilson',
                [dbo].[formatoFechaInt]('02-19-1996'),
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
            where pNombre = 'D.J. Wilson'),
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
                where pNombre = 'D.J. Wilson'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Minnesota Timberwolves', 00, @deporteId)
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
            where nombre = 'Minnesota Timberwolves')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Keita Bates-Diop',
                [dbo].[formatoFechaInt]('01-23-1996'),
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
            where pNombre = 'Keita Bates-Diop'),
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
                where pNombre = 'Keita Bates-Diop'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jordan Bell',
                [dbo].[formatoFechaInt]('01-07-1995'),
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
            where pNombre = 'Jordan Bell'),
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
                where pNombre = 'Jordan Bell'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Robert Covington',
                [dbo].[formatoFechaInt]('12-14-1990'),
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
            where pNombre = 'Robert Covington'),
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
                where pNombre = 'Robert Covington'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jarrett Culver',
                [dbo].[formatoFechaInt]('02-20-1999'),
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
            where pNombre = 'Jarrett Culver'),
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
                where pNombre = 'Jarrett Culver'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Gorgui Dieng',
                [dbo].[formatoFechaInt]('01-18-1990'),
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
            where pNombre = 'Gorgui Dieng'),
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
                where pNombre = 'Gorgui Dieng'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Treveon Graham',
                [dbo].[formatoFechaInt]('10-28-1993'),
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
            where pNombre = 'Treveon Graham'),
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
                where pNombre = 'Treveon Graham'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jake Layman',
                [dbo].[formatoFechaInt]('03-07-1994'),
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
            where pNombre = 'Jake Layman'),
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
                where pNombre = 'Jake Layman'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kelan Martin',
                [dbo].[formatoFechaInt]('08-03-1995'),
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
            where pNombre = 'Kelan Martin'),
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
                where pNombre = 'Kelan Martin'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jordan McLaughlin',
                [dbo].[formatoFechaInt]('04-09-1996'),
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
            where pNombre = 'Jordan McLaughlin'),
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
                where pNombre = 'Jordan McLaughlin'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Shabazz Napier',
                [dbo].[formatoFechaInt]('07-14-1991'),
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
            where pNombre = 'Shabazz Napier'),
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
                where pNombre = 'Shabazz Napier'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jaylen Nowell',
                [dbo].[formatoFechaInt]('07-09-1999'),
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
            where pNombre = 'Jaylen Nowell'),
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
                where pNombre = 'Jaylen Nowell'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Josh Okogie',
                [dbo].[formatoFechaInt]('09-01-1998'),
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
            where pNombre = 'Josh Okogie'),
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
                where pNombre = 'Josh Okogie'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Naz Reid',
                [dbo].[formatoFechaInt]('08-26-1999'),
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
            where pNombre = 'Naz Reid'),
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
                where pNombre = 'Naz Reid'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jeff Teague',
                [dbo].[formatoFechaInt]('06-10-1988'),
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
            where pNombre = 'Jeff Teague'),
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
                where pNombre = 'Jeff Teague'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Karl-Anthony Towns',
                [dbo].[formatoFechaInt]('11-15-1995'),
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
            where pNombre = 'Karl-Anthony Towns'),
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
                where pNombre = 'Karl-Anthony Towns'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Noah Vonleh',
                [dbo].[formatoFechaInt]('08-24-1995'),
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
            where pNombre = 'Noah Vonleh'),
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
                where pNombre = 'Noah Vonleh'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Andrew Wiggins',
                [dbo].[formatoFechaInt]('02-23-1995'),
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
            where pNombre = 'Andrew Wiggins'),
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
                where pNombre = 'Andrew Wiggins'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('New Orleans Pelicans', 00, @deporteId)
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
            where nombre = 'New Orleans Pelicans')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Nickeil Alexander-Walker',
                [dbo].[formatoFechaInt]('09-02-1998'),
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
            where pNombre = 'Nickeil Alexander-Walker'),
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
                where pNombre = 'Nickeil Alexander-Walker'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Lonzo Ball',
                [dbo].[formatoFechaInt]('10-27-1997'),
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
            where pNombre = 'Lonzo Ball'),
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
                where pNombre = 'Lonzo Ball'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Zylan Cheatham',
                [dbo].[formatoFechaInt]('11-17-1995'),
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
            where pNombre = 'Zylan Cheatham'),
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
                where pNombre = 'Zylan Cheatham'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Derrick Favors',
                [dbo].[formatoFechaInt]('07-15-1991'),
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
            where pNombre = 'Derrick Favors'),
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
                where pNombre = 'Derrick Favors'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Josh Gray',
                [dbo].[formatoFechaInt]('09-09-1993'),
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
            where pNombre = 'Josh Gray'),
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
                where pNombre = 'Josh Gray'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Josh Hart',
                [dbo].[formatoFechaInt]('03-06-1995'),
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
            where pNombre = 'Josh Hart'),
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
                where pNombre = 'Josh Hart'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jaxson Hayes',
                [dbo].[formatoFechaInt]('05-23-2000'),
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
            where pNombre = 'Jaxson Hayes'),
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
                where pNombre = 'Jaxson Hayes'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jrue Holiday',
                [dbo].[formatoFechaInt]('06-12-1990'),
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
            where pNombre = 'Jrue Holiday'),
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
                where pNombre = 'Jrue Holiday'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Brandon Ingram',
                [dbo].[formatoFechaInt]('09-02-1997'),
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
            where pNombre = 'Brandon Ingram'),
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
                where pNombre = 'Brandon Ingram'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Frank Jackson',
                [dbo].[formatoFechaInt]('05-04-1998'),
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
            where pNombre = 'Frank Jackson'),
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
                where pNombre = 'Frank Jackson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Nicolo Melli',
                [dbo].[formatoFechaInt]('01-26-1991'),
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
            where pNombre = 'Nicolo Melli'),
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
                where pNombre = 'Nicolo Melli'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Darius Miller',
                [dbo].[formatoFechaInt]('03-21-1990'),
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
            where pNombre = 'Darius Miller'),
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
                where pNombre = 'Darius Miller'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('ETwaun Moore',
                [dbo].[formatoFechaInt]('02-25-1989'),
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
            where pNombre = 'ETwaun Moore'),
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
                where pNombre = 'ETwaun Moore'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jahlil Okafor',
                [dbo].[formatoFechaInt]('12-15-1995'),
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
            where pNombre = 'Jahlil Okafor'),
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
                where pNombre = 'Jahlil Okafor'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('JJ Redick',
                [dbo].[formatoFechaInt]('06-24-1984'),
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
            where pNombre = 'JJ Redick'),
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
                where pNombre = 'JJ Redick'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kenrich Williams',
                [dbo].[formatoFechaInt]('12-02-1994'),
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
            where pNombre = 'Kenrich Williams'),
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
                where pNombre = 'Kenrich Williams'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Zion Williamson',
                [dbo].[formatoFechaInt]('07-06-2000'),
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
            where pNombre = 'Zion Williamson'),
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
                where pNombre = 'Zion Williamson'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('New York Knicks', 00, @deporteId)
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
            where nombre = 'New York Knicks')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kadeem Allen',
                [dbo].[formatoFechaInt]('01-15-1993'),
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
            where pNombre = 'Kadeem Allen'),
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
                where pNombre = 'Kadeem Allen'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('RJ Barrett',
                [dbo].[formatoFechaInt]('06-14-2000'),
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
            where pNombre = 'RJ Barrett'),
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
                where pNombre = 'RJ Barrett'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ignas Brazdeikis',
                [dbo].[formatoFechaInt]('01-08-1999'),
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
            where pNombre = 'Ignas Brazdeikis'),
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
                where pNombre = 'Ignas Brazdeikis'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Reggie Bullock',
                [dbo].[formatoFechaInt]('03-16-1991'),
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
            where pNombre = 'Reggie Bullock'),
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
                where pNombre = 'Reggie Bullock'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Damyean Dotson',
                [dbo].[formatoFechaInt]('05-06-1994'),
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
            where pNombre = 'Damyean Dotson'),
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
                where pNombre = 'Damyean Dotson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Wayne Ellington',
                [dbo].[formatoFechaInt]('11-29-1987'),
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
            where pNombre = 'Wayne Ellington'),
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
                where pNombre = 'Wayne Ellington'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Taj Gibson',
                [dbo].[formatoFechaInt]('06-24-1985'),
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
            where pNombre = 'Taj Gibson'),
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
                where pNombre = 'Taj Gibson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kevin Knox II',
                [dbo].[formatoFechaInt]('08-11-1999'),
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
            where pNombre = 'Kevin Knox II'),
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
                where pNombre = 'Kevin Knox II'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Marcus Morris Sr.',
                [dbo].[formatoFechaInt]('09-02-1989'),
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
            where pNombre = 'Marcus Morris Sr.'),
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
                where pNombre = 'Marcus Morris Sr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Frank Ntilikina',
                [dbo].[formatoFechaInt]('07-28-1998'),
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
            where pNombre = 'Frank Ntilikina'),
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
                where pNombre = 'Frank Ntilikina'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Elfrid Payton',
                [dbo].[formatoFechaInt]('02-22-1994'),
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
            where pNombre = 'Elfrid Payton'),
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
                where pNombre = 'Elfrid Payton'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Bobby Portis',
                [dbo].[formatoFechaInt]('02-10-1995'),
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
            where pNombre = 'Bobby Portis'),
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
                where pNombre = 'Bobby Portis'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ivan Rabb',
                [dbo].[formatoFechaInt]('02-04-1997'),
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
            where pNombre = 'Ivan Rabb'),
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
                where pNombre = 'Ivan Rabb'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Julius Randle',
                [dbo].[formatoFechaInt]('11-29-1994'),
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
            where pNombre = 'Julius Randle'),
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
                where pNombre = 'Julius Randle'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Mitchell Robinson',
                [dbo].[formatoFechaInt]('04-01-1998'),
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
            where pNombre = 'Mitchell Robinson'),
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
                where pNombre = 'Mitchell Robinson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dennis Smith Jr.',
                [dbo].[formatoFechaInt]('11-25-1997'),
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
            where pNombre = 'Dennis Smith Jr.'),
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
                where pNombre = 'Dennis Smith Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Allonzo Trier',
                [dbo].[formatoFechaInt]('01-17-1996'),
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
            where pNombre = 'Allonzo Trier'),
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
                where pNombre = 'Allonzo Trier'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Oklahoma City Thunder', 00, @deporteId)
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
            where nombre = 'Oklahoma City Thunder')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Steven Adams',
                [dbo].[formatoFechaInt]('07-20-1993'),
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
            where pNombre = 'Steven Adams'),
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
                where pNombre = 'Steven Adams'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Darius Bazley',
                [dbo].[formatoFechaInt]('06-12-2000'),
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
            where pNombre = 'Darius Bazley'),
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
                where pNombre = 'Darius Bazley'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Deonte Burton',
                [dbo].[formatoFechaInt]('01-31-1994'),
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
            where pNombre = 'Deonte Burton'),
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
                where pNombre = 'Deonte Burton'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Hamidou Diallo',
                [dbo].[formatoFechaInt]('07-31-1998'),
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
            where pNombre = 'Hamidou Diallo'),
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
                where pNombre = 'Hamidou Diallo'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Luguentz Dort',
                [dbo].[formatoFechaInt]('04-19-1999'),
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
            where pNombre = 'Luguentz Dort'),
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
                where pNombre = 'Luguentz Dort'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Terrance Ferguson',
                [dbo].[formatoFechaInt]('05-17-1998'),
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
            where pNombre = 'Terrance Ferguson'),
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
                where pNombre = 'Terrance Ferguson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Danilo Gallinari',
                [dbo].[formatoFechaInt]('08-08-1988'),
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
            where pNombre = 'Danilo Gallinari'),
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
                where pNombre = 'Danilo Gallinari'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Shai Gilgeous-Alexander',
                [dbo].[formatoFechaInt]('07-12-1998'),
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
            where pNombre = 'Shai Gilgeous-Alexander'),
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
                where pNombre = 'Shai Gilgeous-Alexander'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Devon Hall',
                [dbo].[formatoFechaInt]('07-07-1995'),
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
            where pNombre = 'Devon Hall'),
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
                where pNombre = 'Devon Hall'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Mike Muscala',
                [dbo].[formatoFechaInt]('07-01-1991'),
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
            where pNombre = 'Mike Muscala'),
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
                where pNombre = 'Mike Muscala'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Abdel Nader',
                [dbo].[formatoFechaInt]('09-25-1993'),
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
            where pNombre = 'Abdel Nader'),
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
                where pNombre = 'Abdel Nader'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Nerlens Noel',
                [dbo].[formatoFechaInt]('04-10-1994'),
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
            where pNombre = 'Nerlens Noel'),
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
                where pNombre = 'Nerlens Noel'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Justin Patton',
                [dbo].[formatoFechaInt]('06-14-1997'),
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
            where pNombre = 'Justin Patton'),
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
                where pNombre = 'Justin Patton'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Chris Paul',
                [dbo].[formatoFechaInt]('05-06-1985'),
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
            where pNombre = 'Chris Paul'),
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
                where pNombre = 'Chris Paul'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Andre Roberson',
                [dbo].[formatoFechaInt]('12-04-1991'),
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
            where pNombre = 'Andre Roberson'),
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
                where pNombre = 'Andre Roberson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dennis Schroder',
                [dbo].[formatoFechaInt]('09-15-1993'),
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
            where pNombre = 'Dennis Schroder'),
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
                where pNombre = 'Dennis Schroder'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Orlando Magic', 00, @deporteId)
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
            where nombre = 'Orlando Magic')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Al-Farouq Aminu',
                [dbo].[formatoFechaInt]('09-21-1990'),
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
            where pNombre = 'Al-Farouq Aminu'),
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
                where pNombre = 'Al-Farouq Aminu'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('D.J. Augustin',
                [dbo].[formatoFechaInt]('11-10-1987'),
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
            where pNombre = 'D.J. Augustin'),
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
                where pNombre = 'D.J. Augustin'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Mo Bamba',
                [dbo].[formatoFechaInt]('05-12-1998'),
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
            where pNombre = 'Mo Bamba'),
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
                where pNombre = 'Mo Bamba'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Khem Birch',
                [dbo].[formatoFechaInt]('09-28-1992'),
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
            where pNombre = 'Khem Birch'),
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
                where pNombre = 'Khem Birch'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Michael Carter-Williams',
                [dbo].[formatoFechaInt]('10-10-1991'),
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
            where pNombre = 'Michael Carter-Williams'),
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
                where pNombre = 'Michael Carter-Williams'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Evan Fournier',
                [dbo].[formatoFechaInt]('10-29-1992'),
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
            where pNombre = 'Evan Fournier'),
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
                where pNombre = 'Evan Fournier'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Melvin Frazier Jr.',
                [dbo].[formatoFechaInt]('08-30-1996'),
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
            where pNombre = 'Melvin Frazier Jr.'),
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
                where pNombre = 'Melvin Frazier Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Markelle Fultz',
                [dbo].[formatoFechaInt]('05-29-1998'),
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
            where pNombre = 'Markelle Fultz'),
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
                where pNombre = 'Markelle Fultz'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Aaron Gordon',
                [dbo].[formatoFechaInt]('09-16-1995'),
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
            where pNombre = 'Aaron Gordon'),
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
                where pNombre = 'Aaron Gordon'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jonathan Isaac',
                [dbo].[formatoFechaInt]('10-03-1997'),
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
            where pNombre = 'Jonathan Isaac'),
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
                where pNombre = 'Jonathan Isaac'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Wes Iwundu',
                [dbo].[formatoFechaInt]('12-20-1994'),
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
            where pNombre = 'Wes Iwundu'),
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
                where pNombre = 'Wes Iwundu'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Amile Jefferson',
                [dbo].[formatoFechaInt]('05-07-1993'),
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
            where pNombre = 'Amile Jefferson'),
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
                where pNombre = 'Amile Jefferson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('BJ Johnson',
                [dbo].[formatoFechaInt]('12-21-1995'),
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
            where pNombre = 'BJ Johnson'),
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
                where pNombre = 'BJ Johnson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Josh Magette',
                [dbo].[formatoFechaInt]('11-28-1989'),
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
            where pNombre = 'Josh Magette'),
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
                where pNombre = 'Josh Magette'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Terrence Ross',
                [dbo].[formatoFechaInt]('02-05-1991'),
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
            where pNombre = 'Terrence Ross'),
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
                where pNombre = 'Terrence Ross'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Nikola Vucevic',
                [dbo].[formatoFechaInt]('10-24-1990'),
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
            where pNombre = 'Nikola Vucevic'),
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
                where pNombre = 'Nikola Vucevic'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Philadelphia 76ers', 00, @deporteId)
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
            where nombre = 'Philadelphia 76ers')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jonah Bolden',
                [dbo].[formatoFechaInt]('01-02-1996'),
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
            where pNombre = 'Jonah Bolden'),
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
                where pNombre = 'Jonah Bolden'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Trey Burke',
                [dbo].[formatoFechaInt]('11-12-1992'),
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
            where pNombre = 'Trey Burke'),
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
                where pNombre = 'Trey Burke'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Joel Embiid',
                [dbo].[formatoFechaInt]('03-16-1994'),
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
            where pNombre = 'Joel Embiid'),
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
                where pNombre = 'Joel Embiid'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('James Ennis III',
                [dbo].[formatoFechaInt]('07-01-1990'),
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
            where pNombre = 'James Ennis III'),
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
                where pNombre = 'James Ennis III'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tobias Harris',
                [dbo].[formatoFechaInt]('07-15-1992'),
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
            where pNombre = 'Tobias Harris'),
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
                where pNombre = 'Tobias Harris'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Al Horford',
                [dbo].[formatoFechaInt]('06-03-1986'),
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
            where pNombre = 'Al Horford'),
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
                where pNombre = 'Al Horford'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Furkan Korkmaz',
                [dbo].[formatoFechaInt]('07-24-1997'),
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
            where pNombre = 'Furkan Korkmaz'),
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
                where pNombre = 'Furkan Korkmaz'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Shake Milton',
                [dbo].[formatoFechaInt]('09-26-1996'),
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
            where pNombre = 'Shake Milton'),
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
                where pNombre = 'Shake Milton'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Raul Neto',
                [dbo].[formatoFechaInt]('05-19-1992'),
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
            where pNombre = 'Raul Neto'),
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
                where pNombre = 'Raul Neto'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kyle OQuinn',
                [dbo].[formatoFechaInt]('03-26-1990'),
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
            where pNombre = 'Kyle OQuinn'),
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
                where pNombre = 'Kyle OQuinn'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Norvel Pelle',
                [dbo].[formatoFechaInt]('02-03-1993'),
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
            where pNombre = 'Norvel Pelle'),
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
                where pNombre = 'Norvel Pelle'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Josh Richardson',
                [dbo].[formatoFechaInt]('09-15-1993'),
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
            where pNombre = 'Josh Richardson'),
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
                where pNombre = 'Josh Richardson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Mike Scott',
                [dbo].[formatoFechaInt]('07-16-1988'),
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
            where pNombre = 'Mike Scott'),
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
                where pNombre = 'Mike Scott'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Marial Shayok',
                [dbo].[formatoFechaInt]('07-26-1995'),
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
            where pNombre = 'Marial Shayok'),
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
                where pNombre = 'Marial Shayok'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ben Simmons',
                [dbo].[formatoFechaInt]('07-20-1996'),
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
            where pNombre = 'Ben Simmons'),
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
                where pNombre = 'Ben Simmons'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Zhaire Smith',
                [dbo].[formatoFechaInt]('06-04-1999'),
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
            where pNombre = 'Zhaire Smith'),
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
                where pNombre = 'Zhaire Smith'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Matisse Thybulle',
                [dbo].[formatoFechaInt]('03-04-1997'),
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
            where pNombre = 'Matisse Thybulle'),
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
                where pNombre = 'Matisse Thybulle'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Phoenix Suns', 00, @deporteId)
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
            where nombre = 'Phoenix Suns')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Deandre Ayton',
                [dbo].[formatoFechaInt]('07-23-1998'),
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
            where pNombre = 'Deandre Ayton'),
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
                where pNombre = 'Deandre Ayton'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Aron Baynes',
                [dbo].[formatoFechaInt]('12-09-1986'),
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
            where pNombre = 'Aron Baynes'),
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
                where pNombre = 'Aron Baynes'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Devin Booker',
                [dbo].[formatoFechaInt]('10-30-1996'),
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
            where pNombre = 'Devin Booker'),
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
                where pNombre = 'Devin Booker'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Mikal Bridges',
                [dbo].[formatoFechaInt]('08-30-1996'),
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
            where pNombre = 'Mikal Bridges'),
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
                where pNombre = 'Mikal Bridges'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jevon Carter',
                [dbo].[formatoFechaInt]('09-14-1995'),
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
            where pNombre = 'Jevon Carter'),
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
                where pNombre = 'Jevon Carter'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Cheick Diallo',
                [dbo].[formatoFechaInt]('09-13-1996'),
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
            where pNombre = 'Cheick Diallo'),
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
                where pNombre = 'Cheick Diallo'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jared Harper',
                [dbo].[formatoFechaInt]('09-14-1997'),
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
            where pNombre = 'Jared Harper'),
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
                where pNombre = 'Jared Harper'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ty Jerome',
                [dbo].[formatoFechaInt]('07-08-1997'),
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
            where pNombre = 'Ty Jerome'),
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
                where pNombre = 'Ty Jerome'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Cameron Johnson',
                [dbo].[formatoFechaInt]('03-03-1996'),
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
            where pNombre = 'Cameron Johnson'),
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
                where pNombre = 'Cameron Johnson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tyler Johnson',
                [dbo].[formatoFechaInt]('05-07-1992'),
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
            where pNombre = 'Tyler Johnson'),
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
                where pNombre = 'Tyler Johnson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Frank Kaminsky',
                [dbo].[formatoFechaInt]('04-04-1993'),
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
            where pNombre = 'Frank Kaminsky'),
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
                where pNombre = 'Frank Kaminsky'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jalen Lecque',
                [dbo].[formatoFechaInt]('06-13-2000'),
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
            where pNombre = 'Jalen Lecque'),
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
                where pNombre = 'Jalen Lecque'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Elie Okobo',
                [dbo].[formatoFechaInt]('10-23-1997'),
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
            where pNombre = 'Elie Okobo'),
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
                where pNombre = 'Elie Okobo'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kelly Oubre Jr.',
                [dbo].[formatoFechaInt]('12-09-1995'),
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
            where pNombre = 'Kelly Oubre Jr.'),
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
                where pNombre = 'Kelly Oubre Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ricky Rubio',
                [dbo].[formatoFechaInt]('10-21-1990'),
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
            where pNombre = 'Ricky Rubio'),
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
                where pNombre = 'Ricky Rubio'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dario Saric',
                [dbo].[formatoFechaInt]('04-08-1994'),
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
            where pNombre = 'Dario Saric'),
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
                where pNombre = 'Dario Saric'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Portland Trail Blazers', 00, @deporteId)
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
            where nombre = 'Portland Trail Blazers')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Carmelo Anthony',
                [dbo].[formatoFechaInt]('05-29-1984'),
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
            where pNombre = 'Carmelo Anthony'),
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
                where pNombre = 'Carmelo Anthony'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kent Bazemore',
                [dbo].[formatoFechaInt]('07-01-1989'),
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
            where pNombre = 'Kent Bazemore'),
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
                where pNombre = 'Kent Bazemore'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Moses Brown',
                [dbo].[formatoFechaInt]('10-13-1999'),
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
            where pNombre = 'Moses Brown'),
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
                where pNombre = 'Moses Brown'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Zach Collins',
                [dbo].[formatoFechaInt]('11-19-1997'),
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
            where pNombre = 'Zach Collins'),
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
                where pNombre = 'Zach Collins'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Mario Hezonja',
                [dbo].[formatoFechaInt]('02-25-1995'),
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
            where pNombre = 'Mario Hezonja'),
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
                where pNombre = 'Mario Hezonja'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jaylen Hoard',
                [dbo].[formatoFechaInt]('03-30-1999'),
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
            where pNombre = 'Jaylen Hoard'),
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
                where pNombre = 'Jaylen Hoard'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Rodney Hood',
                [dbo].[formatoFechaInt]('10-20-1992'),
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
            where pNombre = 'Rodney Hood'),
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
                where pNombre = 'Rodney Hood'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Skal Labissiere',
                [dbo].[formatoFechaInt]('03-18-1996'),
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
            where pNombre = 'Skal Labissiere'),
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
                where pNombre = 'Skal Labissiere'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Damian Lillard',
                [dbo].[formatoFechaInt]('07-15-1990'),
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
            where pNombre = 'Damian Lillard'),
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
                where pNombre = 'Damian Lillard'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Nassir Little',
                [dbo].[formatoFechaInt]('02-11-2000'),
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
            where pNombre = 'Nassir Little'),
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
                where pNombre = 'Nassir Little'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('CJ McCollum',
                [dbo].[formatoFechaInt]('09-19-1991'),
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
            where pNombre = 'CJ McCollum'),
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
                where pNombre = 'CJ McCollum'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jusuf Nurkic',
                [dbo].[formatoFechaInt]('08-23-1994'),
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
            where pNombre = 'Jusuf Nurkic'),
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
                where pNombre = 'Jusuf Nurkic'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Anfernee Simons',
                [dbo].[formatoFechaInt]('06-08-1999'),
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
            where pNombre = 'Anfernee Simons'),
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
                where pNombre = 'Anfernee Simons'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Anthony Tolliver',
                [dbo].[formatoFechaInt]('06-01-1985'),
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
            where pNombre = 'Anthony Tolliver'),
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
                where pNombre = 'Anthony Tolliver'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Gary Trent Jr.',
                [dbo].[formatoFechaInt]('01-18-1999'),
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
            where pNombre = 'Gary Trent Jr.'),
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
                where pNombre = 'Gary Trent Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Hassan Whiteside',
                [dbo].[formatoFechaInt]('06-13-1989'),
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
            where pNombre = 'Hassan Whiteside'),
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
                where pNombre = 'Hassan Whiteside'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Sacramento Kings', 00, @deporteId)
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
            where nombre = 'Sacramento Kings')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Trevor Ariza',
                [dbo].[formatoFechaInt]('06-30-1985'),
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
            where pNombre = 'Trevor Ariza'),
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
                where pNombre = 'Trevor Ariza'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Marvin Bagley III',
                [dbo].[formatoFechaInt]('03-14-1999'),
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
            where pNombre = 'Marvin Bagley III'),
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
                where pNombre = 'Marvin Bagley III'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Harrison Barnes',
                [dbo].[formatoFechaInt]('05-30-1992'),
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
            where pNombre = 'Harrison Barnes'),
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
                where pNombre = 'Harrison Barnes'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Nemanja Bjelica',
                [dbo].[formatoFechaInt]('05-09-1988'),
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
            where pNombre = 'Nemanja Bjelica'),
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
                where pNombre = 'Nemanja Bjelica'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Bogdan Bogdanovic',
                [dbo].[formatoFechaInt]('08-18-1992'),
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
            where pNombre = 'Bogdan Bogdanovic'),
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
                where pNombre = 'Bogdan Bogdanovic'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dewayne Dedmon',
                [dbo].[formatoFechaInt]('08-12-1989'),
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
            where pNombre = 'Dewayne Dedmon'),
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
                where pNombre = 'Dewayne Dedmon'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Yogi Ferrell',
                [dbo].[formatoFechaInt]('05-09-1993'),
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
            where pNombre = 'Yogi Ferrell'),
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
                where pNombre = 'Yogi Ferrell'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('DeAaron Fox',
                [dbo].[formatoFechaInt]('12-20-1997'),
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
            where pNombre = 'DeAaron Fox'),
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
                where pNombre = 'DeAaron Fox'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Wenyen Gabriel',
                [dbo].[formatoFechaInt]('03-26-1997'),
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
            where pNombre = 'Wenyen Gabriel'),
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
                where pNombre = 'Wenyen Gabriel'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Harry Giles III',
                [dbo].[formatoFechaInt]('04-22-1998'),
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
            where pNombre = 'Harry Giles III'),
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
                where pNombre = 'Harry Giles III'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kyle Guy',
                [dbo].[formatoFechaInt]('08-11-1997'),
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
            where pNombre = 'Kyle Guy'),
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
                where pNombre = 'Kyle Guy'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Buddy Hield',
                [dbo].[formatoFechaInt]('12-17-1992'),
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
            where pNombre = 'Buddy Hield'),
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
                where pNombre = 'Buddy Hield'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Richaun Holmes',
                [dbo].[formatoFechaInt]('10-15-1993'),
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
            where pNombre = 'Richaun Holmes'),
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
                where pNombre = 'Richaun Holmes'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Justin James',
                [dbo].[formatoFechaInt]('01-24-1997'),
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
            where pNombre = 'Justin James'),
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
                where pNombre = 'Justin James'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('DaQuan Jeffries',
                [dbo].[formatoFechaInt]('08-30-1997'),
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
            where pNombre = 'DaQuan Jeffries'),
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
                where pNombre = 'DaQuan Jeffries'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Cory Joseph',
                [dbo].[formatoFechaInt]('08-20-1991'),
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
            where pNombre = 'Cory Joseph'),
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
                where pNombre = 'Cory Joseph'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Caleb Swanigan',
                [dbo].[formatoFechaInt]('04-18-1997'),
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
            where pNombre = 'Caleb Swanigan'),
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
                where pNombre = 'Caleb Swanigan'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('San Antonio Spurs', 00, @deporteId)
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
            where nombre = 'San Antonio Spurs')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('LaMarcus Aldridge',
                [dbo].[formatoFechaInt]('07-19-1985'),
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
            where pNombre = 'LaMarcus Aldridge'),
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
                where pNombre = 'LaMarcus Aldridge'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Marco Belinelli',
                [dbo].[formatoFechaInt]('03-25-1986'),
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
            where pNombre = 'Marco Belinelli'),
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
                where pNombre = 'Marco Belinelli'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('DeMarre Carroll',
                [dbo].[formatoFechaInt]('07-27-1986'),
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
            where pNombre = 'DeMarre Carroll'),
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
                where pNombre = 'DeMarre Carroll'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('DeMar DeRozan',
                [dbo].[formatoFechaInt]('08-07-1989'),
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
            where pNombre = 'DeMar DeRozan'),
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
                where pNombre = 'DeMar DeRozan'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Drew Eubanks',
                [dbo].[formatoFechaInt]('02-01-1997'),
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
            where pNombre = 'Drew Eubanks'),
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
                where pNombre = 'Drew Eubanks'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Bryn Forbes',
                [dbo].[formatoFechaInt]('07-23-1993'),
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
            where pNombre = 'Bryn Forbes'),
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
                where pNombre = 'Bryn Forbes'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Rudy Gay',
                [dbo].[formatoFechaInt]('08-17-1986'),
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
            where pNombre = 'Rudy Gay'),
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
                where pNombre = 'Rudy Gay'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Keldon Johnson',
                [dbo].[formatoFechaInt]('10-11-1999'),
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
            where pNombre = 'Keldon Johnson'),
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
                where pNombre = 'Keldon Johnson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Trey Lyles',
                [dbo].[formatoFechaInt]('11-05-1995'),
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
            where pNombre = 'Trey Lyles'),
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
                where pNombre = 'Trey Lyles'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Chimezie Metu',
                [dbo].[formatoFechaInt]('03-22-1997'),
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
            where pNombre = 'Chimezie Metu'),
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
                where pNombre = 'Chimezie Metu'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Patty Mills',
                [dbo].[formatoFechaInt]('08-11-1988'),
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
            where pNombre = 'Patty Mills'),
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
                where pNombre = 'Patty Mills'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dejounte Murray',
                [dbo].[formatoFechaInt]('09-19-1996'),
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
            where pNombre = 'Dejounte Murray'),
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
                where pNombre = 'Dejounte Murray'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jakob Poeltl',
                [dbo].[formatoFechaInt]('10-15-1995'),
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
            where pNombre = 'Jakob Poeltl'),
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
                where pNombre = 'Jakob Poeltl'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Luka Samanic',
                [dbo].[formatoFechaInt]('01-09-2000'),
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
            where pNombre = 'Luka Samanic'),
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
                where pNombre = 'Luka Samanic'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Lonnie Walker IV',
                [dbo].[formatoFechaInt]('12-14-1998'),
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
            where pNombre = 'Lonnie Walker IV'),
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
                where pNombre = 'Lonnie Walker IV'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Quinndary Weatherspoon',
                [dbo].[formatoFechaInt]('09-10-1996'),
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
            where pNombre = 'Quinndary Weatherspoon'),
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
                where pNombre = 'Quinndary Weatherspoon'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Derrick White',
                [dbo].[formatoFechaInt]('07-02-1994'),
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
            where pNombre = 'Derrick White'),
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
                where pNombre = 'Derrick White'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Toronto Raptors', 00, @deporteId)
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
            where nombre = 'Toronto Raptors')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('OG Anunoby',
                [dbo].[formatoFechaInt]('07-17-1997'),
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
            where pNombre = 'OG Anunoby'),
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
                where pNombre = 'OG Anunoby'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Chris Boucher',
                [dbo].[formatoFechaInt]('01-11-1993'),
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
            where pNombre = 'Chris Boucher'),
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
                where pNombre = 'Chris Boucher'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Oshae Brissett',
                [dbo].[formatoFechaInt]('06-20-1998'),
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
            where pNombre = 'Oshae Brissett'),
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
                where pNombre = 'Oshae Brissett'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Terence Davis',
                [dbo].[formatoFechaInt]('05-16-1997'),
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
            where pNombre = 'Terence Davis'),
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
                where pNombre = 'Terence Davis'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Marc Gasol',
                [dbo].[formatoFechaInt]('01-29-1985'),
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
            where pNombre = 'Marc Gasol'),
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
                where pNombre = 'Marc Gasol'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dewan Hernandez',
                [dbo].[formatoFechaInt]('12-09-1996'),
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
            where pNombre = 'Dewan Hernandez'),
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
                where pNombre = 'Dewan Hernandez'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Rondae Hollis-Jefferson',
                [dbo].[formatoFechaInt]('01-03-1995'),
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
            where pNombre = 'Rondae Hollis-Jefferson'),
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
                where pNombre = 'Rondae Hollis-Jefferson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Serge Ibaka',
                [dbo].[formatoFechaInt]('09-18-1989'),
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
            where pNombre = 'Serge Ibaka'),
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
                where pNombre = 'Serge Ibaka'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Stanley Johnson',
                [dbo].[formatoFechaInt]('05-29-1996'),
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
            where pNombre = 'Stanley Johnson'),
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
                where pNombre = 'Stanley Johnson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Kyle Lowry',
                [dbo].[formatoFechaInt]('03-25-1986'),
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
            where pNombre = 'Kyle Lowry'),
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
                where pNombre = 'Kyle Lowry'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Patrick McCaw',
                [dbo].[formatoFechaInt]('10-25-1995'),
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
            where pNombre = 'Patrick McCaw'),
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
                where pNombre = 'Patrick McCaw'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Malcolm Miller',
                [dbo].[formatoFechaInt]('03-06-1993'),
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
            where pNombre = 'Malcolm Miller'),
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
                where pNombre = 'Malcolm Miller'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Shamorie Ponds',
                [dbo].[formatoFechaInt]('06-29-1998'),
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
            where pNombre = 'Shamorie Ponds'),
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
                where pNombre = 'Shamorie Ponds'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Norman Powell',
                [dbo].[formatoFechaInt]('05-25-1993'),
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
            where pNombre = 'Norman Powell'),
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
                where pNombre = 'Norman Powell'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Pascal Siakam',
                [dbo].[formatoFechaInt]('04-02-1994'),
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
            where pNombre = 'Pascal Siakam'),
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
                where pNombre = 'Pascal Siakam'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Matt Thomas',
                [dbo].[formatoFechaInt]('08-04-1994'),
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
            where pNombre = 'Matt Thomas'),
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
                where pNombre = 'Matt Thomas'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Fred VanVleet',
                [dbo].[formatoFechaInt]('02-25-1994'),
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
            where pNombre = 'Fred VanVleet'),
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
                where pNombre = 'Fred VanVleet'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Utah Jazz', 00, @deporteId)
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
            where nombre = 'Utah Jazz')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Bojan Bogdanovic',
                [dbo].[formatoFechaInt]('04-18-1989'),
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
            where pNombre = 'Bojan Bogdanovic'),
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
                where pNombre = 'Bojan Bogdanovic'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Tony Bradley',
                [dbo].[formatoFechaInt]('01-08-1998'),
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
            where pNombre = 'Tony Bradley'),
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
                where pNombre = 'Tony Bradley'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jarrell Brantley',
                [dbo].[formatoFechaInt]('06-07-1996'),
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
            where pNombre = 'Jarrell Brantley'),
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
                where pNombre = 'Jarrell Brantley'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Mike Conley',
                [dbo].[formatoFechaInt]('10-11-1987'),
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
            where pNombre = 'Mike Conley'),
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
                where pNombre = 'Mike Conley'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ed Davis',
                [dbo].[formatoFechaInt]('06-05-1989'),
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
            where pNombre = 'Ed Davis'),
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
                where pNombre = 'Ed Davis'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Dante Exum',
                [dbo].[formatoFechaInt]('07-13-1995'),
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
            where pNombre = 'Dante Exum'),
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
                where pNombre = 'Dante Exum'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Rudy Gobert',
                [dbo].[formatoFechaInt]('06-26-1992'),
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
            where pNombre = 'Rudy Gobert'),
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
                where pNombre = 'Rudy Gobert'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jeff Green',
                [dbo].[formatoFechaInt]('08-28-1986'),
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
            where pNombre = 'Jeff Green'),
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
                where pNombre = 'Jeff Green'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Joe Ingles',
                [dbo].[formatoFechaInt]('10-02-1987'),
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
            where pNombre = 'Joe Ingles'),
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
                where pNombre = 'Joe Ingles'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Donovan Mitchell',
                [dbo].[formatoFechaInt]('09-07-1996'),
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
            where pNombre = 'Donovan Mitchell'),
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
                where pNombre = 'Donovan Mitchell'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Juwan Morgan',
                [dbo].[formatoFechaInt]('04-17-1997'),
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
            where pNombre = 'Juwan Morgan'),
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
                where pNombre = 'Juwan Morgan'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Emmanuel Mudiay',
                [dbo].[formatoFechaInt]('03-05-1996'),
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
            where pNombre = 'Emmanuel Mudiay'),
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
                where pNombre = 'Emmanuel Mudiay'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Georges Niang',
                [dbo].[formatoFechaInt]('06-17-1993'),
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
            where pNombre = 'Georges Niang'),
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
                where pNombre = 'Georges Niang'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Royce ONeale',
                [dbo].[formatoFechaInt]('06-05-1993'),
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
            where pNombre = 'Royce ONeale'),
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
                where pNombre = 'Royce ONeale'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Miye Oni',
                [dbo].[formatoFechaInt]('08-04-1997'),
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
            where pNombre = 'Miye Oni'),
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
                where pNombre = 'Miye Oni'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Nigel Williams-Goss',
                [dbo].[formatoFechaInt]('09-16-1994'),
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
            where pNombre = 'Nigel Williams-Goss'),
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
                where pNombre = 'Nigel Williams-Goss'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Justin Wright-Foreman',
                [dbo].[formatoFechaInt]('10-27-1997'),
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
            where pNombre = 'Justin Wright-Foreman'),
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
                where pNombre = 'Justin Wright-Foreman'
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
        
    go
    
    go
        declare @deporteId int;

        set @deporteId = (
            select top(1) idDeporte
                from Deporte
                where nombre = 'Baloncesto'
        )

        INSERT INTO [dbo].[Equipo](nombre, fechaFundacion, idDeporte)
        values ('Washington Wizards', 00, @deporteId)
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
            where nombre = 'Washington Wizards')
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Bradley Beal',
                [dbo].[formatoFechaInt]('06-28-1993'),
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
            where pNombre = 'Bradley Beal'),
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
                where pNombre = 'Bradley Beal'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Davis Bertans',
                [dbo].[formatoFechaInt]('11-12-1992'),
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
            where pNombre = 'Davis Bertans'),
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
                where pNombre = 'Davis Bertans'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Isaac Bonga',
                [dbo].[formatoFechaInt]('11-08-1999'),
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
            where pNombre = 'Isaac Bonga'),
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
                where pNombre = 'Isaac Bonga'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Troy Brown Jr.',
                [dbo].[formatoFechaInt]('07-28-1999'),
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
            where pNombre = 'Troy Brown Jr.'),
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
                where pNombre = 'Troy Brown Jr.'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Thomas Bryant',
                [dbo].[formatoFechaInt]('07-31-1997'),
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
            where pNombre = 'Thomas Bryant'),
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
                where pNombre = 'Thomas Bryant'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Chris Chiozza',
                [dbo].[formatoFechaInt]('11-21-1995'),
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
            where pNombre = 'Chris Chiozza'),
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
                where pNombre = 'Chris Chiozza'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Rui Hachimura',
                [dbo].[formatoFechaInt]('02-08-1998'),
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
            where pNombre = 'Rui Hachimura'),
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
                where pNombre = 'Rui Hachimura'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ian Mahinmi',
                [dbo].[formatoFechaInt]('11-05-1986'),
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
            where pNombre = 'Ian Mahinmi'),
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
                where pNombre = 'Ian Mahinmi'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Garrison Mathews',
                [dbo].[formatoFechaInt]('10-24-1996'),
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
            where pNombre = 'Garrison Mathews'),
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
                where pNombre = 'Garrison Mathews'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Jordan McRae',
                [dbo].[formatoFechaInt]('03-28-1991'),
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
            where pNombre = 'Jordan McRae'),
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
                where pNombre = 'Jordan McRae'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('CJ Miles',
                [dbo].[formatoFechaInt]('03-18-1987'),
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
            where pNombre = 'CJ Miles'),
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
                where pNombre = 'CJ Miles'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Justin Robinson',
                [dbo].[formatoFechaInt]('10-12-1997'),
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
            where pNombre = 'Justin Robinson'),
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
                where pNombre = 'Justin Robinson'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Admiral Schofield',
                [dbo].[formatoFechaInt]('03-30-1997'),
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
            where pNombre = 'Admiral Schofield'),
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
                where pNombre = 'Admiral Schofield'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Ish Smith',
                [dbo].[formatoFechaInt]('07-05-1988'),
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
            where pNombre = 'Ish Smith'),
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
                where pNombre = 'Ish Smith'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Isaiah Thomas',
                [dbo].[formatoFechaInt]('02-07-1989'),
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
            where pNombre = 'Isaiah Thomas'),
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
                where pNombre = 'Isaiah Thomas'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('Moritz Wagner',
                [dbo].[formatoFechaInt]('04-26-1997'),
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
            where pNombre = 'Moritz Wagner'),
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
                where pNombre = 'Moritz Wagner'
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
        INSERT INTO [dbo].[Persona](
        pNombre,
        fechaNacimiento,
        paisNacimiento,
        sNombre,
        pApellido,
        sApellido)

        values('John Wall',
                [dbo].[formatoFechaInt]('09-06-1990'),
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
            where pNombre = 'John Wall'),
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
                where pNombre = 'John Wall'
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
        
    go
    