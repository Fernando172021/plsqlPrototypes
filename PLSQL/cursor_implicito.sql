-- Cursor Implícito

/*
 O que é um cursor?
 
 Toda vez em que um comando SQL é executado, o servidor Oracle abre uma
 área de memória, na qual o comando é analizado e executado. 
 Esta área é um cursor. - Cursor Implícito
 
 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
 
 Atributos de Cursor
 
 SQL%ROWCOUNT = Numero de linhas afetadas pelo cursor
 SQL%FOUND    = Retorna TRUE se o cursor afetou uma ou mais linhas
 SQL%NOTFOUND = Retorna TRUE se o cursor não afetou uma ou mais linhas
 etc...
*/

SET SERVEROUTPUT ON

DECLARE
 vDepartment_id employees.department_id%type := 60;
 vPercentual    NUMBER(3) := 10;
 
BEGIN
-- Comando UPDATE gera um cursor, pois sera executado...
 UPDATE employees
 SET salary = salary * (1 + vPercentual / 100)
 WHERE department_id = vDepartment_id; 
 
 DBMS_OUTPUT.PUT_LINE('Número de linhas afetadas pelo cursor: ' || SQL%ROWCOUNT);
-- COMMIT;
END;

-- ROLLBACK;
