-- IF em PL/SQL

/*
 Sintaxe do comando IF:
 
 !!!Tudo que está entre chaves "[]" é opcional!!!
 
 IF [NOT] {expressão | booleano}
          [[AND | OR]
          {expressão | booleano}]...
 THEN
    -- bloco de comandos
 [ELSE
    -- bloco de comandos
 ]
 END IF;
 
 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
 
 Comando ACCEPT - SQLPLUS
 
 O comando ACCEPT gera  um input para dentro de uma variavel.
 
 Para refencialo no bloco anonimo basta colocar o simblo e-comercial "&" 
 antes do nome da variavel declarada no ACCEPT.
 
 Sintaxe:
 
 ACCEPT nomeDaVariavel PROMPT 'Digite o texto do prompt'
*/

SET SERVEROUTPUT ON

ACCEPT pDepartment_id PROMPT 'Digite o ID do departamento: '

DECLARE
 vPercentual NUMBER(3);
 vDepartment_id employees.department_id%type := &pDepartment_id;
 
BEGIN
 IF vDepartment_id = 80 -- Sales
 THEN 
    vPercentual := 10;
    
 ELSIF vDepartment_id = 20 -- Marketing
    THEN
      vPercentual := 15;
      
    ELSIF vDepartment_id = 60 -- IT
      THEN
         vPercentual := 20;
      ELSE
         vPercentual := 5;
 END IF;
 
 DBMS_OUTPUT.PUT_LINE('Id do departamento: ' || vDepartment_id);
 DBMS_OUTPUT.PUT_LINE('Percentual: ' || vPercentual);
 
 UPDATE employees
 SET salary = salary * (1 + vPercentual / 100)
 WHERE department_id = vDepartment_id;
 
 COMMIT;
END;

-- Qualquer comparação com um valor NULL retorna NULL.
