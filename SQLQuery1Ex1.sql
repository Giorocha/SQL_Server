-- criar um banco de dados

CREATE DATABASE T_PSales;

-- colocar o banco de dados em uso
USE T_PSales;

-- criar tabela de cursos 
CREATE TABLE Cursos
(
  -- tipo de dados
  IdCurso INT PRIMARY KEY IDENTITY
  ,Nome   VARCHAR(200) NOT NULL UNIQUE
);

-- CRIAR TABELA DE DISCIPLINAS 
CREATE TABLE Disciplinas 
(
	IdDisciplina INT PRIMARY KEY IDENTITY
	,Nome        VARCHAR(200) NOT NULL
	,IdCursos    INT FOREIGN KEY REFERENCES Cursos (IdCurso)
);

CREATE TABLE Alunos
(
  -- tipo de dados
  IdAluno INT PRIMARY KEY IDENTITY
  ,Nome   VARCHAR(200) NOT NULL UNIQUE
);

-- criar a tabela intermedi�ria de alunos e cursos (vincular)

CREATE TABLE CursosAlunos
(
   IdCurso INT FOREIGN KEY REFERENCES Cursos (IdCurso)
   ,IdAluno INT FOREIGN KEY REFERENCES Alunos (IdAluno)
);

-- inserir registros
-- inserir em algum local alguma coisa
-- insert into nome_tabela (colunas) values (valores)

-- 1
INSERT INTO Cursos (Nome) VALUES ('T�cnico em Dev. Sistemas');

-- 2 nsiderar as colunas em ordem
INSERT INTO Cursos VALUES ('T�cnico em Redes');

-- 3 
INSERT INTO Cursos VALUES ('Curso 1')
						  ,('Curso 2')
						  ,('Curso 3');

SELECT IdCurso, Nome
	FROM Cursos;

SELECT * 
	FROM Cursos;

SELECT * 
	FROM Cursos 
	WHERE IdCurso = 1;


-- atualiza��o
-- t�cnico em Desenvolvimentos de sistemas 
-- update tabela set qual_coluna = novo_valor condi�ao

UPDATE Cursos
	SET Nome = 'T�cnico em Desenvolvimento de SIstemas'
	WHERE IdCurso = 1;

INSERT INTO Disciplinas (Nome, IdCursos)
	VALUES ('HTML' , 1 );

--SELECT * 
--	FROM Disciplinas;

DELETE FROM Cursos
	WHERE IdCurso = 5;

-- CRUD
-- create, read, update, delete
-- insert, select, update, delete