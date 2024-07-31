-- Inserindo Empregado

BEGIN
 INSERT INTO employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) 
 VALUES (300, 'Jon', 'Marchon', 'blabla@pra.com', '55 99888 4534', SYSDATE, 'IT_PROG', 10000, 0.4, 103, 60);
 
 SAVEPOINT creatPerson;
 
 UPDATE employees
 SET salary = 15000
 WHERE job_id = 'IT_PROG';
 
 ROLLBACK TO creatPerson;
 
 COMMIT;
 
END;

--SELECT * FROM employees WHERE job_id = 'IT_PROG';

--DELETE FROM employees WHERE employee_id = 300;