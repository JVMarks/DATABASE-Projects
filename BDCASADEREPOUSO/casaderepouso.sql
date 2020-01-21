create database casa_de_repouso2

use casa_de_repouso2;

create table Tab_Sexo(
Cod_Sexo int identity not null,
Nome_Sexo varchar (10) not null,
primary key (Cod_Sexo)
);

create table Responsavel(
cod_Resp int identity not null,
nome_Resp varchar not null,
Endereco_Resp varchar (200) not null,
Rg_resp bigint not null,
Primary key (cod_Resp)
); 

create table Paciente(
cod_paciente int identity not null,
nome_paciente varchar (200) not null,
DataNasc_paciente date not null,
Endereco_paciente varchar not null, 
Telefone_paciente bigint,
Rg_paciente bigint not null ,
genero_paciente integer not null,
primary key (Cod_paciente),
foreign key (genero_paciente)references Tab_Sexo (Cod_Sexo)
);

create table Enfermeiro(
cod_Enf int identity not null,
nome_Enf varchar (200) not null,
dataNasc_Enf date not null,
crm_Enf bigint not null,
Primary key (cod_Enf)
);

create table Medico(
cod_Med int identity not null,
Nome_Med varchar (200) not null,
DataNasc_Med date not null,
cren_Med bigint not null,
Primary key (cod_Med)
);


create table Tab_Atendimento(
Cod_Atend int identity not null,
Pac_Atend integer not null,
Enf_Atend integer not null,
Med_Atend integer not null,
primary key (Cod_Atend),
foreign key (Pac_Atend)references Paciente (Cod_paciente),
foreign key (Enf_Atend)references Enfermeiro (Cod_Enf),
foreign key (Med_Atend)references Medico (Cod_Med),
);

insert into Tab_Sexo values ('Masculino');
insert into Tab_Sexo values ('Feminino');

select * from sys.tables;

select * from  Tab_Sexo;

	drop table Tab_Sexo;
	drop table Responsavel;
	drop table Paciente;
	drop table Enfermeiro;
	drop table Medico;
	drop table Tab_Atendimento;