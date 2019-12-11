SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spBackup]

AS

    DECLARE @nombre     VARCHAR(100)
    DECLARE @fecha      VARCHAR(12)

    SET @fecha = BaseDeDatos2.dbo.fechaActualFormato()

    SET @nombre = 'C:\Respaldos\BaseDeDatos2'+@fecha+'.bak'

    BACKUP  DATABASE BaseDeDatos2
            TO DISK = @nombre
            WITH FORMAT;

GO
