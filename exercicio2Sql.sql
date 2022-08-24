CREATE DATABASE db_ecomerce;
USE db_ecomerce;
CREATE TABLE tb_produtos(
id bigint auto_increment primary key,
marca varchar (30),
modelo varchar (30),
tamanho decimal (4,2),
cor varchar (20),
valor decimal (10,2)
);
SELECT * FROM tb_produtos;
INSERT INTO tb_produtos ( marca,modelo,tamanho,cor,valor) VALUES ("NIKE","jordan",38,"branco", 6000); 

SELECT * FROM tb_produtos WHERE valor >50;
SELECT * FROM tb_produtos WHERE Valor <7000;

UPDATE tb_produtos SET valor =30 where id=2;

