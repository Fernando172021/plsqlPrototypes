create table aluno (
	codigoaluno int not null, 
	nome varchar(90) not null,
	sexo char(1) not null,
	dtnascimento date not null,
	email varchar(50) null,
	constraint codigoaluno_pk primary key (codigoaluno)
);

insert into aluno values (1, 'Fernando', 'm', '04/08/1980', null);
insert into aluno values (2, 'Maria', 'f', '05/02/2003', 'maria@gmail.com');
insert into aluno values (3, 'Gustavo', 'm', '25/03/2000', null);

select codigoaluno as "Matricula", nome as "Nome do discente", dtnascimento as "Data de nascimento" from aluno;

select current_date as "Data Atual",
       current_time as "Hora Atual",
       current_timestamp "Data e Horas atuais",
       extract (doy from current_date) as "Dia do ano",
       extract (dow from current_date) as "Dia da semana",
       extract (day from current_date) as "Dia atual",
       extract (month from current_date) as "Mês atual",
       extract (year from current_date) as "Ano atual",
       extract (century from current_date) as "Século Atual";

select 5+5;


select nome,
       dtnascimento,
       age(dtnascimento) as "Idade [ano/mês/dia]",
       extract(year from age(dtnascimento)) as "Idade do aluno"
from aluno;

select nome,
       extract(year from age(dtnascimento)) as "Idade do Aluno",
       case when extract(year from age(dtnascimento)) <= 20 then '1. até 20 anos'
            when extract(year from age(dtnascimento)) between 21 and 30 then '2. 21 a 30 anos'
            when extract(year from age(dtnascimento)) between 31 and 40 then '3. 31 a 40 anos'
            when extract(year from age(dtnascimento)) between 41 and 50 then '4. 41 a 50 anos'
            when extract(year from age(dtnascimento)) between 51 and 60 then '5. 51 a 60 anos'
            when extract(year from age(dtnascimento)) > 60  then '6. mais de 60 anos'
       end as "Faixa etaria"
from aluno;

select
       count(*) as "Número de Alunos",
       min(extract(year from age(dtnascimento))) as "Menor Idade",
       avg(extract(year from age(dtnascimento))) as "Idade média",
       max(extract(year from age(dtnascimento))) as "Maior Idade",
       sum(extract(year from age(dtnascimento)))/count(*) as "Idade média"
from aluno;

create table teste as
select current_date as "Data Atual",
       current_time as "Hora Atual",
       current_timestamp "Data e Horas atuais",
       extract (doy from current_date) as "Dia do ano",
       extract (dow from current_date) as "Dia da semana",
       extract (day from current_date) as "Dia atual",
       extract (month from current_date) as "Mês atual",
       extract (year from current_date) as "Ano atual",
       extract (century from current_date) as "Século Atual";

create view vtest as

select nome,
       extract(year from age(dtnascimento)) as "Idade do Aluno",
       case when extract(year from age(dtnascimento)) <= 20 then '1. até 20 anos'
            when extract(year from age(dtnascimento)) between 21 and 30 then '2. 21 a 30 anos'
            when extract(year from age(dtnascimento)) between 31 and 40 then '3. 31 a 40 anos'
            when extract(year from age(dtnascimento)) between 41 and 50 then '4. 41 a 50 anos'
            when extract(year from age(dtnascimento)) between 51 and 60 then '5. 51 a 60 anos'
            when extract(year from age(dtnascimento)) > 60  then '6. mais de 60 anos'
       end as "Faixa etaria"
from aluno;

select * from vtest;