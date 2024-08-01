-- Cursor Impl�cito

/*
 O que � um cursor?
 
 Toda vez em que um comando SQL � executado, o servidor Oracle abre uma
 �rea de mem�ria, na qual o comando � analizado e executado. 
 Esta �rea � um cursor. - Cursor Impl�cito
 
 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
 
 Atributos de Cursor
 
 SQL%ROWCOUNT = Numero de linhas afetadas pelo cursor
 SQL%FOUND    = Retorna TRUE se o cursor afetou uma ou mais linhas
 SQL%NOTFOUND = Retorna TRUE se o cursor n�o afetou uma ou mais linhas
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
 
 DBMS_OUTPUT.PUT_LINE('N�mero de linhas afetadas pelo cursor: ' || SQL%ROWCOUNT);
-- COMMIT;
END;

-- ROLLBACK;
