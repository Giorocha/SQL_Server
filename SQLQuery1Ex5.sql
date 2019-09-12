CREATE DATABASE T_DPS;

USE T_DPS;

CREATE TABLE Habilidades
(
	Id_Habilidade INT PRIMARY KEY IDENTITY
	,Nome  VARCHAR(200) NOT NULL UNIQUE
);

CREATE TABLE Departamentos
(
	Id_Departamento INT PRIMARY KEY IDENTITY
	,Nome  VARCHAR (200) NOT NULL UNIQUE
);

CREATE TABLE Funcionários
(
	Id_Funcionario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR (200) NOT NULL UNIQUE
	,Email VARCHAR (200) NOT NULL UNIQUE
	,Data_Nascimento DATE NOT NULL
	,Id_Departamento  INT FOREIGN KEY REFERENCES Departamentos (Id_Departamento)
	,Salário MONEY
);

CREATE TABLE Funcionarios_Habilidades
(
	Id_Funcionario INT FOREIGN KEY REFERENCES Funcionários (Id_Funcionario)
	,Id_Habilidade INT FOREIGN KEY REFERENCES Habilidades (Id_Habilidade)
);

INSERT INTO Habilidades (Nome) VALUES ('Empatia')
									 ,('Liderança')
									 ,('Comunicação');

SELECT * FROM Habilidades

INSERT INTO Departamentos (Nome) VALUES ('RH')
									   ,('Financeiro')
									   ,('Administrativo');

SELECT * FROM Departamentos

INSERT INTO Funcionários (Nome, Email, Data_Nascimento, Id_Departamento, Salário) VALUES ('Giovanna', 'Gi@hotmail.com', '2002-07-28', '1', '5,000')
																						,('Tiago', 'Ti@hotmail.com', '2002-01-27', '2', '3,500')
																						,('Matheus', 'Ma@hotmail.com', '2002-11-05','2' ,'7,000')
																						,('Rayssa', 'Ra@hotmail.com', '2003-04-01', '3', '15,000');


SELECT * FROM Funcionários


