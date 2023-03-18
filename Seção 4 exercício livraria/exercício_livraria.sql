/*CRIANDO O BANCO DE DADOS LIVRARIA*/
CREATE DATABASE LIVRARIA;

/*ENTRANDO NO BANCO LIVRARIA*/
USE LIVRARIA;

/*CRIANDO TABELA LIVROS*/
CREATE TABLE LIVROS (
    LIVRO VARCHAR(30),
    AUTOR VARCHAR(30),
    SEXO_AUTOR CHAR(1),
    NUMERO_PAGINAS CHAR(4),
    NOME_EDITORA VARCHAR(20),
    VALOR_LIVRO FLOAT(6,2),
    UF_EDITORA CHAR(2),
    ANO_PUBLICACAO CHAR(4)
);

/*CONSERTANDO O NOME DA TABELA NOME_DO_AUTO'S'*/

ALTER TABLE LIVROS CHANGE NOME_DO_AUTOS NOME_DO_AUTOR VARCHAR(40);

/*INSERINDO VALORES NA TABELA*/

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO) VALUES ('CAVALEIRO REAL', 'ANA CLAUDIA', 'F', '465', 'ATLAS', 49.90, 'RJ', '2009');

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO) VALUES ('SQL PARA LEIGOS', 'JOÃO NUNES', 'M', '450', 'ADDISON', 98, 'SP', '2018');

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO) VALUES ('RECEITAS CASEIRAS', 'CELIA TAVARES', 'F', '210', 'ATLAS', 45, 'RJ', '2008');

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO) VALUES ('PESSOAS EFETIVAS', 'EDUARDO SANTOS', 'M', '390', 'BETA', 78.99, 'RJ', '2018');

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO) VALUES ('HÁBITOS SAUDÁVEIS', 'EDUARDO SANTONS', 'M', '630', 'BETA', 150.98, 'RJ', '2019');

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO) VALUES ('A CASA MARROM', 'HERMES MACEDO', 'M', '250', 'BUBBA', 60, 'MG', '2016');

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO) VALUES ('ESTÁCIO QUERIDO', 'GERALDO FRANCISCO', 'M', '310', 'INSIGNIA', 100, 'ES', '2015');

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO) VALUES ('Pra sempre amigas', 'Leda Silva', 'F', '510', 'Insignia', 78.98, 'ES', '2011');

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO) VALUES ('Copas Inesqueciveis',	'Marco Alcantara', 'M',	'200', 'Larson', 130.98, 'RS', '2018');

INSERT INTO LIVROS (LIVRO, AUTOR, SEXO_AUTOR, NUMERO_PAGINAS, NOME_EDITORA, VALOR_LIVRO, UF_EDITORA, ANO_PUBLICACAO) VALUES ('O poder da mente', 'Clara Mafra', 'F', '120',	'Continental', 56.58, 'SP', '2017');

/*
RESULTADO:

SELECT * FROM LIVROS

+---------------------+-------------------+------------+----------------+--------------+-------------+------------+----------------+
| LIVRO               | AUTOR             | SEXO_AUTOR | NUMERO_PAGINAS | NOME_EDITORA | VALOR_LIVRO | UF_EDITORA | ANO_PUBLICACAO |
+---------------------+-------------------+------------+----------------+--------------+-------------+------------+----------------+
| CAVALEIRO REAL      | ANA CLAUDIA       | F          | 465            | ATLAS        |       49.90 | RJ         | 2009           |
| SQL PARA LEIGOS     | JOÃO NUNES        | M          | 450            | ADDISON      |       98.00 | SP         | 2018           |
| RECEITAS CASEIRAS   | CELIA TAVARES     | F          | 210            | ATLAS        |       45.00 | RJ         | 2008           |
| PESSOAS EFETIVAS    | EDUARDO SANTOS    | M          | 390            | BETA         |       78.99 | RJ         | 2018           |
| HÁBITOS SAUDÁVEIS   | EDUARDO SANTONS   | M          | 630            | BETA         |      150.98 | RJ         | 2019           |
| A CASA MARROM       | HERMES MACEDO     | M          | 250            | BUBBA        |       60.00 | MG         | 2016           |
| ESTÁCIO QUERIDO     | GERALDO FRANCISCO | M          | 310            | INSIGNIA     |      100.00 | ES         | 2015           |
| Pra sempre amigas   | Leda Silva        | F          | 510            | Insignia     |       78.98 | ES         | 2011           |
| Copas Inesqueciveis | Marco Alcantara   | M          | 200            | Larson       |      130.98 | RS         | 2018           |
| O poder da mente    | Clara Mafra       | F          | 120            | Continental  |       56.58 | SP         | 2017           |
+---------------------+-------------------+------------+----------------+--------------+-------------+------------+----------------+
*/

/*O cliente Tera Comércio de Produtos S.A, solicitou a modelagem de um banco de dados para cadastro dos seus clientes.
A função da Unidados é a análise dos requisitos junto aos usuários para a correta construção do produto. O cliente deseja que
inicialmente os scripts sejam construídos para o Banco de Dados MySQL, porém, posteriormente pode haver mudança no ambiente e
consequentemente adaptação dos scripts para outros produtos de SGBD.
O cliente não quer nenhuma informação relativa à vendas ou estoque, desejando somente as informações primárias de Clientes.


O nosso cliente solicitou uma tabela para armazenar os livros que são comercializados pela empresa. A solicitação é somente para
livros e não há a necessidade de realizar busca em outras tabelas. Hoje há um funcionário de vendas que tem uma tabela do Excel 
para guardar esses registros, mas as buscas estão ficando complexas. Decidiu-se então criar um banco de dados separado para esse funcionário.
Após a criação da tabela, deveremos entregar algumas queries prontas para que sejam enviadas para o programador. As queries são as seguintes:

1 – Trazer todos os dados.
2 – Trazer o nome do livro e o nome da editora
3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
5 – Trazer os valores dos livros das editoras de São Paulo.
6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).
*/

/*1 - TRAZER TODOS OS DADOS*/

SELECT * FROM LIVROS;

/*
mysql> SELECT * FROM LIVROS;
+---------------------+-------------------+------------+----------------+--------------+-------------+------------+----------------+
| LIVRO               | AUTOR             | SEXO_AUTOR | NUMERO_PAGINAS | NOME_EDITORA | VALOR_LIVRO | UF_EDITORA | ANO_PUBLICACAO |
+---------------------+-------------------+------------+----------------+--------------+-------------+------------+----------------+
| CAVALEIRO REAL      | ANA CLAUDIA       | F          | 465            | ATLAS        |       49.90 | RJ         | 2009           |
| SQL PARA LEIGOS     | JOÃO NUNES        | M          | 450            | ADDISON      |       98.00 | SP         | 2018           |
| RECEITAS CASEIRAS   | CELIA TAVARES     | F          | 210            | ATLAS        |       45.00 | RJ         | 2008           |
| PESSOAS EFETIVAS    | EDUARDO SANTOS    | M          | 390            | BETA         |       78.99 | RJ         | 2018           |
| HÁBITOS SAUDÁVEIS   | EDUARDO SANTONS   | M          | 630            | BETA         |      150.98 | RJ         | 2019           |
| A CASA MARROM       | HERMES MACEDO     | M          | 250            | BUBBA        |       60.00 | MG         | 2016           |
| ESTÁCIO QUERIDO     | GERALDO FRANCISCO | M          | 310            | INSIGNIA     |      100.00 | ES         | 2015           |
| Pra sempre amigas   | Leda Silva        | F          | 510            | Insignia     |       78.98 | ES         | 2011           |
| Copas Inesqueciveis | Marco Alcantara   | M          | 200            | Larson       |      130.98 | RS         | 2018           |
| O poder da mente    | Clara Mafra       | F          | 120            | Continental  |       56.58 | SP         | 2017           |
+---------------------+-------------------+------------+----------------+--------------+-------------+------------+----------------+
*/

/*2 - TRAZER O NOME DO LIVRO E O NOME DA EDITORA*/

SELECT LIVRO, NOME_EDITORA FROM LIVROS;

/*
+---------------------+--------------+
| LIVRO               | NOME_EDITORA |
+---------------------+--------------+
| CAVALEIRO REAL      | ATLAS        |
| SQL PARA LEIGOS     | ADDISON      |
| RECEITAS CASEIRAS   | ATLAS        |
| PESSOAS EFETIVAS    | BETA         |
| HÁBITOS SAUDÁVEIS   | BETA         |
| A CASA MARROM       | BUBBA        |
| ESTÁCIO QUERIDO     | INSIGNIA     |
| Pra sempre amigas   | Insignia     |
| Copas Inesqueciveis | Larson       |
| O poder da mente    | Continental  |
+---------------------+--------------+
*/

/*3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.*/

SELECT LIVRO, UF_EDITORA FROM LIVROS WHERE SEXO_AUTOR = 'M';

/*
mysql> SELECT LIVRO, UF_EDITORA FROM LIVROS WHERE SEXO_AUTOR = 'M';
+---------------------+------------+
| LIVRO               | UF_EDITORA |
+---------------------+------------+
| SQL PARA LEIGOS     | SP         |
| PESSOAS EFETIVAS    | RJ         |
| HÁBITOS SAUDÁVEIS   | RJ         |
| A CASA MARROM       | MG         |
| ESTÁCIO QUERIDO     | ES         |
| Copas Inesqueciveis | RS         |
+---------------------+------------+
*/

/*4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.*/

SELECT LIVRO, NUMERO_PAGINAS FROM LIVROS WHERE SEXO_AUTOR = 'F';

/*
+-------------------+----------------+
| LIVRO             | NUMERO_PAGINAS |
+-------------------+----------------+
| CAVALEIRO REAL    | 465            |
| RECEITAS CASEIRAS | 210            |
| Pra sempre amigas | 510            |
| O poder da mente  | 120            |
+-------------------+----------------+
*/

/*5 – Trazer os valores dos livros das editoras de São Paulo.*/

SELECT VALOR_LIVRO, UF_EDITORA FROM LIVROS WHERE UF_EDITORA = 'SP';

/*6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).*/

SELECT AUTOR, SEXO_AUTOR FROM LIVROS WHERE SEXO_AUTOR = 'M' AND (UF_EDITORA = 'SP' OR UF_EDITORA = 'RJ');
