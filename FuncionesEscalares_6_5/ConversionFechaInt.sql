-- =============================================
-- Author:		<Alexander Ismael Tejeda Barahona>
-- Create date: 07/12/2019>
-- Description:	
--				<
--					Funcion que convierta de date a int
--				>
-- =============================================
ALTER FUNCTION FE_ConversionAInt 
(
	@fechaDate DATE 
)
RETURNS INT
AS
BEGIN
	
	DECLARE @fecha VARCHAR(MAX) = CAST(@fechaDate as VARCHAR)

	SELECT @fecha =	SUBSTRING(@fecha,1,4)
										+ SUBSTRING(@fecha,6,2)
															  + SUBSTRING(@fecha,9,2)

	RETURN CAST(@fecha as INT)		 	

END
GO










