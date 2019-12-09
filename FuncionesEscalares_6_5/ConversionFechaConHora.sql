-- =============================================
-- Author:<Alexander Ismael Tejeda Barahona>
-- Create date: <24/11/2019>
-- Description:	<
--					Creacion de una funcion que va realizar una conversion 
--					de una fecha con hora a un dato de tipo INT
--				>
-- =============================================
ALTER FUNCTION F_ConversionFechaConHora 
(
)
RETURNS DECIMAL(12,4)
AS
BEGIN
	
	DECLARE @fechaHora VARCHAR(25) = CAST(SYSDATETIME() AS VARCHAR)
	DECLARE @fechaNueva DECIMAL(20,4)
	SET @fechaHora = SUBSTRING(@fechaHora,1,4) 
					+ SUBSTRING(@fechaHora,6,2) 
						+ SUBSTRING(@fechaHora,9,2) 
							+ '.' 
								+ SUBSTRING(@fechaHora,12,2) 
									+ SUBSTRING(@fechaHora,15,2)


	SET @fechaNueva = CAST(@fechaHora AS DECIMAL(15,4))
	RETURN @fechaNueva
END
GO