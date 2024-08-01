-- Operadores PL/SQL
/*
 ( + )   ---> Operador Soma
 ( - )   ---> Operador Subtração
 ( * )   ---> Operador Multiplicação
 ( / )   ---> Operador Divisão
 ( ** )  ---> Operador Exponenciação
 ( NOT ) ---> Negação Logica
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
 ( AND ) ---> Operador Lógico AND
 ( OR )  ---> Operador Lógico OR
 
 Utilizando parenteses "()" as regras de procedencia seram quebradas.
 Este simbolo tem prioridade nivel ZERO entre as procedencias lógicas.
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
 DBMS_OUTPUT.PUT_LINE('Média = ' || vMedia);
 
END;
