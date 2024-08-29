-- Cursor Explicito SELECT FOR UPDATE

/*
 Por ser um FOR UPDATE ele ira fazer LOOK nas linhas que foram selecionadas.
 Utilize com muita caltela para não danificar a performance das outras 
 aplicações.
*/

SET SERVEROUTPUT ON 
SET VERIFY OFF

DECLARE
 CURSOR employees_cursor (pJob_id VARCHAR2) IS
  SELECT * FROM employees WHERE job_id = pJob_id
  FOR UPDATE;
  
BEGIN
 FOR employees_record IN employees_cursor('AD_VP') LOOP
  UPDATE employees SET salary = salary * (1 + 10 / 100)
  WHERE CURRENT OF employees_cursor;
  
 END LOOP;
 
 COMMIT;
 
END;
