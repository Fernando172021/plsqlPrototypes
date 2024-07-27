-- Blocos Aninhados. 
/*

 Podemos definir blocos dentro de outros blocos. Como no exemplo a baixo...
 Note que o segundo DECLARE esta dentro da primeira seção BEGIN.
 
 Lembrando que somente os blocos pais podem ter acesso as variaveis dos blocos filhos...
 Já o contrario não acontece.

*/


SET SERVEROUTPUT ON

DECLARE
 vBloco1 VARCHAR2(20) := 'Bloco 1';
 
BEGIN
 DBMS_OUTPUT.PUT_LINE('Referenciando variavel do Bloco 1 = ' || vBloco1);
 
 DECLARE
  vBloco2 VARCHAR2(20) := 'Bloco 2';
  
 BEGIN
  DBMS_OUTPUT.PUT_LINE('Referenciando variavel do Bloco 2 = ' || vBloco2);
  DBMS_OUTPUT.PUT_LINE('Referenciando variavel do Bloco 1 = ' || vBloco1);
  
 END;
END;

-- Indentificando blocos apartir de LABELS

<<Bloco1>> -- Declaração de um bloco
DECLARE
 vNumero1 NUMBER(11, 2) := 10;
 
BEGIN
 DBMS_OUTPUT.PUT_LINE('Numero presente na variavel vNumero1 = ' || vNumero1);
 
 <<Bloco2>>
 DECLARE
  vNumero2 NUMBER(11, 2) := 30;
  
 BEGIN
  DBMS_OUTPUT.PUT_LINE('Numero presente na variavel vNumero2 = ' || vNumero2);
  DBMS_OUTPUT.PUT_LINE('Numero presente na variavel vNumero1 = ' || vNumero1);
 END;
END;

