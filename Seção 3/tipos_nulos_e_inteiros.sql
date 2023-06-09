/*  Inserindo dados e valores nulos */
USE PROJETO;

/*MOSTRANDO AS TABELAS */
SHOW TABLES;

/* exibindo a estrutura de uma tabela */
DESC CLIENTE;

/* FORMA 1 - OMITINDO AS COLUNAS */
/*SINTAXE BÁSICA DE INSERÇÃO - INSERT INTO TABELA... */
/*QUANDO SE OMITE AS COLUNAS, A INSERÇÃO DE DADOS DEVE SER EXATAMENTE PROPORCIONAL AO NÚMERO DE COLUNAS. 
CASO NÃO TENHA O VALOR PARA INSERIR, DEVE UTILIZAR O 'NULL'*/

INSERT INTO CLIENTE VALUES ('JOAO', 'M', 'JOAO@GMAIL.COM', 988638273, '22923110', 'MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');
INSERT INTO CLIENTE VALUES ('CELIA', 'F', 'CELIA@GMAIL.COM', 541521456, '25078869', 'RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');
INSERT INTO CLIENTE VALUES ('JORGE', 'M', NULL, 885755896, '58748895', 'OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');

/* FORMA 2 - COLOCANDO AS COLUNAS */
/*PASSO O NOME DAS COLUNAS ANTES E NA ORDEM QUE EU QUISER, ASSIM EVITA-SE A INSERÇÃO INCORRETA*/
/* A MELHOR FORMA DE USAR */
INSERT INTO CLIENTE (NOME, SEXO, ENDERECO, TELEFONE, CPF) VALUES ('LILIAN', 'F', 'SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ','947785696', 887774856);

/* FORMA 3 - INSERT COMPACTO - SOMENTE MYSQL */
/* ESSA FORMA SÓ FUNCIONA COM O MYSQL!!!!!*/
INSERT INTO CLIENTE VALUES ('ANA', 'F', 'ANA@GLOBO.COM', 85548962, '548556985', 'PRES ANTONIO CARLOS - CENTRO - SÃO PAULO - SP'),
                        ('CARLA','F','CARLA@TERATI.COM.BR',7745828,'66587458','SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');

INSERT INTO CLIENTE (NOME,SEXO,ENDERECO,TELEFONE,CPF) VALUES ('CLARA','F','SENADOR SOARES - TIJUCA - RIO DE JANEIRO -RJ','883665843',99999999999);
/* APESAR DO CPF (INT) ACEITAR 11 DÍGITOS, ELE TEM UM LIMITE DE VALOR. POR ISSO O '99999999999' RETORNA ERRO*/
/* RESUMINDO: SE NÃO FOR USAR O VALOR PARA CÁLCULOS, NÃO USE INT.*/


