ALTER FUNCTION dbo.ConversionFecha 
(
	@fechaSinFormato INT
)

	RETURNS DATE
AS
BEGIN
	SELECT @fechaSinFormato = CAST(@fechaSinFormato AS VARCHAR(8));
	DECLARE @fecha DATE;
	SELECT @fecha = RIGHT('00' + RTRIM(LTRIM(@fechaSinFormato)),8);
	RETURN @fecha;
END




























