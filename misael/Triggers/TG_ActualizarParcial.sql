
--==========================================
--====== TRIGGER actualizar parcial ========
--==========================================

CREATE TRIGGER actualizarParcial
    on Parcial INSTEAD of UPDATE AS
    BEGIN
        declare @fechaMejoresEquipos date
        declare @fechaActual date
        declare @diferenciaFehcas int

        set @fechaMejoresEquipos = [dbo].[formatoFecha](
            (select top(1) fechaInicio
            from MejorEquipo
            ORDER BY idMejoreEquipo DESC)
        )

        set @fechaActual = getdate();

        set @diferenciaFehcas = DATEDIFF(DAY, @fechaMejoresEquipos, @fechaActual)

        IF(@diferenciaFehcas < 7)
        BEGIN
            EXECUTE dbo.SP_MejoresAnotadores
        END

    END
