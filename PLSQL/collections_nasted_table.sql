-- Collection Nasted Table

/*
 Estruturas unidimencionais. Array de uma direção.
*/

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
 TYPE Numero_table_type IS TABLE OF INTEGER(2);
 
 Numero_table  Numero_table_type := Numero_table_type();
 
BEGIN
 FOR i IN 1..10 LOOP
  Numero_table.extend;
  Numero_table(i) := i;
  
 END LOOP;
 
 FOR i IN 1..10 LOOP
  DBMS_OUTPUT.PUT_LINE('Nastad Table value = ' || TO_CHAR(i) || ' Valor = ' || TO_CHAR(Numero_table(i)));
 
 END LOOP;
 
END;

 