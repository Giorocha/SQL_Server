USE T_SStop

SELECT * FROM Estilos

SELECT * FROM Estilos
	WHERE IdEstilo = 1

SELECT * FROM Estilos
	WHERE Nome = 'Rock'

SELECT * FROM Estilos
	WHERE Nome = 'Roc'

SELECT * FROM Estilos
	WHERE Nome LIKE 'Roc%'

SELECT * FROM Estilos
	WHERE Nome LIKE '%ck'

SELECT * FROM Estilos
	WHERE Nome LIKE '%c%'

SELECT Artistas.*, Estilos.*
	FROM Artistas
LEFT	JOIN Estilos

	ON Artistas.IdEstilo = Estilos.IdEstilo

INSERT INTO Artistas (Nome) VALUES ('Giovanna'); 

INSERT INTO Estilos (Nome) VALUES ('Funk');


SELECT Artistas.*, Estilos.*
	FROM Artistas
  RIGHT JOIN Estilos

	ON Artistas.IdEstilo = Estilos.IdEstilo


SELECT Artistas.*, Estilos.*
	FROM Artistas
  FULL JOIN Estilos

	ON Artistas.IdEstilo = Estilos.IdEstilo




