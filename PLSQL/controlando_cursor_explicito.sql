-- Controlando um Cursor Explicito

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
 CURSOR employees_cursor IS
 SELECT * FROM employees;
 
 employees_record employees_cursor%rowtype; --Declarando uma variavel record.
 
BEGIN
 OPEN employees_cursor;
 
 LOOP 
  FETCH employees_cursor
  INTO  employees_record;
  
  EXIT WHEN employees_cursor%notfound;
  
  DBMS_OUTPUT.PUT_LINE(employees_record.employee_id  || ' - ' ||
                       employees_record.first_name   || ' - ' ||
                       employees_record.last_name    || ' - ' ||
                       employees_record.job_id       || ' - ' ||
                       employees_record.phone_number || ' - ' ||
                       TO_CHAR(employees_record.salary));
                       
 END LOOP;
 
 CLOSE employees_cursor;
 
END;
