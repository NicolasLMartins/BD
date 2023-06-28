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

-- CREATE TABLE colaboradores(
--     Id INT,
--     nome VARCHAR(40),
--     salario FLOAT,
--     bonificacao FLOAT
-- );
-- INSERT INTO colaboradores (Id, nome, salario, bonificacao)
-- VALUES(768, "Paula Lima", 1567.98, (1567.98 * 0.1));
-- INSERT INTO colaboradores
-- VALUES (768, "Paula Lima", 1567.98, (1567.98 * 0.1));
-- INSERT INTO colaboradores (Id, nome, bonificacao, salario)
-- VALUES (768, "Paula Lima", 1567.98, (bonificacao + 1000.00));

-- CREATE TABLE dependentes(
--     Id_depen INT NOT NULL AUTO_INCREMENT,
--     nome VARCHAR(40),
--     sexo CHAR(1),
--     data_nasc DATE,
--     Id_funci INT,
--     PRIMARY KEY(Id_depen),
--     CONSTRAINT depende_restri
--     FOREIGN KEY(Id_funci)
--         REFERENCES funcionarios(Id) ON DELETE CASCADE
-- );
-- INSERT INTO funcionarios
-- VALUES(0, "Carlos Malta", "m", 19700423);
-- INSERT INTO funcionarios
-- VALUES(0, "Luiz Cartini", "m", 19810814);
-- INSERT INTO funcionarios
-- VALUES(0, "Paula Lima", "f", 19860716);
-- INSERT INTO dependentes
-- VALUES(0, "Ana Malta", "f", 19980521, 135);
-- INSERT INTO dependentes
-- VALUES(0, "Lucas Malta", "m", 20010211, 135);
-- INSERT INTO dependentes
-- VALUES(0, "Ana Malta", "f", 20070304, 136);
-- INSERT INTO dependentes
-- VALUES(0, "Bianca Lima", "f", 20090914, 137);
-- INSERT INTO dependentes
-- VALUES(0, "Jonas Bastos", "m", 20081112, 138); --ERRO: Id_funci inválido
-- DELETE FROM funcionarios WHERE sexo = "m";
-- UPDATE funcionarios SET nome = "Carlos Malta" WHERE Id = 127;
-- UPDATE funcionarios SET sexo = "m" WHERE Id = 127;
-- UPDATE funcionarios SET sexo = "m";

-- CREATE TABLE produtos(
--     Id INT NOT NULL AUTO_INCREMENT,
--     item VARCHAR(40),
--     tipo CHAR(1),
--     preco FLOAT,
--     PRIMARY KEY(Id)
-- );
-- ALTER TABLE produtos AUTO_INCREMENT = 10;
-- INSERT INTO produtos
-- VALUES(0, "Arroz", "G", 1.30);
-- INSERT INTO produtos
-- VALUES(0, "Feijão", "G", 1.20);
-- INSERT INTO produtos
-- VALUES(0, "Batata", "L", 1.00);
-- INSERT INTO produtos
-- VALUES(0, "Lentilha", "G", 1.50);
-- INSERT INTO produtos
-- VALUES(0, "Ovos", "C", 2.50);
-- INSERT INTO produtos
-- VALUES(0, "Azeite", "E", 4.50);
-- UPDATE produtos SET preco = (preco + (preco * 0.1)) WHERE Id = 10;
-- UPDATE produtos SET preco = (preco + (preco * 0.1)) WHERE tipo = "G";

-- CREATE TABLE estoque(
--     Id INT,
--     item VARCHAR(100),
--     qtde INT,
--     preco FLOAT,
--     tipo VARCHAR(10),
--     PRIMARY KEY(Id)
-- );
-- ALTER TABLE estoque CHANGE Id Id INT NOT NULL AUTO_INCREMENT;
-- INSERT INTO estoque
-- VALUES(0, "Tesoura", 200, 5.00, "Verde");
-- INSERT INTO estoque
-- VALUES(0, "Caderno", 300, 15.90, "Folhado");
-- INSERT INTO estoque
-- VALUES(0, "Lápis", 250, 1.50, "Madeira");
-- INSERT INTO estoque
-- VALUES(0, "Borracha", 100, 5.00, "Apagador");
-- SELECT * FROM estoque;
-- SELECT item, qtde, preco FROM estoque;
-- SELECT estoque.item, estoque.qtde, estoque.preco FROM estoque;

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