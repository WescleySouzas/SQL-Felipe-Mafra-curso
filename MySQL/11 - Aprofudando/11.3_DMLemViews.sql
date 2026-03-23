/* UPDATE, INSERT E DELETE - DML */

INSERT INTO V_RELATORIO VALUES(
    'ANDREIA', 'F', 'ANDREA@UOL.COM.BR', 'CEL', '873547864', 'CENTRO','VITORIA', 'ES'
);
ERROR 1394 (HY000): Can not insert into join view 'comercio.v_relatorio' without fields list


DELETE FROM V_RELATORIO WHERE NOME = 'JORGE';
ERROR 1395 (HY000): Can not delete from join view 'comercio.v_relatorio'


UPDATE V_RELATORIO SET NOME = 'PAOLA' WHERE NOME = 'ELAINE';
Rows matched: 1  Changed: 1  Warnings: 0