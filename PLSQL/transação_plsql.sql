-- Controle de Transa��o. Comandos DML

/*
 Uma transa��o de banco de dados consiste em:
 
 - Um conjunto de comandos DML
 - Um comando DDL
 - Um comando DCL
 
 ROLLBACK TO SAVEPOINT nomedosavepoint
*/

SET SERVEROUTPUT ON

DECLARE
 vEmployee_id  employees.employee_id%type := 150;
 
BEGIN
 UPDATE employees                   -- Inicio da transa��o
 SET   salary = 15000
 WHERE  employee_id = vEmployee_id;
 
 COMMIT;                            -- Fim da transa��o
 
END;

--SELECT * FROM employees WHERE employee_id = 150;
