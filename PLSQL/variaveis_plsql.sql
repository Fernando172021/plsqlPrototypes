-- VARIAVEIS EM PL/SQL

-- NÃO EXECUTAR OS EXEMPLOS DE VARIAVEIS

-- :=  dois pontos, sinal de igual... usados para inserir valores a variaveis ou constantes.
-- || barra barra... usado para concatenar duas informações.

-- LITERAL STRING - Exemplo a baixo

-- begin
-- vTexto := 'String literal';

-- LITERAL Data - Exemplo a baixo

-- begin
-- vData1 := '28/01/20';
-- vData2 := '28/01/2020';

-- LITERAL Numeros - Exemplo a baixo

-- begin
-- vValor := 5000;
-- vValor2 := 2638E8;
-- vDouble := 2.0d;
-- vFloat := 2.0f;

-- LITERAL Booleano - Exemplo a baixo

-- begin
-- vBoleano := TRUE;
-- vBoleano := FALSE;
-- vBoleano := NULL;

-- DECLARE Local onde as variaveis serão declaradas!

-- declare
-- vNome varchar(10);

-- begin
-- vNome := 'Olá, Mundo!';
-- end;

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- Habilitando o bufer de saida
set serveroutput on

declare
 vCaracterTamFixo char(2) := 'SP';
 vCaracterTamVariavel varchar(100) := 'Talbaté, SP';

begin
 dbms_output.put_line('String caracter Tam FIxo = ' || vCaracterTamFixo);
 dbms_output.put_line('String caracter Tam Variavel = ' || vCaracterTamVariavel);
end;

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

declare
 vNumero NUMBER(11, 2);
 
begin
 vNumero := 1200.50;
 dbms_output.put_line('Número = ' || vNumero);
end;

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

declare
 vData1 date := '29/04/20';
 vData2 date := '29/04/20';

begin
 dbms_output.put_line('Data1 = ' || vData1);
 dbms_output.put_line('Dara2 = ' || vData2);
end;
