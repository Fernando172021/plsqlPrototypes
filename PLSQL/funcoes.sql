/* Utilizando Fun��es 
 
 Fun��es de conver��o em PL/SQL
 
 � TO_CHAR
 � TO_NUMBER
 � TO_DATE

*/
set serveroutput on

declare
 vNumero1 number(11, 2);
 vNumero2 number(11, 2);
 vMedia number(11, 2);

begin
 vNumero1 := 8000;
 vNumero2 := 4000;
 vMedia := round((vNumero1 + vNumero2) / 2, 2); -- Fun��o ROUND arredondamento.
 
 dbms_output.put_line('Media = ' || TO_CHAR(vMedia)); -- Fun��o TO_CHAR edi��o de string.
end;
