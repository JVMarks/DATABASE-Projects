create database Festa_cri

use Festa_cri

create table Buffete(
id_buffet integer identity not null,
nome_buffet varchar(50) not null,
telefone_buffet varchar(19) not null,
tipo_buffet varchar(20) not null,
servico_buffet varchar(40) not null,
primary key (id_buffet) );

INSERT INTO "Buffete" VALUES ('Esfirra de Montão','+55 (11) 97651-3986','Para Criancas','Esfirras');
INSERT INTO "Buffete" VALUES ('Muffins da Titia','+55 (11) 97123-3986','Para Criancas','Bolinhos');
INSERT INTO "Buffete" VALUES ('freddys fredbear','+55 (11) 97651-3654','Para Criancas','Salgados');

select * from Buffete

create table Entretee(
id_entret integer identity not null,
nome_entret varchar(50) not null,
brinquedos_entret varchar(50) not null,
primary key (id_entret) );

INSERT INTO "Entretee" VALUES ('freddys entertainment','freddys');
INSERT INTO "Entretee" VALUES ('Vitao entertainment','VitaoProst');
INSERT INTO "Entretee" VALUES ('Brinquedao Roberts','pula pula');

select * from Entretee

create table Funcionarios(
id_funcio integer identity not null,
nome_funcio varchar(30) not null,
telefone_funcio varchar(19) not null,
CPF_funcio varchar(14) not null,
primary key (id_funcio) );

INSERT INTO "Funcionarios" VALUES ('Roberto','+55 (11) 98765-3654','123.456.789-97');
INSERT INTO "Funcionarios" VALUES ('Epaminondas','+55 (11) 95751-1234','987.123.445-45');
INSERT INTO "Funcionarios" VALUES ('Vaudemildo','+55 (11) 97653-9876','564.324.119-08');

select * from Funcionarios

create table Fornecedor(
id_fornece integer identity  not null,
nome_fornece varchar(30) not null,
entret_fornece int not null,
funcio_fornece int not null,
Primary key (id_fornece),
foreign key (entret_fornece) references Entretee (id_entret),
foreign key (funcio_fornece) references Funcionarios (id_funcio) );

INSERT INTO "Fornecedor" VALUES ('JOSÉ',1, 1);
INSERT INTO "Fornecedor" VALUES ('Carlitus',2,2);
INSERT INTO "Fornecedor" VALUES ('Fabio',3,3);

select * from Fornecedor

create table Empresa(
id_empresa integer identity not null,
nome_empresa varchar(30) not null,
telefone_empresa varchar(19) not null,
forne_empresa integer  not null,
buffet_empresa integer  not null,
primary key (id_empresa),
foreign key (forne_empresa) references Fornecedor (id_fornece),
foreign key (buffet_empresa) references Buffete (id_buffet) );


INSERT INTO "Empresa" VALUES ('XOMPS EMTERTAINMENT','+55 (11) 98765-3654',1, 1);
INSERT INTO "Empresa" VALUES ('DORITOS','+55 (11) 94325-3204',2,2);
INSERT INTO "Empresa" VALUES ('SNICKER','+55 (11) 98873-3308',3,3);

select * from Empresa

create table local_de_festa(
id_localfesta integer identity not null,
ende_localfesta varchar(100) not null,
numero_localfesta varchar(10) not null,
CEP_localfesta varchar(8) not null,
primary key (id_localfesta) );

INSERT INTO "local_de_festa" VALUES ('Rua Miguel Yunes, Usina Piratininga, São Paulo','224','09862500');

select * from local_de_festa

create table Pais(
id_pais integer identity not null,
nome_pais varchar(60) not null,
telefone_pais varchar(19) not null,
residencia_pais varchar(90) not null,
primary key (id_pais) );

INSERT INTO "Pais" VALUES ('Alexandre','+55 (11) 98765-3654','Rua joaquim carlos');
INSERT INTO "Pais" VALUES ('Mel Gibson','+55 (11) 92265-3691','Rua dinte de marco');
INSERT INTO "Pais" VALUES ('Benito Mussolini','+55 (11) 99932-3621','rua pedro de alcantara');

select * from Pais

create table Convidados(
id_convidado integer identity not null,
nome_convidado varchar(60) not null,
idade_convidado varchar(2) not null,
pais_convidado integer not null,
primary key (id_convidado),
foreign key(pais_convidado) references Pais (id_pais) );

INSERT INTO "Convidados" VALUES ('Vitao','18','1');
INSERT INTO "Convidados" VALUES ('Gabriel','17','2');
INSERT INTO "Convidados" VALUES ('Daniel','17','3');

select * from Convidados

create table Festa(
id_festa integer identity not null,
nome_festa varchar(100) not null,
convidado_festa integer not null,
ende_festa integer not null,
empresa_festa integer not null,
primary Key (id_festa),
foreign key (convidado_festa) references Convidados (id_convidado),
foreign key (ende_festa) references local_de_festa (id_localfesta),
foreign key (empresa_festa) references  Empresa (id_empresa) );

INSERT INTO "Festa" VALUES ('Festa do Nhonho',1,1,1);
INSERT INTO "Festa" VALUES ('Festa do Nhonho',2,1,2);
INSERT INTO "Festa" VALUES ('Festa do Nhonho',3,1,3);

select * from Festa

drop table Buffete;  drop table Entretee; drop table Funcionarios; drop table Fornecedor; drop table Empresa;
drop table local_de_festa; drop table Pais; drop table Convidados; drop table Festa;
