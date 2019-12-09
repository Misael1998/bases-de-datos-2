-- =============================================
-- Author:		<Alexander Ismael Tejeda Barahona>
-- Create date: <27/11/2019>
-- Description:	
--<	
-- Funcion que en correlacion a la fecha actual calcula en que dia de la 
-- semana se encuentra  y retorna un varchar con el nombre de la semana
-->
-- =============================================
CREATE FUNCTION FE_RetornoDiaSemana  
(
	@Dia INT
)
RETURNS INT
AS
BEGIN
		IF(@Dia > 0 and @Dia < 7)
		BEGIN
			DECLARE @DiaACtual INT = DATEPART(WEEKDAY,SYSDATETIME())
			DECLARE @resultado INT = @Dia - @DiaActual;
		END
	RETURN @Resultado
END
GO
