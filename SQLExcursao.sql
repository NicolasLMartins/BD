-- Active: 1687368827307@@localhost@3306@excursao
CREATE DATABASE Excursao;

USE Excursao;

CREATE TABLE Excursao(
    ID int NOT NULL,
    Nome VARCHAR(50),
    NumDias int,
    PRIMARY KEY(ID)
);

CREATE TABLE Cliente(
    CPF int NOT NULL,
    Nome VARCHAR(50),
    PRIMARY KEY(CPF)
);

CREATE TABLE Inscricao(
    C_CPF int NOT NULL,
    E_ID int NOT NULL,
    Data DATE,
    PRIMARY KEY(C_CPF, E_ID),
    FOREIGN KEY(C_CPF)
        REFERENCES Cliente(CPF),
    FOREIGN KEY(E_ID)
        REFERENCES Excursao(ID)
);

CREATE TABLE Cidade(
    Codigo int NOT NULL,
    Nome VARCHAR(50),
    PRIMARY KEY(Codigo)
);
CREATE TABLE Parada(
    DataSaida DATE NOT NULL,
    DataChegada DATE,
    Ci_Codigo int NOT NULL,
    E_ID int NOT NULL,
    PRIMARY KEY(DataSaida),
    FOREIGN KEY(Ci_Codigo)
        REFERENCES Cidade(Codigo),
    FOREIGN KEY(E_ID)
        REFERENCES Excursao(ID)
);

CREATE TABLE Guia(
    Matricula int NOT NULL,
    Nome VARCHAR(50),
    PRIMARY KEY(Matricula)
);

CREATE TABLE Orienta(
    G_Matricula int NOT NULL,
    E_ID int NOT NULL,
    PRIMARY KEY(G_Matricula, E_ID),
    FOREIGN KEY(G_Matricula)
        REFERENCES Guia(Matricula),
    FOREIGN KEY(E_ID)
        REFERENCES Excursao(ID)
);

INSERT INTO cidade(Codigo, Nome)
VALUES(12345, "Pirapora");
INSERT INTO cliente(CPF, Nome)
VALUES(123456789, "Eduardo");
INSERT INTO excursao(ID, Nome, NumDias)
VALUES(54321, "Volta ao Mundo", 80);
INSERT INTO guia(Matricula, Nome)
VALUES(987654321, "Carlos");
INSERT INTO inscricao(C_CPF, E_ID, Data)
VALUES(123456789, 54321, "2020-06-06");
INSERT INTO orienta(G_Matricula, E_ID)
VALUES(987654321, 54321);
INSERT INTO parada(DataSaida, DataChegada, Ci_Codigo, E_ID)
VALUES("2020-10-31", "2020-12-12", 12345, 54321);