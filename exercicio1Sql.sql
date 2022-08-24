CREATE DATABASE db_rh;
USE db_rh;
create table tb_tabela(
id bigint auto_increment primary key,
empresa varchar (80),
nome varchar (50),
cpf varchar (50),
salario decimal (10,2)


);
select * from tb_tabela;
INSERT INTO tb_tabela (empresa,nome,cpf,salario) values ("new house", "matheus lucao", "475.898.338.22" ,5000);

SELECT * From tb_tabela Where salario >2000;
select * from tb_tabela where salario <2000;

UPDATE tb_tabela SET salario = 5500 where id= 1;
