--==========================================
--===== TRIGGER Cancelacion de partido =====
--==========================================

CREATE TRIGGER cancelacionPartido
    on Partido instead of delete AS
    BEGIN

        UPDATE [dbo].[Fase]
        SET
            [descripcion] = 'CANCELADO'
        WHERE idFase = (select idFase from deleted)

    END
