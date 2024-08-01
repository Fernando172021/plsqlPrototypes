-- Operadores PL/SQL
/*
 ( + )   ---> Operador Soma
 ( - )   ---> Operador Subtra��o
 ( * )   ---> Operador Multiplica��o
 ( / )   ---> Operador Divis�o
 ( ** )  ---> Operador Exponencia��o
 ( NOT ) ---> Nega��o Logica
 ( = )   ---> Igual a...
 ( := )  ---> Recebe...
 ( < )   ---> Menor que...
 ( > )   ---> Maior que...
 ( <= )  ---> Menor Igual a...
 ( >= )  ---> Maior Igual a...
 ( != )  ---> Diferente de...
 ( <> )  ---> Diferente de...
 ( ^= )  ---> Diferente de...
 ( ~= )  ---> Diferente de...
 ( AND ) ---> Operador L�gico AND
 ( OR )  ---> Operador L�gico OR
 
 Utilizando parenteses "()" as regras de procedencia seram quebradas.
 Este simbolo tem prioridade nivel ZERO entre as procedencias l�gicas.
*/

SET SERVEROUTPUT ON

DECLARE
 vNota1 NUMBER(11, 2) := 7;
 vNota2 NUMBER(11, 2) := 6;
 vNota3 NUMBER(11, 2) := 9;
 vNota4 NUMBER(11, 2) := 6;
 vMedia NUMBER(11, 2);
 
BEGIN
 vMedia := (vNota1 + vNota2 + vNota3 + vNota4) / 4;
 DBMS_OUTPUT.PUT_LINE('M�dia = ' || vMedia);
 
END;
