/*
DELETANDO REGISTROS COM A CLÁUSULA DELETE

*/

DELETE FROM CLIENTE;

SELECT COUNT(*) FROM CLIENTE; -- TOTAL = 6

SELECT COUNT(*) FROM CLIENTE WHERE NOME = 'ANA'; -- TOTAL ANA = 1

DELETE FROM CLIENTE WHERE NOME = 'ANA'; -- TOTAL DEVE SER IGUAL A 1

SELECT COUNT(*) FROM CLIENTE; -- TOTAL AGORA É 5

/* COMO DELETAR UM ITEM DA TABELA QUANDO TEM VALORES IGUAIS (NOME IGUAL POR EXEMPLO)*/

INSERT INTO CLIENTE VALUES ('CARLA', 'F', 'C.LOPES@UOL.COM', 45638854, '4575-0048', 'RUA COPPER LEAF - WILLIAMSBURG - KITCHENER');

DELETE FROM CLIENTE WHERE NOME = 'CARLA' OR EMAIL = 'CARLA@BOL.COM.BR';

SELECT * FROM CLIENTE WHERE NOME = 'CARLA' OR EMAIL = 'CARLA@BOL.COM.BR'; -- OR TRAZ TODO MUNDO COM AO UMA DAS DUAS CONDIÇÕES

/*
DESSA FORMA, TODOS ESTES ITENS SERIAM DELETADOS:

mysql> SELECT * FROM CLIENTE WHERE NOME = 'CARLA' OR EMAIL = 'CARLA@BOL.COM.BR';
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| NOME   | SEXO | EMAIL              | CPF       | TELEFONE  | ENDERECO                                      |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
| LILIAN | F    | LILIAN@HOTMAIL.COM | 887774856 | 947785696 | SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ |
| CARLA  | F    | CARLA@BOL.COM.BR   |   7745828 | 66587458  | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG   |
| CARLA  | F    | C.LOPES@UOL.COM    |  45638854 | 4575-0048 | RUA COPPER LEAF - WILLIAMSBURG - KITCHENER    |
+--------+------+--------------------+-----------+-----------+-----------------------------------------------+
*/

DELETE FROM CLIENTE WHERE NOME = 'CARLA' AND EMAIL = 'CARLA@BOL.COM.BR';

SELECT * FROM CLIENTE WHERE NOME = 'CARLA' AND EMAIL = 'CARLA@BOL.COM.BR'; -- AND TRAZ APENAS O REGISTRO QUE SATISFAÇA AS DUAS CONDIÇÕES

/*
mysql> SELECT * FROM CLIENTE WHERE NOME = 'CARLA' AND EMAIL = 'CARLA@BOL.COM.BR';
+-------+------+------------------+---------+----------+---------------------------------------------+
| NOME  | SEXO | EMAIL            | CPF     | TELEFONE | ENDERECO                                    |
+-------+------+------------------+---------+----------+---------------------------------------------+
| CARLA | F    | CARLA@BOL.COM.BR | 7745828 | 66587458 | SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG |
+-------+------+------------------+---------+----------+---------------------------------------------+
*/