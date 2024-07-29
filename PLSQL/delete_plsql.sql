-- Comando DELETE em PL/SQL

SET SERVEROUTPUT ON

DECLARE
 vEmployee_id employees.employee_id%type := 210;

BEGIN 
 DELETE FROM employees
 WHERE       employee_id = vEmployee_id;
 
 COMMIT;
 
END;

--SELECT * FROM employees WHERE employee_id = 210;
