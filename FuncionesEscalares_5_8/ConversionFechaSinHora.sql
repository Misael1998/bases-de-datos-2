USE [ScriptProyecto]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ConversionFecha] 
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






























