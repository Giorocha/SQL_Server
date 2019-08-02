CREATE DATABASE Sstop;

USE Sstop;

-- DDL
CREATE TABLE Estilos
(
    IdEstilo    INT PRIMARY KEY IDENTITY
    ,Nome       VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Artistas
(
    IdArtista     INT PRIMARY KEY IDENTITY
    ,Nome	  VARCHAR(200) UNIQUE
    ,IdEstilo     INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
);

-- DML
INSERT INTO Estilos (Nome) VALUES ('Folk');
INSERT INTO Estilos VALUES ('Rock'), ('Pop');

UPDATE Estilos SET Nome = 'POp' WHERE IdEstilo = 2;

INSERT INTO Artistas (Nome) VALUES ('AC/DC')
								  ,('Imagine Dragões')
								  ,('KPOP')
								  ,('Madonna');

UPDATE Artistas
	SET IdEstilo = 1
	WHERE Nome = 'AC/DC';

UPDATE Artistas
	SET IdEstilo = 2

DELETE FROM Estilos WHERE IdEstilo = 2;

-- DQL
SELECT * FROM Estilos;

SELECT * FROM Artistas;