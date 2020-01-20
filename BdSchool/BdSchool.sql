create database escola2;

use escola2;

show databases;

CREATE table genero (
id_genero integer not null auto_increment,
nome_genero varchar (200) not null,
primary key (id_genero)
)engine=innodb;
desc genero;
insert into genero values (null,"Feminino");
insert into genero values (null,"Masculino");
select * from genero;

CREATE table turma (
id_turma integer not null auto_increment,
nome_turma varchar (200) not null,
primary key (id_turma)
)engine=innodb;

insert into turma values (null,"1 Informatica");
insert into turma values (null,"2 Informatica");
insert into turma values (null,"3 Informatica");
insert into turma values (null,"1 Eletronica");
insert into turma values (null,"2 Eletronica");
insert into turma values (null,"3 Eletronica");
insert into turma values (null,"1 Quimica");
insert into turma values (null,"2 Quimica");
insert into turma values (null,"3 Quimica");
insert into turma values (null,"1 Administracao");
insert into turma values (null,"2 Administracao");
insert into turma values (null,"3 Administracao");

select * from turma;
desc turma;
 
 CREATE table periodo (
id_periodo integer not null auto_increment,
nome_periodo varchar (200) not null,
primary key (id_periodo)
)engine=innodb;

desc periodo;
insert into periodo values (null,"Manha");
insert into periodo values (null,"Tarde");
insert into periodo values (null,"Noite");

select * from periodo;

CREATE table aluno (
id_aluno integer not null auto_increment,
nome_aluno varchar (200) not null,
data_nasc date not null,
rm_aluno bigint not null,
genero integer not null,
turma integer not null,
periodo integer not null,
primary key (id_aluno),
foreign key (genero)references genero (id_genero),
foreign key (turma) references turma  (id_turma),
foreign key (periodo) references periodo (id_periodo)
)engine=innodb;

desc aluno;

select * from aluno order by nome_aluno;
select * from aluno order by data_nasc;
select * from aluno order by genero;

CREATE table coleta (
id_coleta integer not null auto_increment,
aluno_coleta integer not null,
data_coleta date not null,
quant_coleta bigint not null,
primary key (id_coleta),
foreign key(aluno_coleta)references aluno (id_aluno)
)engine=innodb;

insert into coleta values (null,142,'2019-03-11',5);

//inserindo Dados na tabela

___________________________________________________________________________

select nome_aluno,nome_genero,nome_turma,nome_periodo 
from aluno 
inner join genero on genero = id_genero 
inner join turma on turma = id_turma 
inner join periodo on periodo = id_periodo
where nome_genero = "Masculino" and nome_turma = "1 Informatica"
and
nome_aluno like "v%"
;

select nome_aluno,sum(quant_coleta) as coleta from aluno
inner join  coleta on aluno_coleta  = id_aluno
group by nome_aluno
order by nome_aluno
limit 30
;

select data_coleta,sum(quant_coleta) as coleta from aluno
inner join  coleta on aluno_coleta  = id_aluno
group by data_coleta
order by data_coleta
limit 30
;