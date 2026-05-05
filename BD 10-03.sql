create database CursinhoLegal;
use CursinhoLegal;

create table Aluno(
	idAluno int Primary key,
    nome varchar (255),
    email varchar (255),
    data_nascimento date
);

create table Curso(
	Idcurso INT primary key,
    nome_curso varchar (255),
    carga_horaria INT
);

create table Matricula(
	IdMatricula INT primary key,
    idAluno int,
    Idcurso int,
    foreign key (idAluno) references Aluno(idAluno),
	foreign key (Idcurso) references Curso(Idcurso)
);

insert into Aluno (idAluno, nome, email, data_nascimento)
values
(10000, "Carlinhos", "Carlinhos@email.com", "1939-09-01"),
(10001, "Ouvido", "Ouvido@email.com", "2026-03-09"),
(10002, "Rodrigo", "Rodrigo@email.com", "1943-09-01"),
(10003, "Amelia", "Amalia@email.com", "2010-09-01"),
(10004, "Cris", "Cris@email.com", "2007-09-01");
select * from Aluno;

insert into Curso (Idcurso, nome_curso, carga_horaria)
values
(1, "DS", 80),
(2, "Rh", 40),
(3, "ST", 50),
(4, "ADM", 70),
(5, "INFO", 80);
select * from Curso;

insert into Matricula (IdMatricula, idAluno, Idcurso)
values
(20000, 10000, 1),
(20001, 10001, 2),
(20002, 10002, 3),
(20003, 10003, 4),
(20004, 10004, 5);
select * from Matricula;








