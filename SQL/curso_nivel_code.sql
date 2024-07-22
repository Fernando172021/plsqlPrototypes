-- Comando para criar a tabela nivel.
create table nivel (
	codigonivel int not null,
	descricao varchar(90) not null,
	constraint chavepnivel primary key (codigonivel)
);
-- Comando para criar a tabela curso.
create table curso (
	codigocurso int not null,
	nome varchar(90) not null unique,
	datacriacao date null,
	codigonivel int null,
	constraint chavepcurso primary key (codigocurso),
	foreign key (codigonivel) references nivel (codigonivel)
);

select * from nivel;