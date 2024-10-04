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
values ("Fabio", "M", "SHOPPING", 4500.00, "Academico"),
("Sandra", "F", "SÃO MIGUEL ARCANJO", 3500.00, "Academico"),
("Vivian", "F", "CAMPINAS", 8000.00, "Academico"),
("Adauto", "M", "SOROCABA", 4500.00, "Academico"),
("Adriano", "M", "CENTRO", 4500.00, "Academico"),
("Vanessa", "M", "SESI", 0.01, "Presidiario"),
("Rodrigo Raffa", "M", "AMERICANA", 3000.00, "Academico"),
("Rodrigão", "M", "ALGUM LUGAR", 4500.00, "Academico"),
("Deyvini", "M", "POLICIA", 4500.00, "Academico"),
("Reinaldo", "M", "", 100000.00, "Academico"),
("Bruna", "F", "Instituto federal", 2500.00, "Academico"),
("Luiz Fernando", "M", "SÃO PAULO", 4000.00, "Academico");

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