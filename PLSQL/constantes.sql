-- Declarando Constantes 

-- Uma variavel pode ter o valor modificado, j� uma constante n�o. Seu valor � fixo!

-- DECLARE
-- NomeIdentificador [CONSTANT] tipo_de_dado [NOT NULL] := | DEFAULT expre��o;

set serveroutput on

declare
-- Constante abaixo...
 cP1 constant number(38, 15) := 3.14159265358979;
 
-- Variavel abaixo...
 vP2 number(38, 15) := 3.14159265358979;
 
begin
-- Altera��o no valor da variavel
 vP2 := 5000;
 
 dbms_output.put_line('O valor de P1 � ' || cP1);
 dbms_output.put_line('O valor de P2 � ' || vP2);
end;
