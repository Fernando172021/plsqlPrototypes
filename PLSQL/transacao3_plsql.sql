-- Uso do ROLLBACK

SET SERVEROUTPUT ON

DECLARE 
 vEmployee_id  employees.employee_id%type := 150;
 
BEGIN
 UPDATE employees                    --Inicio da transa��o
 SET salary = 35000
 WHERE employee_id = vEmployee_id;
 
 ROLLBACK;                           --Descarte da Transa��o
 
END;

SELECT * FROM employees WHERE employee_id = 150;