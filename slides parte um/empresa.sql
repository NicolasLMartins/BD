-- Active: 1687368827307@@localhost@3306@empresa
CREATE DATABASE empresa;
CREATE TABLE funcionarios(
    Id int,
    nome VARCHAR(40),
    sexo char(1),
    data_nasc DATE
);
INSERT INTO funcionarios(Id, nome, sexo, data_nasc)
VALUES(125, "Carlos Silva", "m", 19920314);
INSERT INTO funcionarios
VALUES(127, "Bianca Fraga", "f", 19920714);

CREATE TABLE funcionarios(
    Id int NOT NULL AUTO_INCREMENT,
    nome VARCHAR(40),
    sexo CHAR(1) DEFAULT "m",
    data_nasc DATE DEFAULT NULL,
    PRIMARY KEY(Id)
);

INSERT INTO funcionarios(nome, sexo, data_nasc)
VALUES("Lauro Santos", DEFAULT, DEFAULT);
INSERT INTO funcionarios(nome)
VALUES("Lauro Santos");
INSERT INTO funcionarios
VALUES(0, "Lauro Santos", DEFAULT, DEFAULT)