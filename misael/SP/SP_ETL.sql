-- Create a new stored procedure called 'etlDWH' in schema 'dbo'
-- Drop the stored procedure if it already exists
IF EXISTS (
SELECT *
    FROM INFORMATION_SCHEMA.ROUTINES
WHERE SPECIFIC_SCHEMA = N'dbo'
    AND SPECIFIC_NAME = N'etlDWH'
    AND ROUTINE_TYPE = N'PROCEDURE'
)
DROP PROCEDURE dbo.etlDWH
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE dbo.etlDWH
-- add more stored procedure parameters here
AS
    insert into [DWH].[dbo].Fase
        select idFase, nombre from Fase

    insert into [DWH].[dbo].Equipo
        select idEquipo, nombre from Equipo

    insert into [DWH].[dbo].Parcial
        select idParcial, anotaciones, numero from Parcial
GO
-- example to execute the stored procedure we just created
EXECUTE dbo.etlDWH
GO
