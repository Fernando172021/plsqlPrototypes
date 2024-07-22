create schema clientes;

create table clientes.dados_basicos (
	id serial PRIMARY KEY,
	nome Varchar(50) NOT NULL,
	sobrenome Varchar(50)
);

select * from dados_basicos;