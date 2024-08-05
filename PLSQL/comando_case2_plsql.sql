-- Comando CASE
/*
 Sintaxe do comando CASE com variação...
 
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
 vDepartment_id  employees.department_id%type := &pDepartment_id;
 vPercentual     NUMBER(3);
 
BEGIN
 CASE 
 WHEN vDepartment_id = 80 
 THEN -- Saler
      vPercentual := 10;
      
 WHEN vDepartment_id = 60 
 THEN -- IT
      vPercentual := 20;
      
 WHEN vDepartment_id = 20 
 THEN -- Marketing
      vPercentual := 15;
      
 ELSE
      vPercentual := 5;
      
 END CASE;
 
 DBMS_OUTPUT.PUT_LINE('Id do departamento: ' || vDepartment_id);
 DBMS_OUTPUT.PUT_LINE('Percentual: ' || vPercentual);
 
 UPDATE employess
 SET salary = salary * (1 + vPercentual / 100)
 WHERE department_id = vDepartment_id;
 -- COMMIT;
 
END;
