-- Criação das tabelas.

create table curso (
	codigocurso int primary key,
	nome varchar(90) not null,
	datacriacao date null
);

create table disciplina (
	codigodisciplina int primary key,
	nome varchar(90) not null,
	cargahoraria int not null
);

create table cursodisciplina (
	codigocurso int,
	codigodisciplina int,
	constraint cursodisciplina_pk primary key (codigocurso, codigodisciplina),
	constraint cursodisciplina_curso foreign key (codigocurso) references curso (codigocurso),
	constraint cursodisciplina_disciplina foreign key (codigodisciplina) references disciplina (codigodisciplina));

select * from curso;

-- Dados inseridos em Cursos.

insert into curso (codigocurso, nome, datacriacao)
values (1, 'Sistemas de Informação', '19/06/1999');

insert into curso (codigocurso, nome, datacriacao)
values (2, 'Medicina', '10/05/1990');

insert into curso (codigocurso, nome, datacriacao)
values (3, 'Nutrição', '19/02/2012');

insert into curso (codigocurso, nome, datacriacao)
values (4, 'Pedagogia', '19/06/1999');

-- Dados inseridos em Disciplina.

select * from disciplina;

insert into disciplina (codigodisciplina, nome, cargahoraria)
values (1, 'Leitura e Produção de Textos', 60);

insert into disciplina (codigodisciplina, nome, cargahoraria)
values (2, 'Redes de Computadores', 60);

insert into disciplina (codigodisciplina, nome, cargahoraria)
values (3, 'Computação Gráfica', 40);

insert into disciplina (codigodisciplina, nome, cargahoraria)
values (4, 'Anatomia', 60);

-- Dados de associações.

select * from cursodisciplina;

insert into cursodisciplina (codigocurso, codigodisciplina)
values (1,1);

insert into cursodisciplina (codigocurso, codigodisciplina)
values (1,2);

insert into cursodisciplina (codigocurso, codigodisciplina)
values (1,3);

insert into cursodisciplina (codigocurso, codigodisciplina)
values (2,1);

insert into cursodisciplina (codigocurso, codigodisciplina)
values (2,3);

insert into cursodisciplina (codigocurso, codigodisciplina)
values (3,1);

insert into cursodisciplina (codigocurso, codigodisciplina)
values (3,3);

-- Realizando Updates.

select * from disciplina;

update disciplina set cargahoraria=70 where codigodisciplina=2;

update disciplina set cargahoraria=cargahoraria*1.2;

select * from curso;

update curso set codigocurso=10 where codigocurso=1;

alter table cursodisciplina
  drop constraint cursodisciplina_curso,
  add constraint cursodisciplina_curso foreign key (codigocurso) references curso (codigocurso) on update cascade;

-- Deletando Dados.

select * from disciplina;

delete from disciplina where codigodisciplina=4;

delete from disciplina where codigodisciplina=1;

alter table cursodisciplina
  drop constraint cursodisciplina_disciplina,
  add constraint cursodisciplina_disciplina foreign key (codigodisciplina) references disciplina (codigodisciplina) on delete cascade;

delete from cursodisciplina;
delete from curso;
delete from disciplina;

select * from disciplina;