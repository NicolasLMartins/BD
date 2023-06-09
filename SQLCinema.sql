-- Active: 1687368827307@@localhost@3306@cinema
CREATE DATABASE Cinema;

USE Cinema;

CREATE TABLE Ator(
    CPF int NOT NULL,
    Nome VARCHAR(50),
    PRIMARY KEY(CPF)
);

CREATE TABLE Filme(
    ID int NOT NULL,
    Titulo VARCHAR(50),
    PRIMARY KEY(ID)
);

CREATE TABLE Premio(
    Codigo int NOT NULL,
    Descricao VARCHAR(50),
    PRIMARY KEY(Codigo)
);

CREATE TABLE Participacao(
    A_CPF int NOT NULL,
    F_ID int NOT NULL,
    PRIMARY KEY(A_CPF, F_ID),
    FOREIGN KEY(A_CPF)
        REFERENCES Ator(CPF),
    FOREIGN KEY(F_ID)
        REFERENCES Filme(ID)
);

ALTER TABLE Participacao ADD COLUMN Papel VARCHAR(50);

CREATE TABLE Premiacao(
    F_ID int NOT NULL,
    P_COD int NOT NULL,
    Ano DATE,
    PRIMARY KEY(F_ID, P_COD),
    FOREIGN KEY(F_ID)
        REFERENCES Filme(ID),
    FOREIGN KEY(P_COD)
        REFERENCES Premio(Codigo)
);
ALTER TABLE
	Premiacao CHANGE P_COD P_Cod int(11) NOT NULL;
USE Cinema;
INSERT INTO Ator (CPF, Nome)
VALUES (2147483647, "Brad Pitt");
INSERT INTO Filme (ID, Titulo)
VALUES (1, "Trem Bala");
INSERT INTO Participacao (A_CPF, F_ID, Papel)
VALUES (2147483647, 1, "Ladybug");
INSERT INTO Premio (Codigo, Descricao)
VALUES (123, "Óscar");
INSERT INTO Premiacao (F_ID, P_Cod, Ano)
VALUES (1, 123, "2023-06-14");
SELECT * FROM ator, premiacao, premio, participacao, filme;