-- LOOP em PL/SQL

/*
 Loop basico - sintaxe
 
 LOOP
   >bloco de comandos
  EXIT [WHEN condição];
 END LOOP;

*/

SET SERVEROUTPUT ON
ACCEPT pLimite PROMPT 'Digite o valor do limite: '

DECLARE
 vNumero NUMBER(38) := 1;
 vLimite NUMBER(38) := &pLimite;
 
BEGIN
 -- Impressão de números até o limite estipulado.
 LOOP
  DBMS_OUTPUT.PUT_LINE('Número: ' || to_char(vNumero));
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
     DBMS_OUTPUT.PUT_LINE('Número : ' || to_char(i));
 END LOOP;
 
END;

/*
 WHILE LOOP - sintaxe
 
 -Inicializa a condição
 
 WHILE condição LOOP
  - bloco_de_comandos;
  ...
  ...
 END LOOP;
*/

SET SERVEROUTPUT ON
ACCEPT pLimite PROMPT 'Digite um número para Limite: '

DECLARE
 vNumero NUMBER(38) := 1;
 vLimite NUMBER(38) := &pLimite;
 
BEGIN
 WHILE vNumero <= vLimite LOOP
      DBMS_OUTPUT.PUT_LINE('Número: ' || to_char(vNumero));
      vNumero := vNumero + 1;
 END LOOP;
 
END;
