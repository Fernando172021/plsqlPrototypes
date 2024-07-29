-- Comando INSERT em PL/SQL

/*
 Utilizando o PL/SQL para gerar transações no BD. Sintaxe padrão do comando INSERT.
*/

SET SERVEROUTPUT ON

DECLARE
 vFirst_name employees.first_name%type;
 vLast_name  employees.last_name%type;
 vSalary     employees.salary%type;

BEGIN
 INSERT INTO employees (employee_id, first_name, last_name, salary, email, hire_date, job_id) 
 VALUES (employees_seq.nextval, 'Kope', 'Bryant', 1000, 'blabla@bla.com', '02/05/2005', 'IT_PROG');
 
 COMMIT;
 
END;

--SELECT * FROM employees WHERE employee_id = 210;
