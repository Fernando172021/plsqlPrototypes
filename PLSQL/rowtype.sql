-- Atributo %ROWTYPE

/*
 Sintaxe:
 
 DECLARE
 employee_record  employees%ROWTYPE;

*/

SET SERVEROUTPUT ON
SET VERIFY OFF
ACCEPT pEmployee_id PROMPT 'Digite o Id do funcionario: ' 

DECLARE
 employee_record employees%rowtype;
 
BEGIN
 SELECT *
 INTO   employee_record
 FROM   employees
 WHERE  employee_id = &pEmployee_id;
 
 DBMS_OUTPUT.PUT_LINE(employee_record.employee_id || ' - ' ||
                      employee_record.first_name  || ' - ' ||
                      employee_record.last_name   || ' - ' ||
                      employee_record.email       || ' - ' ||
                      employee_record.phone_number);
 
END;
