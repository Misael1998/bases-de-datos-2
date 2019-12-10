--==========================================
--===== TRIGGER Nuevo contrato sueldo ======
--==========================================

CREATE TRIGGER nuevoSueldo
    on Jugador instead of update as
    BEGIN
        declare @sueldoNuevo DECIMAL(20,2)
        declare @sueldoActual DECIMAL(20,2)

        declare @idJugador int

        set @idJugador = (
            select idJugador from updated
        );

        set @sueldoNuevo = (
            select sueldo from updated
        )

        set @sueldoActual = (
            select sueldo from Jugador
            where idJugador = @idJugador
        )

        if( @sueldoActual <> @sueldoNuevo )
        begin
        -- Update rows in table '[Registro]' in schema '[dbo]'
            UPDATE [dbo].[Registro]
            SET
               [fechaFinalizaion] = [dbo].[formatoFechaINT](getdate())
            WHERE idJugador = @idJugador
        end
        else begin
            UPDATE [dbo].[Jugador]
            SET
               [dorsal] = tbl.dorsal,
               [idPersona] = tbl.idPersona,
               [idEquipo] = tbl.idEquipo
            from updated as tbl
            WHERE idJugador = @idJugador
        end
    END
