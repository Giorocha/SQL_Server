CREATE DATABASE T_SStop;

USE T_SStop;

CREATE TABLE Estilos
(
	IdEstilo INT PRIMARY KEY IDENTITY 
	,Nome  VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE Artistas
(
	IdArtista INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
	,IdEstilo INT FOREIGN KEY REFERENCES Estilos (IdEstilo)
);

INSERT INTO Estilos VALUES ('Rock')
						   ,('Pop');

SELECT *
	FROM Estilos;


SELECT *
	FROM Artistas;

INSERT INTO Artistas (Nome, IdEstilo)
	VALUES ('AC/DC' , 1 )
		   ,('Imagine Dragões', 2)
		   ,('KPOP', 2)
		   ,('Madonna', 2);

UPDATE Artistas
	SET IdEstilo= 1
	WHERE Nome = 'AC/DC';

	
