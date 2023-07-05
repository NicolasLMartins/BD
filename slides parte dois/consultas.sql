-- Active: 1687368827307@@localhost@3306@hospitalslidesdois

-- CREATE TABLE consultas(
--     id_medico INT,
--     id_pacientes INT,
--     id_convenios INT,
--     data DATE,
--     hora TIME,
--     compareceu BOOLEAN,
--     PRIMARY KEY(id_medico, id_pacientes, id_convenios),
--     FOREIGN KEY(id_medico)
--         REFERENCES medico(id),
--     FOREIGN KEY(id_pacientes)
--         REFERENCES pacientes(codigo),
--     FOREIGN KEY(id_convenios)
--         REFERENCES convenios(id_conv)
-- );
-- DROP TABLE consultas;

-- INSERT INTO consultas
-- VALUES(1, 1, 2, 20120612, 140000, 1);
-- INSERT INTO consultas
-- VALUES(2, 2, 1, 20120612, 143000, 0);
-- INSERT INTO consultas
-- VALUES(1, 3, 2, 20120611, 153000, 1);
-- INSERT INTO consultas
-- VALUES(2, 5, 2, 20120612, 130000, 1);
-- INSERT INTO consultas
-- VALUES(3, 6, 2, 20120612, 160000, 1);
-- INSERT INTO consultas
-- VALUES(2, 7, 3, 20120614, 163000, 1);
-- INSERT INTO consultas
-- VALUES(3, 7, 3, 20120613, 170000, 0);
-- INSERT INTO consultas
-- VALUES(4, 8, 4, 20120613, 173000, 1);
-- INSERT INTO consultas
-- VALUES(3, 9, 5, 20120613, 143000, 1);
-- INSERT INTO consultas
-- VALUES(1, 10, 5, 20120611, 140000, 1);
-- INSERT INTO consultas
-- VALUES(3, 4, 5, 20120611, 150000, 1);
-- INSERT INTO consultas
-- VALUES(5, 5, 4, 20120615, 153000, 1);
-- INSERT INTO consultas
-- VALUES(2, 6, 3, 20120615, 133000, 1);
INSERT INTO consultas
VALUES(3, 6, 2, 20120615, 163000, 1);
INSERT INTO consultas
VALUES(4, 9, 1, 20120615, 170000, 1);
INSERT INTO consultas
VALUES(2, 3, 2, 20120615, 140000, 1);
INSERT INT consultas
VALUES(5, 3, 3, 20120615, 130000, 1);
INSERT INTO consultas
VALUES(4, 8, 3, 20120615, 140000, 0);
INSERT INTO consultas
VALUES(2, 3, 4, 20120615, 150000, 0);
INSERT INTO consultas
VALUES(1, 5, 3, 20120615, 180000, 0);
INSERT INTO consultas
VALUES(1, 3, 5, 20120615, 170000, 0);
INSERT INTO consultas
VALUES(5, 1, 4, 20120615, 173000, 0);
INSERT INTO consultas
VALUES(5, 7, 3, 20120615, 143000, 0);
INSERT INTO consultas
VALUES(2, 4, 2, 20120615, 163000, 0);
INSERT INTO consultas
VALUES(3, 8, 5, 20120615, 163000, 0);