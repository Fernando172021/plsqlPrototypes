/*
 Associative Array
 
 BULK COLLECT.. pesquisar sobre o comando.
*/

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
 TYPE employee_table_type IS TABLE OF employees%ROWTYPE
 INDEX BY BINARY_INTEGER;  -- Type Associative Array.
 
 employees_table  employee_table_type;
 
BEGIN
 SELECT * 
 BULK COLLECT INTO employees_table -- Carregando automaticamente todo a estrutura de indice.
 FROM employees;
 
 FOR i IN employees_table.first..employees_table.last
 LOOP
  DBMS_OUTPUT.PUT_LINE(employees_table(i).employee_id  || ' - ' ||
                       employees_table(i).first_name   || ' - ' ||
                       employees_table(i).last_name    || ' - ' ||
                       employees_table(i).phone_number || ' - ' ||
                       employees_table(i).job_id       || ' - ' ||
                       TO_CHAR(employees_table(i).salary));
 END LOOP;
 
END;
