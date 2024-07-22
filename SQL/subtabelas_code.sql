select codigofuncionario, nome from funcionario where salario = (select max(salario) from funcionario);

select codigofuncionario, nome from funcionario where salario > (select avg(salario) from funcionario);

select count(*) as quantidade from funcionario where salario < (select max(salario) from funcionario where sexo = 'f');

select codigofuncionario, nome, salario from funcionario f where salario > (select avg(salario) from funcionario where codigofuncionario = f.codigofuncionario);

select *  from empregado e inner join departamento d on d.id = e.id_depto;