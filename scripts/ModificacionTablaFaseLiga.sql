IF EXISTS
(
	SELECT *
		FROM sysobjects sy 
		WHERE sy.name = 'FaseLiga'
)
BEGIN 
	ALTER TABLE ScriptProyecto.dbo.FaseLiga DROP CONSTRAINT FK_idFase
	ALTER TABLE ScriptProyecto.dbo.FaseLiga DROP COLUMN idFase
	ALTER TABLE ScriptProyecto.dbo.FaseLiga ADD idFase INT NOT NULL 
	ALTER TABLE ScriptProyecto.dbo.FaseLiga ADD CONSTRAINT FK_idFaseLi FOREIGN KEY(idFase) REFERENCES ScriptProyecto.dbo.Fase(idFase)
END

























