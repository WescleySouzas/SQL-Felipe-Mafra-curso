/* SELECAO, PROJEÇAO E JUNCAO */

/* PROJECAO -> E TUDO QUE VOCE VE NA TELA */

SELECT NOW() AS DATA_ATUAL;

SELECT 2 + 2 AS SOMA;

SELECT 2 + 2 AS SOMA, NOME, NOW()
FROM CLIENTE;


/* SELECAO -> E UM SUBCONJUNTO DO CONJUNTO TOTAL DE REGISTROS DE UMA TABELA
A CLAUSULA DE SELECAO E O WHERE
*/

SELECT NOME, SEXO, EMAIL /* PROJECAO */
FROM CLIENTE /* ORIGEM */
WHERE SEXO = 'F'; /* SELECAO */

SELECT NUMERO
FROM TELEFONE
WHERE TIPO = 'CEL';

/* JUNCAO -> JOIN */

SELECT NOME, EMAIL, IDCLIENTE
FROM CLIENTE;

SELECT ID_CLIENTE, BAIRRO, CIDADE
FROM ENDERECO;

+---------+-------------------+-----------+
| NOME    | EMAIL             | IDCLIENTE |
+---------+-------------------+-----------+
| WESCLEY | WESCLEY@GLOBO.ORG |         1 |
| ANA     | ANA@IG.COM        |         2 |
| PAOLA   | PAOLA@GMAIL.ORG   |         3 |
| THAISSA | THAISSA@GMAIL.ORG |         4 |
| LUIZ    | LUIZ@ED.ORG       |         5 |
| JOAO    | JOAO@ED.ORG       |         6 |
+---------+-------------------+-----------+

+------------+----------+----------------+
| ID_CLIENTE | BAIRRO   | CIDADE         |
+------------+----------+----------------+
|          4 | CENTRO   | B. HORIZONTE   |
|          1 | CENTRO   | RIO DE JANEIRO |
|          3 | JARDINS  | SAO PAULO      |
|          2 | ESTACIO  | RIO DE JANEIRO |
|          6 | FLAMENGO | RIO DE JANEIRO |
|          5 | CENTRO   | VITORIA        |
+------------+----------+----------------+

SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTE T1, ENDERECO T2
WHERE T2.ID_CLIENTE = T1.IDCLIENTE;

+---------+------+----------+----------------+
| NOME    | SEXO | BAIRRO   | CIDADE         |
+---------+------+----------+----------------+
| WESCLEY | M    | CENTRO   | RIO DE JANEIRO |
| ANA     | F    | ESTACIO  | RIO DE JANEIRO |
| PAOLA   | F    | JARDINS  | SAO PAULO      |
| THAISSA | F    | CENTRO   | B. HORIZONTE   |
| LUIZ    | M    | CENTRO   | VITORIA        |
| JOAO    | M    | FLAMENGO | RIO DE JANEIRO |
+---------+------+----------+----------------+


/* WHERE = SELECAO */

SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTE T1, ENDERECO T2
WHERE T1.IDCLIENTE = T2.ID_CLIENTE
AND SEXO = 'F';

+---------+------+---------+----------------+
| NOME    | SEXO | BAIRRO  | CIDADE         |
+---------+------+---------+----------------+
| ANA     | F    | ESTACIO | RIO DE JANEIRO |
| PAOLA   | F    | JARDINS | SAO PAULO      |
| THAISSA | F    | CENTRO  | B. HORIZONTE   |
+---------+------+---------+----------------+


SELECT NOME, SEXO, BAIRRO, CIDADE
FROM CLIENTE T1 INNER JOIN ENDERECO T2
ON T1.IDCLIENTE = T2.ID_CLIENTE;

+---------+------+----------+----------------+
| NOME    | SEXO | BAIRRO   | CIDADE         |
+---------+------+----------+----------------+
| WESCLEY | M    | CENTRO   | RIO DE JANEIRO |
| ANA     | F    | ESTACIO  | RIO DE JANEIRO |
| PAOLA   | F    | JARDINS  | SAO PAULO      |
| THAISSA | F    | CENTRO   | B. HORIZONTE   |
| LUIZ    | M    | CENTRO   | VITORIA        |
| JOAO    | M    | FLAMENGO | RIO DE JANEIRO |
+---------+------+----------+----------------+
 

SELECT NOME, SEXO, BAIRRO, CIDADE /* PROJECAO */
FROM CLIENTE T1 INNER JOIN ENDERECO T2 /* ORIGEM E JUNCAO */
ON T1.IDCLIENTE = T2.ID_CLIENTE 
WHERE SEXO = 'F'; /* SELECAO */

+---------+------+---------+----------------+
| NOME    | SEXO | BAIRRO  | CIDADE         |
+---------+------+---------+----------------+
| ANA     | F    | ESTACIO | RIO DE JANEIRO |
| PAOLA   | F    | JARDINS | SAO PAULO      |
| THAISSA | F    | CENTRO  | B. HORIZONTE   |
+---------+------+---------+----------------+

SELECT NOME, SEXO, EMAIL, TIPO, NUMERO
FROM CLIENTE T1 INNER JOIN TELEFONE T2
ON T1.IDCLIENTE = T2.ID_CLIENTE;


+---------+------+-------------------+------+----------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO   |
+---------+------+-------------------+------+----------+
| LUIZ    | M    | LUIZ@ED.ORG       | CEL  | 78458743 |
| LUIZ    | M    | LUIZ@ED.ORG       | RES  | 56576876 |
| WESCLEY | M    | WESCLEY@GLOBO.ORG | CEL  | 87866896 |
| ANA     | F    | ANA@IG.COM        | COM  | 54768899 |
| WESCLEY | M    | WESCLEY@GLOBO.ORG | RES  | 99667587 |
| PAOLA   | F    | PAOLA@GMAIL.ORG   | CEL  | 78989765 |
| PAOLA   | F    | PAOLA@GMAIL.ORG   | CEL  | 99766676 |
| WESCLEY | M    | WESCLEY@GLOBO.ORG | COM  | 66687899 |
| LUIZ    | M    | LUIZ@ED.ORG       | RES  | 89986668 |
| ANA     | F    | ANA@IG.COM        | CEL  | 88687909 |
+---------+------+-------------------+------+----------+



SELECT NOME, SEXO, BAIRRO, CIDADE, TIPO, NUMERO
FROM CLIENTE T1 INNER JOIN TELEFONE T2 
ON T1.IDCLIENTE = T2.ID_CLIENTE 
INNER JOIN ENDERECO T3
ON T3.ID_CLIENTE = T1.IDCLIENTE; 