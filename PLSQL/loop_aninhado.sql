-- LOOP Aninhado

-- Controlando loops aninhados.

SET SERVEROUTPUT ON

DECLARE
 vTotal NUMBER(38) := 1;
 
BEGIN
 <<LOOP1>>
 FOR i IN 1..8 LOOP
     DBMS_OUTPUT.PUT_LINE('I = ' || to_char(i));
     <<LOOP2>>
     FOR j IN 1..8 LOOP
         DBMS_OUTPUT.PUT_LINE('J = ' || to_char(j));
         DBMS_OUTPUT.PUT_LINE('Total = ' || to_char(vTotal));
         vTotal := vTotal * 2; 
         -- EXIT LOOP1 WHEN vTotal > 1000000000000; Saida do loop no layer LOOP1
     END LOOP;
     
 END LOOP;
 
 DBMS_OUTPUT.PUT_LINE('Total final: ' || to_char(vTotal));
 
END;
