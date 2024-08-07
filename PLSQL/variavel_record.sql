-- Variavel Tipo Record

-- SET VERIFY OFF... Comando que desabilita a impressão do bloco antes da exucução.

/*
 Variaveis do tipo Record são feitas para armazenar sub categorias na memoria.
 
 Variavel: cidade > bairo > Rua > Número
 
 Sintaxe da Variavel Record:
 
 DECLARE
  TYPE nome_tipo_record IS RECORD
       (campo1 [, campo2]...)
       
  nome_variavel_record nome_tipo_record;
*/

SET SERVEROUTPUT ON
SET VERIFY OFF
ACCEPT pEmployee_id PROMPT 'Digite o Id do empregado: '

DECLARE
 TYPE employees_record_type IS RECORD            -- Realizando o estruturamento do Record
      (employee_id  employees.employee_id%type,
       first_name   employees.first_name%type,
       last_name    employees.last_name%type,
       email        employees.email%type,
       phone_number employees.phone_number%type);
       
 employee_record  employees_record_type;         -- Registrando a varivel employee_record com a estrutura anterior.
 
BEGIN
 SELECT employee_id, first_name, last_name, email, phone_number
 INTO   employee_record
 FROM   employees
 WHERE  employee_id = &pEmployee_id;
 
 DBMS_OUTPUT.PUT_LINE(employee_record.employee_id  || ' - ' ||
                      employee_record.first_name   || ' - ' ||
                      employee_record.last_name    || ' - ' ||
                      employee_record.email        || ' - ' ||
                      employee_record.phone_number);
                      
END;
