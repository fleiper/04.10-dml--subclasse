CREATE DATABASE HAND_ATIVIDADE;
USE HAND_ATIVIDADE;

CREATE TABLE DADOS(
COD_FUN INT AUTO_INCREMENT PRIMARY KEY,
NOME VARCHAR(50),
SEXO VARCHAR(2),
BAIRRO VARCHAR (30),
SALARIO DECIMAL (10,2),
SETOR VARCHAR (50)
);

insert into dados (nome, sexo, bairro, salario, setor)
values ("Larrisa Menezes", "F", "Jubaquara", 1200.00, "Marketing"),
("Selma Nunes", "F", "grajau", 3800.00, "Vendas"),
("Leandro Henrique", "M", "Socorro", 2950.00, "Rh"),
("Amélia Jeremias", "F", "Socorro", 4200.00, "Marketing"),
("Clauido Jorge", "M", "Jabaquara", 1488.00, "Vendas"),
("Luciano hulk", "M", "Pedreira", 1000.00, "Vendas"),
("Gabriela Santos Nunes", "F", "Jurubatuba", 4150.00),
("Rafaela Vieira Jr", "F", "Jabaquara", 700.00, "Marketing"),
("Suzana Crispim", "F", "Grajau", 5600.00, "Produção"),
("Sabrina Oliveira Castro", "F", "Pedreira", 2900.00, "Marketing"),
("jarbas silva nunes", "M", "Jurubatuba", 5300.00, "Produção"),
("ralf borges", "M", "Jabaquara", 1600.00, "Marketing");

SELECT SUM(salario) FROM DADOS; #1

SELECT COUNT(*) AS quantidade_funcionarios
FROM DADOS
WHERE setor = 'Marketing'; #2

SELECT setor, AVG(salario) AS media_salario
FROM DADOS
GROUP BY setor
ORDER BY media_salario DESC; #3

SELECT COUNT(*) AS quantidade_funcionarios
FROM DADOS
WHERE salario < 3000 AND bairro = 'Socorro'; #4

SELECT setor, COUNT(*) AS quantidade_funcionarios
FROM DADOS
GROUP BY setor
HAVING COUNT(*) > 3; #5
