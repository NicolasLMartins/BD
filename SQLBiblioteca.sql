-- Active: 1687368827307@@localhost@3306@biblioteca
CREATE DATABASE Biblioteca;
USE Biblioteca;
CREATE TABLE Biblioteca(
    Codigo int NOT NULL,
    Descricao VARCHAR(50),
    Endereco VARCHAR(50)
);

ALTER TABLE Biblioteca CHANGE Endereco Endereco VARCHAR(100);

ALTER TABLE `biblioteca` ADD PRIMARY KEY(Codigo);

CREATE TABLE Associado(
    Matricula int NOT NULL,
    Nome VARCHAR(50),
    Sexo VARCHAR(1),
    PRIMARY KEY(Matricula)
);
CREATE TABLE Cadastra(
    B_Codigo int NOT NULL,
    Ad_Matricula int NOT NULL,
    PRIMARY KEY(B_Codigo, Ad_Matricula),
    FOREIGN KEY(B_Codigo)
        REFERENCES Biblioteca(Codigo),
    FOREIGN KEY(Ad_Matricula)
        REFERENCES Associado(Matricula)
);
CREATE TABLE Livro(
    ISBN int NOT NULL,
    Titulo VARCHAR(50),
    B_Codigo int NOT NULL,
    Ad_Matricula int NOT NULL,
    PRIMARY KEY(ISBN),
    FOREIGN KEY(B_Codigo)
        REFERENCES Biblioteca(Codigo),
    FOREIGN KEY(Ad_Matricula)
        REFERENCES Associado(Matricula)
);
CREATE TABLE Assunto(
    Codigo int NOT NULL,
    Descricao VARCHAR(50),
    PRIMARY KEY(Codigo)
);
CREATE TABLE Aborda(
    As_Codigo int NOT NULL,
    L_ISBN int NOT NULL,
    PRIMARY KEY(As_Codigo, L_ISBN),
    FOREIGN KEY(As_Codigo)
        REFERENCES Assunto(Codigo),
    FOREIGN KEY (L_ISBN)
        REFERENCES Livro(ISBN)
);
CREATE TABLE Autor(
    Codigo int NOT NULL,
    Nome VARCHAR(50),
    PRIMARY KEY(Codigo)
);
CREATE TABLE Escreve(
    Au_Codigo int NOT NULL,
    L_ISBN int NOT NULL,
    PRIMARY KEY(Au_Codigo, L_ISBN),
    FOREIGN KEY(Au_Codigo)
        REFERENCES Autor(Codigo),
    FOREIGN KEY(L_ISBN)
        REFERENCES Livro(ISBN)
);

INSERT INTO associado(Matricula, Nome, Sexo)
VALUES(123, "Eduardo", "M");
INSERT INTO assunto(Codigo, Descricao)
VALUES(1234, "Fantasia");
INSERT INTO biblioteca(Codigo, Descricao, Endereco)
VALUES(4321, "Biblioteca Municipal", "Rua Acapulco");
INSERT INTO cadastra(B_Codigo, Ad_Matricula)
VALUES(4321, 123);
INSERT INTO autor(Codigo, Nome)
VALUES(9876, "Disney");
INSERT INTO livro(ISBN, Titulo, B_Codigo, Ad_Matricula)
VALUES(12345, "A Bela Adormecida", 4321, 123);
INSERT INTO aborda(As_Codigo, L_ISBN)
VALUES(1234, 12345);
INSERT INTO escreve(Au_Codigo, L_ISBN)
VALUES(9876, 12345);
SELECT * FROM aborda, associado, assunto, autor, biblioteca, cadastra, escreve, livro;