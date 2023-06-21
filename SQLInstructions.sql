-- Active: 1687368827307@@localhost@3306@cinema
CREATE DATABASE cinema;
DROP DATABASE cinema;
USE cinema;

CREATE TABLE Ator(CPF int NOT NULL,
		  Nome VARCHAR(50),
		  PRIMARY KEY(CPF));

CREATE TABLE Filme(ID int NOT NULL,
		   Titulo VARCHAR (50) NOT NULL,
		   PRIMARY KEY(ID));

CREATE TABLE Premio(Cod int NOT NULL,
		    Descricao VARCHAR(50),
		    PRIMARY KEY(Cod));

CREATE TABLE participacao(A_CPF int NOT NULL,
                          F_ID int NOT NULL,
                          Papel VARCHAR(20),
                          PRIMARY KEY(A_CPF, F_ID),
                          FOREIGN KEY(A_CPF)
                            REFERENCES ator(CPF),
                          FOREIGN KEY(F_ID)
                            REFERENCES filme(ID));

CREATE TABLE premiacao(P_Cod int NOT NULL,
                          F_ID int NOT NULL,
                          Ano DATE,
                          PRIMARY KEY(P_Cod, F_ID),
                          FOREIGN KEY(P_Cod)
                            REFERENCES premio(Cod),
                          FOREIGN KEY(F_ID)
                            REFERENCES Filme(ID));

ALTER TABLE Ator
    ADD COLUMN nomeArtistico VARCHAR(30);

ALTER TABLE `ator`
    CHANGE `nomeArtistico` `NomeArtistico` VARCHAR(30)
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_general_ci NULL DEFAULT NULL;

ALTER TABLE Ator DROP COLUMN NomeArtistico;

INSERT INTO ator(CPF, Nome)
VALUES(12345678910, 'Nícolas');

UPDATE `ator` SET `CPF` = '12345'
WHERE `ator`.`CPF` = 2147483647;

INSERT INTO filme(ID, Titulo)
VALUES(11, 'E o Tempo Levou');

INSERT INTO participacao(A_CPF, F_ID, Papel)
VALUES(12345, 11, "Árvore");

INSERT INTO premio(Cod, Descricao)
VALUES(1, 'Critics Choice Awards');

INSERT INTO premio(Cod, Descricao)
VALUES(2, 'Golden Globe');

USE cinema;
INSERT INTO premiacao(Ano, F_ID, P_Cod)
VALUES(1939-12-15, 11, 1);

UPDATE `premiacao` SET `Ano` = '1939-12-15'
WHERE `premiacao`.`P_Cod` = 1
AND `premiacao`.`F_ID` = 11;