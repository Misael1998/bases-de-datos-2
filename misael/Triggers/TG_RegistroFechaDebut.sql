
--==========================================
--===== TRIGGER registro fecha debut =======
--==========================================


CREATE TRIGGER registroDebut
    on Registro after insert AS
    BEGIN

        declare @fechaDebut int
        declare @fechaContratacion int
        declare @idJugador int

        set @idJugador = (
            select idJugador
            from inserted
        )

        set @fechaContratacion = (
            select fechaContratacion
            from inserted
        )

        set @fechaDebut = (
            select fechaDebut
            from Jugador
            where idJugador = @idJugador
        )

        if( @fechaDebut = 0 )
        BEGIN

            UPDATE [dbo].[Jugador]
            SET
                [fechaDebut] = @fechaContratacion
            WHERE idJugador = @idJugador

        END

    END
