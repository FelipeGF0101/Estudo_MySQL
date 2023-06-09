/*FILTRAR POR LINHA 

UTILIZANDO O COMANDO WHERE(ONDE)

ENQUANTO O SELECT FAZ A PROJEÇÃO, O WHERE FAZ A SELEÇÃO

*/

/* FILTRANDO */
SELECT NOME, SEXO, FROM CLIENTE WHERE SEXO = 'M';

SELECT NOME, ENDERECO FROM CLIENTE WHERE SEXO = 'F';

SELECT NOME, SEXO FROM CLIENTE WHERE ENDERECO = 'RJ';
/*RESULTADO:
mysql> SELECT NOME, SEXO FROM CLIENTE WHERE ENDERECO = 'RJ';
Empty set (0.00 sec)

DEU UM SET VAZIO PORQUE QUANDO SE O USA O '=' A INFORMAÇÃO DEVE SER EXATAMENTE IGUAL AO QUE CONSTA NO BANCO DE DADOS.

*/

/* UTILIZANDO O LIKE */

SELECT NOME, SEXO FROM CLIENTE WHERE ENDERECO LIKE 'RJ';
/*ESSSA É UMA FORMA DE BUSCA POR APROXIMAÇÃO

PORÉM, O LIKE TRABALHA COM CARACTER CORINGA %.

O % QUER DIZER 'QUALQUER COISA'. NESTE CASO, O 'RJ' SE ENCONTRA NO FINAL DO CAMPO ENDERECO, ENTÃO DEVE-SE UTILIZAR
DA SEGUINTE FORMA:

*/

SELECT NOME, SEXO FROM CLIENTE WHERE ENDERECO LIKE '%RJ';

/*OU SEJA, O ENDEREÇO COMEÇA COM %(QUALQUER COISA) ANTES DO 'RJ'*/

/*DA MESMA FORMA:*/

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE ENDERECO LIKE 'OSCAR CURY%';
/*O ENDEREÇO COMEÇA COM 'OSCAR CURY', MAS EU NÃO SEI O RESTANTE.*/

/*
RESULTADO:

+-------+------+-----------------------------------------------+
| NOME  | SEXO | ENDERECO                                      |
+-------+------+-----------------------------------------------+
| JORGE | M    | OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG |
+-------+------+-----------------------------------------------+
1 row in set (0.00 sec)
*/

/*QUANDO VOCÊ PROCURA UMA INFORMAÇÃO QUE SE ENCONTRA ENTRE O MEIO E FIM*/
SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE ENDERECO LIKE '%CENTRO%';