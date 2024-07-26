-- Variavel BIND
-- Variaveis declaraveis em um ambiente externo ao bloco de código.

-- Comando VARIEBLE gnumero NUMBER
-- Para referenciar uma variavel do tipo BIND utiliza o (:) antes da variavel.

set serveroutput on
 variable gMedia number
declare
 vNumero1 number(11, 2) := 2000;
 vNumero2 number(11, 2) := 5000;
begin
 :gMedia := (vNumero1 + vNumero2) / 2;
 dbms_output.put_line('Média = ' || :gMedia);
end;
