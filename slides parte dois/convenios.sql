-- Active: 1687368827307@@localhost@3306@hospitalslidesdois

-- CREATE TABLE convenio(
--     id_conv INT PRIMARY KEY,
--     nome_conv VARCHAR(20),
--     taxa FLOAT
-- );
-- ALTER TABLE convenio RENAME TO convenios;
ALTER TABLE convenios CHANGE id_conv id_conv INT NOT NULL AUTO_INCREMENT;
INSERT INTO convenios VALUES(0, "SUS", 5.00);
INSERT INTO convenios VALUES(0, "UNIMED", 10.00);
INSERT INTO convenios VALUES(0, "IPE", 7.00);
INSERT INTO convenios VALUES(0, "Particular", 20.00);
INSERT INTO convenios VALUES(0, "CCG", 9.00);