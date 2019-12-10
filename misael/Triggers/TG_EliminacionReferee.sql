--==========================================
--===== TRIGGER Eliminacion de Referee =====
--==========================================

CREATE TRIGGER eliminacionReferee
    on Referee instead of delete as
    begin

        declare @fechaRetiro int;

        set @fechaRetiro = (
            select fechaRetiro from deletes
        )

        if(getdate() < [dbo].[formatoFecha](@fechaRetiro))
            -- Update rows in table '[Referee]' in schema '[dbo]'
            UPDATE [dbo].[Referee]
            SET
                [fechaRetiro] = [dbo].[formatoFechaINT](getdate())
            WHERE idReferee = (
                SELECT idReferee from deleted
            )

    end
