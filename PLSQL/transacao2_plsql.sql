-- Uso de SAVEPOINT

    UPDATE employees SET salary = 35000 WHERE employee_id = 210;
    
    SAVEPOINT savesalary; -- Salvo todos os comandos acima e descartado todos abaixo.
    
    UPDATE employees SET salary = 100000 WHERE employee_id = 210;
    
    ROLLBACK TO savesalary; -- Descarta tudo depois do SAVEPOINT escolhido.
    
    COMMIT;

SELECT * FROM employees WHERE employee_id = 210;