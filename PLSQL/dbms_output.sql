-- Demonstra��o de um bloco anonimo

-- DECLARE[] BEGIN END


set serveroutput on

-- DECLARE Declara��o de variaveis
declare -- Opcional em um bloco anonimo!
 vNumero1 NUMBER(11, 2) := 500;
 vNumero2 NUMBER(11, 2) := 400;
 vMedia NUMBER(11, 2);
 
-- BEGIN Exibindo na saida do script
begin -- Obrigatorio em um bloco anonimo!
 vMedia := (vNumero1 + vNumero2) / 2;
 
 -- DBMS_OUTPUT.PUT_LINE Inserindo informa��es no retorno do script
 dbms_output.put_line('M�dia = ' || vMedia);
 
end; -- Obrigatorio em um bloco anonimo!
