-- Active: 1687368827307@@localhost@3306@hospitalslidesdois
-- CREATE TABLE paciente(
--     codigo INT PRIMARY KEY,
--     nome_pac VARCHAR(100),
--     fone VARCHAR(10),
--     data_nasc DATE,
--     sexo CHAR(1)
-- );
-- ALTER TABLE paciente RENAME TO pacientes;
ALTER TABLE pacientes CHANGE codigo codigo INT NOT NULL AUTO_INCREMENT;
INSERT INTO pacientes
VALUES(0, "Ana Souza", 1234555, 20000529, "f");
INSERT INTO pacientes
VALUES(0, "Laiz Souto", 7657456, 20020623, "f");
INSERT INTO pacientes
VALUES(0, "Leandro Castro", 1555234, 20040711, "m");
INSERT INTO pacientes
VALUES(0, "Fernanda Farias", 3451255, 19990503, "f");
INSERT INTO pacientes
VALUES(0, "Nalco Cortes", 5445345, 19981013, "m");
INSERT INTO pacientes
VALUES(0, "Lucy Bella", 7865388, 19780506, "f");
INSERT INTO pacientes
VALUES(0, "Mauro Lopes", 3664567, 19970625, "m");
INSERT INTO pacientes
VALUES(0, "Bianca Mattos", 5764576, 19970218, "f");
INSERT INTO pacientes
VALUES(0, "Jorge Mota", 7643654, 19850316, "m");
INSERT INTO pacientes
VALUES(0, "Carla Rocha", 5623546, 19870127, "f");