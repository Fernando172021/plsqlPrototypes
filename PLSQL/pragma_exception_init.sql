DECLARE
 vFirst_name   employees.first_name%TYPE   := 'Robert';
 vLast_name    employees.last_name%TYPE    := 'Ford';
 vJob_id       employees.job_id%TYPE       := 'XX_YYYY';
 vPhone_number employees.phone_number%TYPE := '650.511.9844';
 vEmail        employees.email%TYPE        := 'RFORD';
 
 eFk_inexistente EXCEPTION;
 PRAGMA EXCEPTION_INIT(eFk_inexistente, -2291);
 
BEGIN
 INSERT INTO employees (employee_id, first_name, last_name, phone_number, email, hire_date, job_id)
 VALUES (employees_seq.nextval, vFirst_name, vLast_name, vPhone_number, vEmail, sysdate,vJob_id);
 COMMIT;

EXCEPTION
 WHEN eFk_inexistente
 THEN
      RAISE_APPLICATION_ERROR(-20003, 'Job inexistente!');
 WHEN OTHERS
 THEN
      RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle ' || SQLCODE || SQLERRM);
END;
