-- Active: 1687368827307@@localhost@3306@concessionaria
CREATE DATABASE Concessionaria;

USE Concessionaria;

CREATE TABLE Concessionaria(
    CNPJ int NOT NULL,
    RazaoSocial VARCHAR(50),
    Endereco VARCHAR(50)
);

ALTER TABLE concessionaria ADD PRIMARY KEY(CNPJ);

CREATE TABLE Cliente(
    CPF int NOT NULL,
    Nome VARCHAR(50),
    Sexo VARCHAR(1),
    PRIMARY KEY(CPF)
);
CREATE TABLE Cadastra(
    Co_CNPJ int NOT NULL,
    Cl_CPF int NOT NULL,
    PRIMARY KEY(Co_CNPJ, Cl_CPF),
    FOREIGN KEY(Co_CNPJ)
        REFERENCES Concessionaria(CNPJ),
    FOREIGN KEY(Cl_CPF)
        REFERENCES Cliente(CPF)
);
CREATE TABLE Carro(
    Chassi int NOT NULL,
    Modelo VARCHAR(50),
    Ano DATE,
    Fabricante VARCHAR(50),
    Preco FLOAT,
    Co_CNPJ int NOT NULL,
    Cl_CPF int NOT NULL,
    PRIMARY KEY(Chassi),
    FOREIGN KEY(Co_CNPJ)
        REFERENCES Concessionaria(CNPJ),
    FOREIGN KEY(Cl_CPF)
        REFERENCES Cliente(CPF)
);
CREATE TABLE Acessorio(
    Codigo int NOT NULL,
    Descricao VARCHAR(50),
    PRIMARY KEY(Codigo)
);
CREATE TABLE Possui(
    Ac_Codigo int NOT NULL,
    Ca_Chassi int NOT NULL,
    PRIMARY KEY(Ac_Codigo, Ca_Chassi),
    FOREIGN KEY(Ac_Codigo)
        REFERENCES Acessorio(Codigo),
    FOREIGN KEY(Ca_Chassi)
        REFERENCES Carro(Chassi)
);
CREATE TABLE Oficina(
    CNPJ int NOT NULL,
    Nome VARCHAR(50),
    PRIMARY KEY(CNPJ)
);
CREATE TABLE Mantem(
    Of_CNPJ int NOT NULL,
    Ca_Chassi int NOT NULL,
    PRIMARY KEY(Of_CNPJ, Ca_Chassi),
    FOREIGN KEY(Of_CNPJ)
        REFERENCES Oficina(CNPJ),
    FOREIGN KEY(Ca_Chassi)
        REFERENCES Carro(Chassi)
);

INSERT INTO acessorio(Codigo, Descricao)
VALUES(123, "Porta Copo");
INSERT INTO concessionaria(CNPJ, RazaoSocial, Endereco)
VALUES(4321, "Ford", "Rua Acapulco");
INSERT INTO cliente(CPF, Nome, Sexo)
VALUES(123456789, "Eduardo", "M");
INSERT INTO carro(Chassi, Modelo, Ano, Fabricante, Preco, Co_CNPJ, Cl_CPF)
VALUES (123456, "Ka", "2020-06-6", "Ford", 12345.67, 4321, 123456789);
INSERT INTO cadastra(Co_CNPJ, Cl_CPF)
VALUES(4321, 123456789);
INSERT INTO oficina(CNPJ, Nome)
VALUES(5678, "Borraxaria");
INSERT INTO mantem(Of_CNPJ, Ca_Chassi)
VALUES(5678, 123456);
INSERT INTO possui(Ac_Codigo, Ca_Chassi)
VALUES(123, 123456);
SELECT * FROM acessorio, carro, cadastra, cliente, concessionaria, mantem, oficina, possui;