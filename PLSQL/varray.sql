-- Varray um novo tipo de array.

/*
 Precisa ser inicializado
 Precisa ser definido com tamanho maximo.
*/

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
 TYPE numero_table_type IS VARRAY (10) OF INTEGER (2);
 
 numero_table numero_table_type := numero_table_type();
 
BEGIN
 FOR i IN 1..10 LOOP
  numero_table.extend; --.extend aloca uma ocorrencia no array/varray
  numero_table(i) := i;
  
 END LOOP;
 
 FOR i IN  1..10 LOOP
  DBMS_OUTPUT.PUT_LINE('Varray, Indice = ' || TO_CHAR(i) || ', Valor = ' || TO_CHAR(numero_table(i)));
  
 END LOOP;
 
END;
