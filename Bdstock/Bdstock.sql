create database Estoque;
use Estoque;

create table Produto (
id_Produto integer not null auto_increment,
nome_Produto varchar (200) not null,
primary key (id_Produto)
)engine=innodb;

desc Produto;

create table Entrada (
id_Entrada integer not null auto_increment,
Produto_Entrada integer not null,
Data_Entrada date not null,
Qtd_Entrada bigint not null,
primary key (id_Entrada),
foreign key (Produto_Entrada)references Produto (id_Produto)
)engine=innodb;

desc Entrada;

create table Saida (
id_Saida integer not null auto_increment,
Produto_Saida integer not null,
Data_Saida date not null,
Qtd_Saida bigint not null,
Qtd_No_Estoque integer not null,
primary key (id_Saida),
foreign key (Produto_Saida)references Produto (id_Produto)
)engine=innodb;

desc Saida;

insert into produto values (null, "Saco de Feijao");
insert into produto values (null, "Saco de Arroz");
insert into produto values (null, "Saco de Farinha");
insert into produto values (null, "Manteiga");
insert into produto values (null, "Bisnaguinha");

select * from produto;

insert into entrada values (null, 1, "2019/04/30", 50);
insert into entrada values (null, 2, "2019/04/30", 40);
insert into entrada values (null, 3, "2019/04/30", 120);
insert into entrada values (null, 4, "2019/04/30", 30);
insert into entrada values (null, 5, "2019/04/30", 90);

select * from entrada;

insert into saida values (null, 1, "2019/05/12", 2, 1);
insert into saida values (null, 2, "2019/05/14", 6, 2);
insert into saida values (null, 3, "2019/05/16", 9, 3);
insert into saida values (null, 4, "2019/05/06", 8, 4);
insert into saida values (null, 5, "2019/05/15", 6, 5);
insert into saida values (null, 5, "2019/05/12", 10, 5);
insert into saida values (null, 4, "2019/05/14", 6, 4);
insert into saida values (null, 3, "2019/05/16", 7, 3);
insert into saida values (null, 2, "2019/05/06", 9, 2);
insert into saida values (null, 1, "2019/05/15", 10, 1);
insert into saida values (null, 1, "2019/05/07", 5, 1);
insert into saida values (null, 2, "2019/05/30", 9, 2);
insert into saida values (null, 3, "2019/05/22", 2, 3);
insert into saida values (null, 4, "2019/05/07", 12, 4);
insert into saida values (null, 5, "2019/05/14", 8, 5);

select * from saida;

select nome_produto as Nome_Do_Produto, data_entrada as Data_Da_Entrada,
qtd_entrada as Quantidade
from entrada
inner join produto on produto_entrada = id_produto
order by nome_produto
;

select nome_produto as Nome_Do_Produto, data_saida as Data_Da_Sa�da,
Qtd_Saida as Quantidade
from saida
inner join produto on produto_saida = id_produto
order by nome_produto
;

select nome_produto as Nome_Do_Produto, Qtd_entrada - sum(qtd_saida) as Restante_No_Estoque
from saida
inner join produto on produto_saida = id_produto
inner join entrada on qtd_no_estoque = id_entrada
group by nome_produto
order by nome_produto
;