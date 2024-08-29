-- Controlando Cursor Explicito utilizando Cursor FOR LOOP

/*
 A estrutura FOR LOOP � mais otimizada que a estrutura de declara��o de CURSOR
 padr�o, sendo de sintaxe mais simples.
 
 * Na estrutura FOR em  FOR LOOP a declara��o da  variavel RECORD �  feita
   altomaticamente, sem necessidade de declara-l� na se��o DECLARE.
*/

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
 CURSOR employees_cursor IS 
  SELECT * FROM employees;
  
BEGIN
 FOR employees_record IN employees_cursor LOOP
  DBMS_OUTPUT.PUT_LINE(employees_record.employee_id  || ' - ' ||
                       employees_record.first_name   || ' - ' ||
                       employees_record.last_name    || ' - ' ||
                       employees_record.job_id       || ' - ' ||
                       employees_record.phone_number || ' - ' ||
                       TO_CHAR(employees_record.salary));
                    
 END LOOP;
 
END;

-- FOR LOOP em sub-consulta

/*
 Declarando o comando,anteriormente inserido no CURSOR, dentro da estrutura
 FOR LOOP.
*/

SET SERVEROUTPUT ON
SET VERIFY OFF

BEGIN
 FOR employees_record IN (SELECT * FROM employees) LOOP
  DBMS_OUTPUT.PUT_LINE(employees_record.employee_id  || ' - ' ||
                       employees_record.first_name   || ' - ' ||
                       employees_record.last_name    || ' - ' ||
                       employees_record.job_id       || ' - ' ||
                       employees_record.phone_number || ' - ' ||
                       TO_CHAR(employees_record.salary));
        
 END LOOP;
 
END;

