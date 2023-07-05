-- Active: 1687368827307@@localhost@3306@empresa
-- CREATE DATABASE empresa;
-- CREATE TABLE funcionarios(
--     Id INT,
--     nome VARCHAR(40),
--     sexo CHAR(1),
--     data_nasc DATE
-- );
-- INSERT INTO funcionarios(Id, nome, sexo, data_nasc)
-- VALUES(125, "Carlos Silva", "m", 19920314);
-- INSERT INTO funcionarios
-- VALUES(127, "Bianca Fraga", "f", 19920714);
-- ALTER TABLE funcionarios
-- CHANGE Id Id INT NOT NULL PRIMARY KEY AUTO_INCREMENT;
-- INSERT INTO funcionarios (nome, sexo, data_nasc)
-- VALUES("Carlos Silva", "M", 19920314);
-- UPDATE funcionarios SET sexo = "m" WHERE Id = 128;
-- INSERT INTO funcionarios
-- VALUES(0, "Carlos Silva", "M", 19920314);
-- UPDATE funcionarios SET sexo = "m" WHERE Id = 129;
-- INSERT INTO funcionarios (nome, sexo, data_nasc)
-- VALUES("Lauro Santos", "m", NULL);
-- INSERT INTO funcionarios
-- VALUES(0, "Lauro Santos", "m", NULL);

-- ALTER TABLE funcionarios
-- CHANGE sexo sexo CHAR(1) DEFAULT "m";
-- ALTER TABLE funcionarios
-- CHANGE data_nasc data_nasc DATE DEFAULT NULL;
-- INSERT INTO funcionarios (nome, sexo, data_nasc)
-- VALUES("Lauro Santos", DEFAULT, DEFAULT);
-- INSERT INTO funcionarios (nome)
-- VALUES("Lauro Santos");
-- INSERT INTO funcionarios
-- VALUES(0, "Lauro Santos", DEFAULT, DEFAULT);

-- INSERT INTO funcionarios
-- VALUES(0, "Carlos Malta", "m", 19700423);
-- INSERT INTO funcionarios
-- VALUES(0, "Luiz Cartini", "m", 19810814);
-- INSERT INTO funcionarios
-- VALUES(0, "Paula Lima", "f", 19860716);
-- DELETE FROM funcionarios WHERE sexo = "m";
-- UPDATE funcionarios SET nome = "Carlos Malta" WHERE Id = 127;
-- UPDATE funcionarios SET sexo = "m" WHERE Id = 127;
-- UPDATE funcionarios SET sexo = "m";

-- ALTER TABLE funcionarios CHANGE nome nome VARCHAR(100);
-- ALTER TABLE funcionarios ADD COLUMN sobrenome VARCHAR(100);
-- ALTER TABLE funcionarios ADD COLUMN setor VARCHAR(20);
-- ALTER TABLE funcionarios ADD COLUMN cargo VARCHAR(20);
-- ALTER TABLE funcionarios ADD COLUMN salario FLOAT;
-- ALTER TABLE funcionarios ADD COLUMN endereco VARCHAR(100);
-- ALTER TABLE funcionarios ADD COLUMN bairro VARCHAR(100);
-- ALTER TABLE funcionarios ADD COLUMN cidade VARCHAR(100) DEFAULT "Porto Alegre";
-- DELETE FROM funcionarios;
-- ALTER TABLE funcionarios AUTO_INCREMENT = 1;
-- ALTER TABLE funcionarios CHANGE nome nome VARCHAR(100) FIRST;
-- ALTER TABLE funcionarios CHANGE nome nome VARCHAR(100) AFTER Id;
-- ALTER TABLE funcionarios CHANGE sobrenome sobrenome VARCHAR(100) AFTER nome;
-- ALTER TABLE funcionarios CHANGE data_nasc data_nasc DATE AFTER sexo;
INSERT INTO funcionarios
VALUES(0, "Luiz", "Andrade Luz", "m", 19800223, "Vendas",
"Vendedor", 1700.76, "Rua 7, 1298", "Sarandi", DEFAULT);
INSERT INTO funcionarios
VALUES(0, "Carlos", "Alberto Pool", "m", 19921020, "Vendas",
"Repositor", NULL, "Rua 89, 534", "Nonoai", DEFAULT);
INSERT INTO funcionarios
VALUES(0, "Ana", "Maria Link", "f", 19860515, "Estoque",
"Repositor", 1150.10, "AV. Índia, 23", "Sarandi", DEFAULT);
INSERT INTO funcionarios
VALUES(0, "Bianca", "Lais Maia", "f", 19890821, "Vendas",
"Vendedor", 1850.00, "Rua Terra, 545", "Centro", "Cachoeirinha");
INSERT INTO funcionarios
VALUES(0, "Laura", "Paola Lins", "f", 19920606, "Garagem",
"Motorista", 970.80, "Rua 67, 768", "Tristeza", DEFAULT);
INSERT INTO funcionarios
VALUES(0, "Fernando", "Alvarenga", "m", 19950816, "Vendas",
"Vendedor", 1960.90, "Rua 76, 7899", "Sarandi", DEFAULT);
INSERT INTO funcionarios
VALUES(0, "Luana", "Prisco Machado", "f", 19960908, "Estoque",
"Contador", NULL, "Rua Paz, 784", "Centro", "Alvorada");
INSERT INTO funcionarios
VALUES(0, "Francisco", "Carlos Neto", "m", 19931205, "Garagem",
"Auxiliar", 1025.56, "Rua Chile, 524", "Floresta", "Alvorada");
INSERT INTO funcionarios
VALUES(0, "Nelson", "Roberto Prinz", "m", 19900817, "Vendas",
"Supervisor", 2580.90, "Av. Europa, 87", "Centro", "Canoas");
INSERT INTO funcionarios
VALUES(0, "Flávia", "Almir Souto", "f", 19910923, "Estoque",
"Auxiliar", 780.90, "Av. Guaíba, 98", "Ipanema", DEFAULT);
SELECT * FROM funcionarios;
SELECT * FROM funcionarios WHERE sexo = "f";
SELECT nome, sexo, setor FROM funcionarios WHERE sexo = "m";
SELECT * FROM funcionarios WHERE sexo = "m" AND setor = "Vendas";
SELECT nome, cidade, setor FROM funcionarios WHERE sexo = "f"
AND setor = "Vendas" OR setor = "Estoque";
SELECT * FROM funcionarios WHERE setor != "Vendas";
SELECT nome FROM funcionarios WHERE sexo = "f"
AND cidade = "Porto Alegre" AND bairro != "Sarandi";
SELECT * FROM funcionarios WHERE salario IS NULL;
SELECT * FROM funcionarios WHERE salario IS NOT NULL;
SELECT nome, sexo, setor, cargo, salario FROM funcionarios WHERE salario > 1500;
SELECT nome, sexo, data_nasc FROM funcionarios WHERE data_nasc > 19940120;
SELECT nome, sexo, data_nasc FROM funcionarios WHERE data_nasc > "1994-01-20";
UPDATE funcionarios SET cidade='Porto Alegre' WHERE `Id`=8;
SELECT nome, data_nasc AS "Data de nascimento", setor FROM funcionarios WHERE cidade != "Porto Alegre";
SELECT Funci.nome, Funci.sobrenome FROM funcionarios AS Funci;
SELECT CONCAT(nome, ' ', sobrenome) AS "Nome completo", sexo, salario AS "Salário bruto", setor, cargo FROM funcionarios WHERE salario >= 1000 AND salario <= 2000;
SELECT * FROM funcionarios ORDER BY nome;
SELECT * FROM funcionarios ORDER BY nome DESC;
SELECT CONCAT(nome, ' ', sobrenome) AS "Nome completo", setor, cargo FROM funcionarios ORDER BY setor, cargo;
SELECT CONCAT(nome, ' ', sobrenome) AS "Nome completo", setor, cargo FROM funcionarios ORDER BY setor DESC, cargo;
SELECT CONCAT(nome, ' ', sobrenome) AS "Nome completo", setor, cargo FROM funcionarios ORDER BY 2 DESC, 3;
SELECT * FROM funcionarios LIMIT 5;
SELECT nome, salario FROM funcionarios ORDER BY salario DESC;
SELECT nome, salario FROM funcionarios ORDER BY salario DESC LIMIT 3;
SELECT nome, salario FROM funcionarios WHERE salario IS NOT NULL ORDER BY salario LIMIT 4;
DELETE FROM funcionarios WHERE id > 10;
SELECT nome, setor, cargo, salario FROM funcionarios WHERE salario >= 1200 AND salario <= 2000 ORDER BY nome;
ALTER TABLE funcionarios AUTO_INCREMENT = 10;
SELECT nome, setor, cargo, salario FROM funcionarios WHERE salario BETWEEN 1200 AND 2000 ORDER BY nome;
SELECT  nome, sexo, data_nasc AS "Data de nascimento" FROM funcionarios
WHERE data_nasc BETWEEN 19920430 AND 19991030 ORDER BY data_nasc DESC;
SELECT nome FROM funcionarios WHERE nome BETWEEN 'A' AND 'H' ORDER BY nome;
SELECT DISTINCT setor FROM funcionarios;
SELECT DISTINCT cargo FROM funcionarios ORDER BY cargo;
SELECT DISTINCT cargo, nome FROM funcionarios ORDER BY cargo;
SELECT DISTINCT cargo, setor FROM funcionarios ORDER BY cargo;
SELECT COUNT(*) FROM funcionarios;
SELECT COUNT(*) AS "Registros" FROM funcionarios;
SELECT COUNT(*) AS "Mulheres" FROM funcionarios WHERE sexo = "f";
SELECT COUNT(*) AS "Aniversários" FROM funcionarios
WHERE data_nasc BETWEEN 19940430 AND 19991030;
SELECT COUNT(*) AS "Salários" FROM funcionarios WHERE salario > 1500;
SELECT setor, COUNT(*) AS "Pessoas por setor"
FROM funcionariosGROUP BY setor;
SELECT cargo, COUNT(*) AS "Pessoas" FROM funcionarios GROUP BY cargo ORDER BY Pessoas DESC;
SELECT setor, SUM(salario) AS "Total salários"
FROM funcionarios GROUP BY setor;
SELECT setor, ROUND(SUM(salario), 2)
AS "Total salários" FROM funcionarios GROUP BY setor;
SELECT setor, cargo, COUNT(*) AS "Pessoas"
FROM funcionarios GROUP BY setor, cargo ORDER BY setor;
SELECT setor, cargo, COUNT(*) AS "Pessoas por cargo"
FROM funcionarios GROUP BY setor, cargo ORDER BY setor DESC, cargo;
SELECT setor, MIN(salario)
AS "Menor salário" FROM funcionarios GROUP BY setor;
SELECT setor, MIN(salario) AS "Menor salário" FROM funcionarios GROUP BY setor;
SELECT setor, ROUND(MIN(salario), 2) AS "Menor salário"
FROM funcionarios GROUP BY setor;
SELECT cargo, MAX(salariO) AS "Maior salário" FROM funcionarios GROUP BY cargo;
SELECT cargo, ROUND(MAX(salario), 2) AS "Maior salário"
FROM funcionarios WHERE salario IS NOT NULL GROUP BY cargo;
SELECT cargo, ROUND(SUM(salario), 2) AS "Maior salário"
FROM funcionarios GROUP BY cargo ORDER BY 2 DESC;
SELECT cargo, FORMAT(SUM(salario), 2) AS "Maior salário"
FROM funcionarios GROUP BY cargo ORDER BY 2 DESC;
SELECT setor, AVG(salario) AS "Média"
FROM funcionarios GROUP BY setor;
SELECT setor, ROUND(AVG(salario), 2) AS "Média"
FROM funcionarios GROUP BY setor ORDER BY 2 DESC;
SELECT setor FROM funcionarios GROUP BY setor HAVING (COUNT(setor) = 2);
SELECT setor, COUNT(setor) AS "Pessoas"
FROM funcionarios GROUP BY setor HAVING (Pessoas = 2);
SELECT cargo, ROUND(SUM(salario), 2) AS "Soma"
FROM funcionarios GROUP BY cargo HAVING (Soma > 1500 AND Soma < 3000);
SELECT sexo, cargo, ROUND(SUM(salariO), 2) AS "Soma"
FROM funcionarios WHERE sexo = "f" GROUP BY cargo
HAVING (Soma > 1000 AND Soma < 3000);