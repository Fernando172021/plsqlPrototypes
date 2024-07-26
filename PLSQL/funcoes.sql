/* Utilizando Funções 
 
 Funções de converção em PL/SQL
 
 º TO_CHAR
 º TO_NUMBER
 º TO_DATE

*/
set serveroutput on

declare
 vNumero1 number(11, 2);
 vNumero2 number(11, 2);
 vMedia number(11, 2);

begin
 vNumero1 := 8000;
 vNumero2 := 4000;
 vMedia := round((vNumero1 + vNumero2) / 2, 2); -- Função ROUND arredondamento.
 
 dbms_output.put_line('Media = ' || TO_CHAR(vMedia)); -- Função TO_CHAR edição de string.
end;
