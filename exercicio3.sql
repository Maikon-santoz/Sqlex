CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;
CREATE TABLE tb_categorias (
 id bigint auto_increment primary key,
 tecnologia varchar (50),
 professor varchar (50)
);
CREATE TABLE tb_cursos (
id bigint auto_increment primary key,
horas_de_curso varchar(50),
preco decimal (10,2),
categoria_id bigint,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);
SELECT * FROM tb_categorias;
INSERT INTO tb_categorias ( tecnologia,professor) values ("java","Luis Roberto");
INSERT INTO tb_categorias ( tecnologia,professor) values ("java POO","Rafael de Jesus");
INSERT INTO tb_categorias ( tecnologia,professor) values ("SQL","Jessy souza");
INSERT INTO tb_categorias ( tecnologia,professor) values ("javascript","Gustavo Guanabara");
INSERT INTO tb_categorias ( tecnologia,professor) values ("portugol","Maik santos");
INSERT INTO tb_categorias ( tecnologia,professor) values ("c++","Maik santos");







SELECT * FROM tb_cursos;
INSERT INTO tb_cursos (horas_de_curso,preco,categoria_id) values ("50hr",500,1);
INSERT INTO tb_cursos (horas_de_curso,preco,categoria_id) values ("80hr",600,2);
INSERT INTO tb_cursos (horas_de_curso,preco,categoria_id) values ("100hr",1000,6);
INSERT INTO tb_cursos (horas_de_curso,preco, categoria_id) values ("20hr",200,5);
INSERT INTO tb_cursos (horas_de_curso,preco,categoria_id) values ("40hr",600,3);
INSERT INTO tb_cursos (horas_de_curso,preco,categoria_id) values ("80hr",900,3);
INSERT INTO tb_cursos (horas_de_curso,preco,categoria_id) values ("90hr",1200,4);

SELECT * FROM tb_cursos where preco >500;
SELECT * FROM tb_cursos where preco between 600 and 1000;
SELECT * FROM tb_categorias where tecnologia like "%j%";

SELECT * FROM tb_categorias INNER JOIN tb_cursos ON tb_cursos.categoria_id= tb_categorias.id;
SELECT professor FROM tb_categorias INNER JOIN tb_cursos ON tb_cursos.categoria_id= tb_categorias.id;
drop database db_curso_da_minha_vida;


/*
SELECT * FROM tb_categorias INNER JOIN tb_cursos
On tb_categorias.id = tb_cursos.categoria_id where tecnologia like "portugol";*/
