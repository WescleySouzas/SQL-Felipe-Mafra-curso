STATUS

CREATE DATABASE LIVRARIA;

USE LIVRARIA;

CREATE TABLE LIVROS(
    NOME_DO_LIVRO VARCHAR(50),
    NOME_DO_AUTOR VARCHAR(50),
    SEXO_DO_AUTOR CHAR(1),
    TOTAL_PAGINAS INT(4),
    NOME_EDITORA VARCHAR(50),
    VALOR FLOAT(6),
    UF CHAR(2),
    ANO INT(4)
);

INSERT INTO LIVROS VALUES ("Cavaleiro Real", "Ana Claudia", 'F', 465, 'Atlas', 49.9, 'RJ', 2009),
                          ('SQL para Leigos', 'Joao Nunes', 'M', 450, 'Addison', 98, 'SP', 2018),
                          ('Receitas Caseiras', 'Celia Tavares', 'F', 210, 'Atlas', 45, 'RJ', 2008),
                          ('Pessoas Efetivas','Eduardo Santos','M',390,'Beta',78,'RJ',2018),
                          ('Habitos Saudáveis','Eduardo Santos','M',630,'Beta',150,'RJ',2019),
                          ('A Casa Marrom','Hermes Macedo','M',250,'Bubba',60,'MG',2016),
                          ('Estacio Querido','Geraldo Francisco','M',310,'Insignia',100,'ES',2015),
                          ('Pra sempre amigas','Leda Silva','F',510,'Insignia',78,'ES',2011),
                          ('Copas Inesqueciveis','Marco Alcantara','M',200,'Larson',130,'RS',2018),
                          ('O poder da mente','Clara Mafra','F',120,'Continental',56,'SP',2017);

SELECT NOME_DO_LIVRO, NOME_EDITORA FROM LIVROS;


SELECT NOME_DO_LIVRO, UF FROM LIVROS 
WHERE SEXO_DO_AUTOR = 'M';

SELECT NOME_DO_LIVRO, TOTAL_PAGINAS FROM LIVROS
WHERE SEXO_DO_AUTOR = "F";

SELECT VALOR FROM LIVROS 
WHERE UF LIKE '%P';

SELECT NOME_DO_AUTOR FROM LIVROS
WHERE SEXO_DO_AUTOR = "M" AND (UF = "SP" OR UF = "RJ");