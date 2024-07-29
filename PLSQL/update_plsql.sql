-- Comando UPDATE EM PL/SQL

SET SERVEROUTPUT ON

DECLARE
 vEmployee_id employees.employee_id%type := 210;
 vPercentual NUMBER(3) := 10;
 
BEGIN
 UPDATE employees
 SET    salary = salary * (1 + vPercentual / 100)
 WHERE  employee_id = vEmployee_id;
 
 COMMIT;
 
END;

--SELECT * FROM employees WHERE employee_id = 210;
