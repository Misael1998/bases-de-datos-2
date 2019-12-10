--=============================================================================
--============================== FUNCIONES ====================================
--=============================================================================

--=======================================
--==== Funcion convertir fecha a int ====
--=======================================

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[formatoFechaINT]
(
    @fecha date
)
RETURNS INT
AS
BEGIN

    DECLARE @dia VARCHAR(2)
    DECLARE @mes VARCHAR(2)
    DECLARE @anio VARCHAR(4)

    declare @fechaFinal VARCHAR(10)
    declare @tmpFecha VARCHAR(10)

    set @tmpFecha= cast(@fecha as varchar(10))

    set @dia = SUBSTRING(@tmpFecha,9,10)
    set @mes = SUBSTRING(@tmpFecha,6,7)
    set @anio = SUBSTRING(@tmpFecha,1,4)

    set @fechaFinal= @dia + @mes + @anio


   return cast(@fechaFinal as int)

END
GO

--=======================================
--==== Funcion convertir int a fecha ====
--=======================================

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[formatoFecha]
(
    @fecha int
)
RETURNS DATE
AS
BEGIN

    declare @fechaFinal VARCHAR(8)
    declare @tmpFecha VARCHAR(8)

    set @tmpFecha= cast(@fecha as varchar(8))

    set @tmpFecha = RIGHT('00000000'+LTRIM(RTRIM(@tmpFecha)) , 8)

    set @fechaFinal =    SUBSTRING(@tmpFecha,5,4) + SUBSTRING(@tmpFecha,3,2) + SUBSTRING(@tmpFecha,1,2)

   return cast(@fechaFinal as date)

END

GO
