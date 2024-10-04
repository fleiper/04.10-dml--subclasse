CREATE DATABASE HANDON_1E;
USE HANDON_1E;

SELECT * FROM INF_MOBILIA;

CREATE TABLE INF_MOBILIA(
ID_VENDA int auto_increment primary key not null,
PRODUTO varchar(50) not null,
QUANTI int not null,
PREÇO decimal (10,2) not null
);
alter table inf_mobilia change column preço preço decimal  (10,2);
alter table inf_mobilia change column quanti quanti decimal  (10,2);
alter table inf_mobilia change column quanti quanti int;


insert into inf_mobilia (produto, quanti,preço)
values ("carro", 5, 100000.00),
("moto", 500, 5.00),
("caminhão", 5, 1000000.00),
("avião", 5, 5000000.00),
("helicoptero", 5, 1500000.00),
("trem", 5, 10.00),
("onibus", 5, 9999999.99),
("bicicleta", 5, 100.00),
("sapatos", 5, 50.00),
("skate", 5, 200.00);


SELECT COUNT(*) FROM INF_MOBILIA AS TOTAL_VENDAS;
SELECT COUNT(ID_VENDA) FROM INF_MOBILIA;
SELECT SUM(QUANTI) AS TOTAL_PRODUTOS;
SELECT SUM(PREÇO) FROM INF_MOBILIA; 
SELECT AVG(PREÇO) FROM INF_MOBILIA AS MEDIA_PRECO;
SELECT MIN(PREÇO) FROM INF_MOBILIA AS MENOR_PRECO; 
SELECT MAX(PREÇO) FROM INF_MOBILIA AS MAIOR_PRECO;

select produto, count(*) AS total_vendas
from INF_MOBILIA
group by produto;

select produto, sum(quanti) as total_trem
from INF_MOBILIA
group by produto
having total_trem > 120;

select produto, quanti, preço
from INF_MOBILIA
order by preço asc;

select produto, quanti, preço
from INF_MOBILIA
order by produto asc #ORDEM ALFABETICA
limit 5;

select produto, quanti, preço
from INF_MOBILIA
order by preço asc
limit 5;

select produto, preço,
	(select max(preço) from inf_mobilia) as Maior_Preço
from inf_mobilia;