create database FutebolBD

use FutebolBD

create table cadastroJogo(
id_cadastroJogo int identity not null,
numeroJogo int not null,
data date not null,
estadio varchar(100) not null,
cidade varchar(100) not null,
uf varchar (2) not null,
campeonato varchar (100) not null,
tecnico varchar (100) not null,
placarUVFC int not null,
placarAdversario int not null,
Primary key(id_cadastroJogo)
);

create table jogadores(
id_jogadores int identity not null,
numeroCamisa int,
nome varchar(100) not null,
tecnico_jogador varchar(100),
numeroGols int not null,
jogo_dos_jogadores int not null,
Foreign key (jogo_dos_jogadores) references cadastroJogo(id_cadastroJogo),
Primary key (id_jogadores)
);


create table eventos(
id_eventos int identity not null,
minutos int not null,
eventoOcorrido varchar (200),
campeonato_evento int,
Foreign key (campeonato_evento) references cadastroJogo(id_cadastroJogo), 
Primary key (id_eventos)
);



create table ultimasGoleadas(
id_ultimasGoleadas int identity not null,
adversarios varchar (200),
jogador_goleador int,
quantidade_gols_adversario int ,
quantidade_gols_casa int
Primary key (id_ultimasGoleadas),
foreign key (jogador_goleador) references jogadores(id_jogadores)
);

insert into ultimasGoleadas(adversarios, jogador_goleador, quantidade_gols_adversario, quantidade_gols_casa) values ('Corinthians', 'Cassiano', 2, 1);


insert into ultimasGoleadas(adversarios, jogador_goleador, quantidade_gols_adversario, quantidade_gols_casa) values ('Palmeiras', 'Fabiano', 3, 2);

insert into cadastroJogo(numeroJogo, data, estadio, cidade, uf, campeonato, tecnico, placarUVFC, placarAdversario) values (100,'2019/05/05','Pacaembu','São paulo', 'SP', 'Brasileirao', 'Tite', 7, 5);

insert into cadastroJogo(numeroJogo, data, estadio, cidade, uf, campeonato, tecnico, placarUVFC, placarAdversario) values (100,'2019/07/09','Itaquerão','Arquiduque vinicin', 'RJ', 'Brasileirao', 'Tite', 7, 5);

insert into jogadores(numeroCamisa, nome, tecnico_jogador, numeroGols, jogo_dos_jogadores) values (14, 'Marks', 'Tite', '2',2);
 
insert into jogadores(numeroCamisa, nome, tecnico_jogador, numeroGols, jogo_dos_jogadores) values (20, 'Vitão', 'Tite', '3',1); 

insert into eventos(minutos, eventoOcorrido, campeonato_evento) values (34, 'Gol do time adversário', 1)

insert into eventos(minutos, eventoOcorrido, campeonato_evento) values (45, 'Gol do time adversário', 2)



