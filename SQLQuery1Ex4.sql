USE T_Moda;

CREATE TABLE Marcas
(
  IdMarca INT PRIMARY KEY IDENTITY
  ,Nome    VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE Cores
(
  IdCor INT PRIMARY KEY IDENTITY
  ,Nome VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE Tamanhos
(
  IdTamanho INT PRIMARY KEY IDENTITY 
  ,Nome  VARCHAR (200) NOT NULL UNIQUE 
);

CREATE TABLE Camisetas
(
  IdCamiseta  INT PRIMARY KEY IDENTITY
  ,IdMarca	  INT FOREIGN KEY REFERENCES Marcas (IdMarca)
  ,IdCor      INT FOREIGN KEY REFERENCES Cores  (IdCor)
  ,IdTamanho  INT FOREIGN KEY REFERENCES Tamanhos (IdTamanho)
);

INSERT INTO Marcas (Nome) VALUES ('Khelf')
								,('Adidas')
								,('Hering');

SELECT * FROM Marcas

INSERT INTO Cores (Nome) VALUES ('Vermelho')
								,('Roxo')
								,('Preto')
								,('Branco');

SELECT * FROM Cores

INSERT INTO Tamanhos (Nome) VALUES ('P')
								  ,('M')
								  ,('G')
								  ,('GG');

SELECT * FROM Tamanhos

INSERT INTO Camisetas (IdMarca, IdCor, IdTamanho) VALUES ('1', '2', '3')
														,('1', '3', '4')
														,('2', '4','1')
														,('3','1','2');

													

SELECT * FROM Camisetas

UPDATE Camisetas
SET IdMarca = 2 
WHERE IdMarca = 1 ;

DELETE FROM Camisetas WHERE IdMarca = 2;


SELECT  Marcas.Nome, Camisetas.*
	FROM Camisetas
 JOIN Marcas

ON Camisetas.IdMarca = Marcas.IdMarca

SELECT  Cores.Nome, Camisetas.*
	FROM Camisetas
 JOIN Cores

ON Camisetas.IdCor = Cores.IdCor

SELECT Tamanhos.Nome, Camisetas.*
	FROM Camisetas
	JOIN Tamanhos

ON Camisetas.IdTamanho = Tamanhos.IdTamanho


