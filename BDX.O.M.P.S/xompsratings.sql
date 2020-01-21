create database Marks_trab

use Marks_trab

create table Aluno(
id_aluno integer identity not null,
email_aluno varchar(100) not null,
senha_aluno varchar(15) not null,
turma_aluno varchar(20) not null,
primary key (id_aluno) );

insert into Aluno values ('jovic.marks@gmail.com', '01234', '3°info')
insert into Aluno values ('surcalojpsh@gmail.com', '12347', '3°info')
insert into Aluno values ('victoryazigicontv@gmail.com', '56789', '3°info')

create table ProfessorLogin(
id_prof integer identity not null,
email_prof varchar(50) not null,
senha_prof  varchar (15) not null,
primary key (id_prof) );

insert into ProfessorLogin values ('profdemir@gmail.com', '09876')
insert into ProfessorLogin values ('profednilson@gmail.com', '00231')
insert into ProfessorLogin values ('profraimundo@gmail.com', '12345')

select * from Projetos

create table Projetos(
id_proj integer identity not null,
nome_proj varchar(100) not null,
participantes_proj varchar(500) not null,
descricao_proj varchar(500) not null,
codigo_proj varchar(50) not null,
local_proj varchar(20) not null,
primary key (id_proj) );

insert into Projetos values ('projeto1', 'joao, murta, flavio', 'descrição1', '321', 'sala de aula')
insert into Projetos values ('projeto2', 'victor, rebeca, jocimar', 'descrição2', '123', 'quadra')
insert into Projetos values ('projeto3', 'daniel, vinicius, gabriel', 'descrição3', '098', 'cozinha')

create table AvaliacaoProjeto(
id_avaliacao integer identity not null,
nome_proj varchar(100) not null,
nota_apresentacao decimal not null,
nota_criatividade decimal not null,
nota_avaliacao decimal not null,
primary key (id_avaliacao) );

insert into Projetos values ('projeto1', '9,5', '9,5', '9,5')
insert into Projetos values ('projeto2', '8,5', '7,5', '8,5')
insert into Projetos values ('projeto3', '7,5', '10,5', '10,5')

create table Turma2(
id_turma integer identity not null,
turma_aluno int not null,
nome_turma varchar(20) not null,
nome_proj int not null,
primary key (id_turma),
foreign key (turma_aluno) references  Aluno (id_aluno),
foreign key (nome_proj) references Projetos (id_proj) )

insert into Turma2 values (1, 'Informatica', 1)
insert into Turma2 values (2, 'Informatica', 2)
insert into Turma2 values (3, 'Informatica', 3)