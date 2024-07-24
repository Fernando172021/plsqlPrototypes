-- Tipos de Dados!

-- NUMBER (P, S) - P = Precisão / S = Escala

-- CHAR - Tamanho fixo para strings. PL/SQL 32.767 bytes de limite / default 1 byte

-- VARCHAR2 - Tamanho variavel para strings. PL/SQL 32.767 bytes de limite maximo.

-- BOOLEAN - Tres valores possiveis em PL/SQL: TRUE, FALSE e NULL.

-- LONG e LONG RAW - LONG aramzena string de caracters - LONG RAW armazena binários. Ambos com limite em PL/SQL de 32.760 bytes.

-- ROWID - armazena o endereço logico de uma linha da tabela. String de 18 caractes.

-- DATA - armazena datas. O intervalo válido é a partir de 1 Janeiro de 4712 AC até 31 de Dezembro de 9999 DC. String padrão = 'DD/MM/YY'.

-- TIMESTAMP - armazena datas com o adicional de 9 dígitos de segundos após o decimal.

-- TIMESTAMP WITH TIME ZONE - extende o tipo DATE oferecento 9 dígitos de segundos após o decimal incluido UTC do lado SERVER.

-- TOMESTAMP WITH LOCAL TIME ZONE - extende o tipo DATE oferecento 9 dígitos de segundos após o decimal incluido UTC do lado CLIENT.

-- NCHAR e NVARCHAR - Semelhantes  a CHAR e VARCHAR2 porem definem o tipo de Unicode a ser utilizado. AL16UTF16 ou UT8.

-- BINERY_INTEGER - armazena numeros inteiros. intervalo aceito - 2.147.483.648 a 2.147.483.647 como 32 bytes ou 4 bytes.

-- BINERY_DOUBLE e BINERY_FLOAT - Armazena numeros em pontos flutuantes. _DOUBLE 64 bits... _FLOAT 32 bits.

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

-- Comando para atribuição de valor: "Descrito entre parenteses a seguir" (:=).

-- Declarando por referencia %TYPE 

-- Comando SLQPLUS para descrever alguma tabela DESC <nome da tabela>
desc employees;

-- >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

set serveroutput on

declare
 vLast_name employees.last_name%TYPE;
 
begin
 vLast_name := 'Morgan';
 dbms_output.put_line(vLast_name);
end;

