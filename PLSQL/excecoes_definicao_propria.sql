-- Exceções Definidas pelo Desenvolvedor.

SET SERVEROUTPUT ON
SET VERIFY OFF

ACCEPT pEmployee_id PROMPT 'Digite o Id do empregado: '

DECLARE
 vFirst_name  employees.first_name%TYPE;
 vLast_name   employees.last_name%TYPE;
 vJob_id      employees.job_id%TYPE;
 vEmployee_id employees.employee_id%TYPE := &pEmployee_id;
 ePresident   EXCEPTION;
 
BEGIN
 SELECT first_name, last_name, job_id, employee_id 
 INTO vFirst_name, vLast_name, vJob_id, vEmployee_id
 FROM employees
 WHERE employee_id = vEmployee_id;
 
 IF vJob_id = 'AD_PRES'
 THEN
      RAISE ePresident;
 
 END IF;
 
EXCEPTION
 WHEN NO_DATA_FOUND
 THEN
     RAISE_APPLICATION_ERROR(-20001, 'Empregado não encontrado, id = '|| TO_CHAR(vEmployee_id));
  
 WHEN ePresident
 THEN
      UPDATE employees
      SET    salary = salary * 1.5
      WHERE  employee_id = vEmployee_id;
      COMMIT;
  
 WHEN OTHERS
 THEN
      RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle ' || SQLCODE || SQLERRM);
                      
END;
