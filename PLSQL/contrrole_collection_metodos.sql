--Utilizando Metodos Para controlar Collections
/*
 nome_collection.nome_metodo [(parametro)]
 
 EXISTS(n) -- Retorna TRUE se o elemento não existe   -- Todos
 COUNT     -- Retorna o número de elementos.          -- Todos
 FIRST     -- Retorna o primeiro número do incice     -- Todos
              Retorna NULL se a  COLLECTION estiver
              vazia.
 LAST      -- Retorna o último número do indice       -- Todos
              Retorna NULL se a COLLECTION estiver
              vazia
 LIMIT     -- Retorna o Limite do  VARRAY             -- Varray
 PRIOR(n)  -- Retorna o número do índice anterior a n -- Todos
 NEXT(n)   -- Retorna o número do incide posterior    -- Todos
              a n
 EXTEND(n) -- Para aumentar o tamanho                 -- Nested Table e  Varray
 TRIM      -- Remove um elemento do final da          -- Nested Table
              Collection
 DELETE    -- Remove todos os elementos do final da   -- Associative Array ou Nested Table
              Collection
*/

SET SERVEROUTPUT ON
SET VERIFY OFF

DECLARE
 TYPE employees_table_type IS TABLE OF employees%rowtype;
 
 employees_table employees_table_type := employees_table_type();
 
BEGIN
 SELECT *
 BULK COLLECT INTO employees_table
 FROM employees;
 
 FOR i IN employees_table.first..employees_table.last LOOP
  DBMS_OUTPUT.PUT_LINE(employees_table(i).employee_id   || ' - ' ||
                       employees_table(i).first_name   || ' - ' ||
                       employees_table(i).last_name    || ' - ' ||
                       employees_table(i).phone_number || ' - ' ||
                       employees_table(i).job_id       || ' - ' ||
                       TO_CHAR(employees_table(i).salary));
                       
 END LOOP;

END;
