CREATE DATABASE TipoMusical_Manh�;

USE TipoMusical_Manh�; 

CREATE TABLE EstilosMusicais (
 IDEstiloMsuical  INT PRIMARY KEY IDENTITY,
 Nome VARCHAR (200) NOT NULL 
 );

 CREATE TABLE Artistas(
 IDArtista INT PRIMARY KEY IDENTITY,
 NomeArtista VARCHAR (200) NOT NULL,
 IDEstiloMsuical int FOREIGN  KEY REFERENCES  EstilosMusicais(IDEstiloMsuical) -- REFERENCES ELE � A PONTE ENTRE UMA TABELA,, OUTRA Generos (IDGenero) NOME TABELA depois ATRIBUTO
 );



 --ALTERACAO ADICIONAL COLUNA
 -- add coluna
ALTER TABLE Artistas
ADD DataNascimento DATE;
SELECT * FROM Artistas;

--
 ALTER TABLE Atistas
 MODIFY Nome CHAR;

 --apagar coluna e banco
 ALTER TABLE Artista
 DROP COLUMN Nome;
 SELECT * FROM 


 --APAGAR TABELA  
 DROP TABLE Atistas;

 SELECT * FROM EstilosMusicais;

 ALTER TABLE EstilosMusicais
 ADD Descricao VARCHAR (200);

 SELECT * FROM EstilosMusicais;
 SELECT * FROM Artistas;

 --DML LINGUAGEM DE MANIPULACAO DE DADOS
 
 --COMANDO DE INSERIS DADOS
 INSERT INTO EstilosMusicais (Nome, Descricao)
 VALUES ('PAGODE','MUSICA BRASILEIRA');

 INSERT INTO EstilosMusicais (Nome, Descricao)
 VALUES ('PAGODE','MUSICA BRASILEIRA'),
		('SAMBA','MUSICA RAIZ'),
		('COUTRY','ESTILO BOA RAPAZ');

INSERT INTO Artistas (NomeArtista, IDEstiloMsuical)
VALUES ('ZECA PAGODINHO',2),
		('FRANK',4);


--UPDATE ALTERAR DADOS DE DENTRO DA TABELA.
UPDATE EstilosMusicais
SET Nome = 'FUNK'
WHERE IDEstiloMsuical = 2;

--DELETE APAGAR ALGUM DADO DA TABELA
DELETE FROM Artistas
WHERE IDArtista = 2;

SELECT * FROM Artistas;

INSERT INTO  Artistas (NomeArtista, IDEstiloMsuical)
VALUES ('SINATRA',4),
		('GENTE BOA',3);

--APAGAR TODOS OS DADOS DA TABELA
TRUNCATE TABLE ARTISTAS;

CREATE VIEW WArtistas AS
SELECT NomeArtista AS Nome,
		IDEstiloMsuical AS CodigoEstilo
		FROM Artistas

		SELECT * FROM Artistas;
		SELECT * FROM WArtistas;