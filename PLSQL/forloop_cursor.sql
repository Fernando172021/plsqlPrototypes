-- Controlando Cursor Explicito utilizando Cursor FOR LOOP

/*
 A estrutura FOR LOOP é mais otimizada que a estrutura de declaração de CURSOR
 padrão, sendo de sintaxe mais simples.
 
 * Na estrutura FOR em  FOR LOOP a declaração da  variavel RECORD é  feita
   altomaticamente, sem necessidade de declara-lá na seção DECLARE.
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

