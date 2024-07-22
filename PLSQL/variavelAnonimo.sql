-- Exemplo em bloco anonimo usando variavel

set serveroutput on
declare
  vText Varchar(100) := 'Seja bem vindo ao PLSQL';
  
begin
 DBMS_OUTPUT.PUT_LINE(vText);
exception
 when others
 then
  DBMS_OUTPUT.PUT_LINE('Erro Oracle' || SQLCODE || SQLERRM);
end;

