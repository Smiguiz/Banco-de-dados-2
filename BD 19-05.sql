create database bdIndex;
use bdIndex;
create table alunos(
	id int primary key,
    nome varchar(200),
    email varchar(200),
    cidade varchar(200),
    idade int
);
create  index idx_nome
on alunos (nome);
show index from alunos;

create index idx_cidade
on alunos (cidade);

create index idx_cidade_idade
on alunos (cidade, idade);

create unique index idx_email
on alunos(email);

drop index idx_email
on alunos;

select * from alunos
where cidade = 'São Paulo'; 



