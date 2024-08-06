-- LOOP em PL/SQL

/*
 Loop basico - sintaxe
 
 LOOP
   >bloco de comandos
  EXIT [WHEN condi��o];
 END LOOP;

*/

SET SERVEROUTPUT ON
ACCEPT pLimite PROMPT 'Digite o valor do limite: '

DECLARE
 vNumero NUMBER(38) := 1;
 vLimite NUMBER(38) := &pLimite;
 
BEGIN
 -- Impress�o de n�meros at� o limite estipulado.
 LOOP
  DBMS_OUTPUT.PUT_LINE('N�mero: ' || to_char(vNumero));
  EXIT WHEN vNumero = vlimite;
  vNumero := vNumero + 1;
 END LOOP;

END;

/*
  FOR LOOP - sintaxe
  
  FOR indice IN [REVERSE]
      limite_inicial.. limite_final LOOP
     -- Bloco de comandos
     ...
  END LOOP;

*/

SET SERVEROUTPUT ON
ACCEPT pLimite PROMPT 'Digite o valor do limite: '

DECLARE
 vInicio INTEGER(3) := 1;
 vFim    NUMBER(38) := &pLimite;
  
BEGIN
 FOR i IN vInicio..vFim LOOP
     DBMS_OUTPUT.PUT_LINE('N�mero : ' || to_char(i));
 END LOOP;
 
END;

/*
 WHILE LOOP - sintaxe
 
 -Inicializa a condi��o
 
 WHILE condi��o LOOP
  - bloco_de_comandos;
  ...
  ...
 END LOOP;
*/

SET SERVEROUTPUT ON
ACCEPT pLimite PROMPT 'Digite um n�mero para Limite: '

DECLARE
 vNumero NUMBER(38) := 1;
 vLimite NUMBER(38) := &pLimite;
 
BEGIN
 WHILE vNumero <= vLimite LOOP
      DBMS_OUTPUT.PUT_LINE('N�mero: ' || to_char(vNumero));
      vNumero := vNumero + 1;
 END LOOP;
 
END;
