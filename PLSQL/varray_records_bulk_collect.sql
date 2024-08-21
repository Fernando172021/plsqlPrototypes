-- Varray of Records Bulk Collect um novo tipo de array.

/*
 Precisa ser inicializado
 Precisa ser definido com tamanho maximo.
*/

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
 TYPE employees_table_type IS VARRAY (200) OF employees%rowtype;
 
 employees_table employees_table_type := employees_table_type();
 
BEGIN
 SELECT *
 BULK COLLECT INTO employees_table
 FROM employees;
 
 FOR i IN employees_table.first..employees_table.last LOOP
  DBMS_OUTPUT.PUT_LINE(employees_table(i).employee_id   || ' - ' ||
                       employees_table(i).first_name   || ' - ' ||
                       employees_table(i).last_name    || ' - ' ||
                       employees_table(i).phone_number || ' - ' ||
                       employees_table(i).job_id       || ' - ' ||
                       TO_CHAR(employees_table(i).salary));
                       
 END LOOP;

END;
