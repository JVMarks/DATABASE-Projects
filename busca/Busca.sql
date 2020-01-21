/* 
AO REALIZAR UMA PESQUISA NOS BUSCADORES DA INTERNET , O VOLUME DE DADOS PESQUISADO � MUITO GRANDE.
PARA AGILIZAR TAIS BUSCAS, OS DESENVOLDEDORES WEB UTILIZAM RECURSOS QUE SERVEM COMO REFERENCIA, POR MEIO DE 
PALAVRAS-CHAVAS.

ASSIM COMO OS BUSCADORES, O BANCO DE DADOS POSSUI RECURSOS QUE PERMITEM O DESENVOLVIMENTO DE INDICES, BUSCAS TEXTUAIS 
E VISOES , QUE POSSIBILITAM AGREGAR QUALIDADE AS BUSCAS DE INFORMA��ES NAS DIVERSAS TABELAS
*/ 
create database CARROS1

use CARROS1

create table fabricante (
codigo int primary key identity not null,
marca varchar (20) not null
);

create table veiculo(
renavam int primary key,
nome varchar (30) not null,
cor varchar (20) not null, 
preco decimal(10,2) not null,
fabricante_codigo int not null,
foreign key (fabricante_codigo) references fabricante (codigo)
);

select * from fabricante
select * from veiculo

insert fabricante values ('volks') , ('fiat'), ('chevrolet'),
('ford') , ('hyundai') , ('toyota')

insert veiculo values (95195195, 'GOL', 'PRETO',18000.00, 1 ),
(01234567, 'JOLLY', 'PRETO',23000.00, 2 ),
(09876543, 'GRAN TORINO', 'PRETO',44000.00, 4),
(87654321, 'CAMARO', 'PRETO',560000.00, 3 ),
(08963211, 'CRETA', 'PRETO',98000.00, 5 ),
(27651345, 'RAV4', 'PRETO',70000.00, 6 )