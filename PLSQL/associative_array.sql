-- Collections - Associative Array

/*
 DECLARE
 
 TYPE nome_tipo_tabela IS TABLE OF NUMBER > TYPE... IS TABLE OF... Principal definição de uma Associative Array.
 INDEX BY BINARY_INTEGER;
 
 nome_variavel_table  nome_tipo_table;
 
 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
*/

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
 -- A baixo a declaraão de um associative array.
 TYPE numero_table_type IS TABLE OF NUMBER(2)
 INDEX BY BINARY_INTEGER;
 
 Numero_table  numero_table_type;
 
BEGIN
 FOR i IN 1..10 LOOP
     Numero_table(i) := i;
     
 END LOOP;
 
 FOR i IN 1..10 LOOP
     DBMS_OUTPUT.PUT_LINE('Associative Array. Indice = ' || TO_CHAR(i) || ', Valor = ' || TO_CHAR(Numero_table(i)));
     
 END LOOP;
 
END;
