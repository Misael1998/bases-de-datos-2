IF NOT EXISTS
(
	SELECT db.name 
		FROM sysdatabases db
		WHERE db.name = 'ScriptProyecto'	
)
BEGIN 
	CREATE DATABASE ScriptProyecto
END


