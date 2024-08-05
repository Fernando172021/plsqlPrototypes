-- Comando CASE
/*
 Sintaxe do comando CASE...
 
  CASE [TRUE | [variavel]]
  WHEN [criterio | expressão1 THEN
       criteiro1_comandos;
  WHEN [criterio | expressão2 THEN
       criterio2_comandos;
  WHEN [criterion | expressãon THEN
       criterion_comandos;
  ELSE
       else_comandos;
  END CASE;
  
*/

SET SERVEROUTPUT ON
ACCEPT pDepartment_id PROMPT 'Digite o Id do departamento: '

DECLARE
 vPercentual NUMBER(3);
 vDepartment_id employees.department_id%type := &pDepartment_id;
 
BEGIN
 CASE vDepartment_id
 WHEN 80
 THEN 
      vPercentual := 10; -- Sales
 
 WHEN 60
 THEN 
      vPercentual := 20; -- Marketing
      
 WHEN 20
 THEN
      vPercentual := 15; -- IT
      
 ELSE
      vPercentual := 5;
      
 END CASE;
 
 DBMS_OUTPUT.PUT_LINE('Id do departamento: ' || vDepartment_id);
 DBMS_OUTPUT.PUT_LINE('Percentual: ' || vPercentual);
 
 UPDATE employees
 SET salary = salary * (1 + vPercentual / 100)
 WHERE department_id = vDepartment_id;
 --COMMIT;

END;

