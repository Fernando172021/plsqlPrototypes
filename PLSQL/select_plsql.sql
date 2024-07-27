-- Comandos SQL no PL/SQL

/*
 O PL/SQL não suporta diretamente os comandos DDL como CREATE TABLE, DROP TABLE e etc...
 O PL/SQL também não suporta comandos DCL.
*/

-- SELECT coluna1... INTO variavel... FROM tabela ... = Comando select em PL/SQL
-- O SELECT em bloco PL/SQL deve retornar apenas uma linha da tabela!

SET SERVEROUTPUT ON

DECLARE
 vFirst_name  employees.first_name%type; -- Usando o %type para puchar o tipo de dado do atributo first_name e etc...
 vLast_name   employees.last_name%type;
 vSalary      employees.salary%type;
 vEmployee_id employees.employee_id%type := 121;
 
BEGIN
 -- Execução do SELECT em bloco PL/SQL retornando dados de uma unica linha.
 SELECT first_name, last_name, salary
 INTO   vFirst_name, vLast_name, vSalary
 FROM   employees
 WHERE  employee_id = vEmployee_id;
 
 DBMS_OUTPUT.PUT_LINE('Employee Id: ' || vEmployee_id);
 DBMS_OUTPUT.PUT_LINE('First Name: ' || vFirst_name);
 DBMS_OUTPUT.PUT_LINE('Last Name: ' || vLast_name);
 DBMS_OUTPUT.PUT_LINE('Salary: ' || vSalary);
 
END;
