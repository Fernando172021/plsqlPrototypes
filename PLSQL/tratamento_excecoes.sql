-- Tratamento de Exce��es Pr�-definidas

/*
 Exce��es mais recorrentes: TOO_MANY_ROWS -- SELECT que retorna mais de uma linha no bloco PL/SQL.
                            NO_DATA_FOUND -- SELECT que n�o retorna nenhuma informa��o.
                            
 ------------------------------------------------------------------------------------------------------------------------
 
 Tabela de tipicos erros Pr�-Definidos ORACLE.
 
 DUP_VAL_ON_INDEX    - ORA-00001 - Tentativa de inserir um valor duplicado em um �ndice �nico.
 INVALID_CURSOR      - ORA-01001 - Ocorreu uma opera��o ilegal em um cursor.
 INVALID_NUMBER      - ORA-01722 - Falha na convers�o de um string para caracter numerico.
 LOGIN_DENIED        - ORA-01017 - Conex�o ao ORACLE com um nome de usuario e / ou senha invalida.
 NO_DATA_FOUND       - ORA-01403 - SELECT do tipo single-row n�o retornou nenhuma linha.
 NOT_LOGGED_ON       - ORA-01012 - Programa PL/SQL executou uma chamada de banco de dados sem estar conectado ao ORACLE.
 COLLECTION_IS_NULL  - ORA-06531 - Tentativa de aplicar m�todos que n�o o EXISTS para uma Collection n�o inicializada.
 CURSOR_ALREADY_OPEN - ORA-06511 - Tentativa de abrir um Cursor que j� esta aberto.
 TIMEOUT_ON_RESOURCE - ORA-00051 - Ocorreu um time-out enquanto o ORACLE estava aguardando por um recurso.
 TOO_MANY_ROWS       - ORA-01422 - SELECT do tipo single_row retorna mais que uma linha.
 VALUE_ERROR         - ORA-06502 - Ocorreu um erro de aritim�tica, convers�o ou truncamento.
 ZERO_DIVIDE         - ORA-01476 - Tentativa de divis�o por Zero.
 
 
 Procedure pr�-definida para interups�o do programa:
 
  RAISE_APPLICATION_ERROR (n�mero[c�digo do erro], string[mensagem  do erro], booleando[TRUE, FALSE-defoult])
  
 SQLCODE:
 
  A Fun��o SQLCODE retorna o c�digo de erro Oracle que disparou a  Exce��o.
  
 SQLERRM:
 
  A Fun��o SQLERRM retorna a mensagem de erro Oracle que disparou a Exce��o.
*/

SET SERVEROUTPUT ON
SET VERIFY OFF

ACCEPT pEmployee_id PROMPT 'Digite o ID do empregado: '

DECLARE
 vFirst_name  employees.first_name%TYPE;
 vlast_name   employees.last_name%TYPE;
 vEmployee_id employees.employee_id%TYPE := &pEmployee_id;
 
BEGIN
 SELECT first_name, last_name -- SELECT single_row
 INTO vFirst_name, vLast_name 
 FROM employees 
 WHERE employee_id = vEmployee_id;
 
 DBMS_OUTPUT.PUT_LINE('Nome do empregado ' || TO_CHAR(vEmployee_id) || ': ' ||
                      vFirst_name || ' ' || vLast_name);
                      
EXCEPTION
 WHEN NO_DATA_FOUND
 THEN
  RAISE_APPLICATION_ERROR(-20001, 'Empregado n�o encontrado, id = ' || TO_CHAR(vEmployee_id));
 
 WHEN OTHERS
 THEN
  RAISE_APPLICATION_ERROR(-20002, 'Erro Oracle - ' || SQLCODE || SQLERRM);

END;

 
 
 
 
 
 