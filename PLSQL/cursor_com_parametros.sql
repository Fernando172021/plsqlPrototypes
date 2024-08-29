--Cursor Explicito com Parâmetros.

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
 CURSOR employees_cursor (pDepartment_id NUMBER, pJob_id VARCHAR2) IS
  SELECT * FROM employees 
  WHERE department_id = pDepartment_id AND job_id = pJob_id;
 
BEGIN
  FOR employees_record IN employees_cursor(60, 'IT_PROG') LOOP
   DBMS_OUTPUT.PUT_LINE(employees_record.employee_id   || ' - ' ||
                        employees_record.first_name    || ' - ' ||
                        employees_record.last_name     || ' - ' ||
                        employees_record.job_id        || ' - ' ||
                        employees_record.department_id || ' - ' ||
                        TO_CHAR(employees_record.salary));
            
  END LOOP;
  
END;
