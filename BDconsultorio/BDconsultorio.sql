Consultorio:

Create database BDconsultorio;
Use BDconsultorio;

Create table Paciente(
Cod_paciente integer not null auto_increment,
Nome_paciente varchar (80) not null,
Endereco_paciente varchar (100) not null,
nasc_paciente date not null,
Primary Key (Cod_paciente)
) engine=innodb;

desc Paciente;

Create table medico(
crm_medico bigint not null auto_increment,
Nome_medico varchar (80) not null,
Especializacao_medico varchar (80) not null,
Paciente_medico integer not null,
Primary Key (crm_medico),
Foreign Key (paciente_medico) references paciente(Cod_paciente)
) engine=innodb;

desc medico;

Create table tipo(
Cod_exame integer not null auto_increment,
Nome_exame varchar (80) not null,
Primary Key (Cod_exame)
) engine=innodb;

desc tipo;

Create table exames(
cod_exame integer not null auto_increment,
justificativa_medico varchar (80) not null,
data_pedido date not null,
crm_medico bigint not null,
cod_paciente integer not null,
tipo_exame int not null,
Primary Key (cod_exame),
Foreign Key (crm_medico) references medico(crm_medico),
Foreign Key (cod_paciente) references paciente (Cod_paciente),
Foreign Key (tipo_exame) references tipo(cod_exame)
) engine=innodb;

desc exames;









Empresa:





Create database BDEmpresas;

Use BDEmpresas;

Create table funcionario (
Cod_funcionario integer not null auto_increment,
Nome_funcionario varchar (80) not null,
cpf_funcionario varchar (100) not null,
Primary Key (Cod_funcionario)
) engine=innodb;

Desc funcionario ;

Create table departamento(
Cod_departamento integer not null auto_increment,
Nome_departamento varchar (80) not null,
funcionario_departamento integer not null,
Primary Key (Cod_departamento),
Foreign Key (funcionario_departamento) references funcionario (Cod_ funcionario)
) engine=innodb;

desc departamento;

Create table dependente(
Cod_dependente integer not null auto_increment,
Nome_dependente varchar (80) not null,
Primary Key (Cod_dependente)
) engine=innodb;

Desc dependente;


Create table projeto(
cod_ projeto integer not null auto_increment,
qtd_horas varchar (80) not null,
data_inicio date not null,
data_termino date not null,
cod_funcionario integer not null,
cod_departamento integer not null,
cod_dependente integer not null,
tipo_exame int not null,
Primary Key (cod_projeto),
Foreign Key (Cod_departamento) references dependente (Cod_departamento),
Foreign Key (cod_funcionario) references funcionario (Cod_funcionario),
Foreign Key (dependente_projeto) references tipo(cod_projeto)
) engine=innodb;

desc projeto;







PIZZIARIA:







Create Database BDpizzaria;

Use BDpizzaria;
  
  Create Table Produtos(
    cod_produto Integer not null auto_increment,
    nome_produto varchar(200) not null,
    preco_produto bigint not null,
quant_produto bigint not null,
    primary key (cod_produto)
   ) engine = innodb;
   
   
   Create Table MB(
    cod_mb Integer not null auto_increment,
    nome_mb varchar(200) not null,
    primary key (cod_mb)
   ) engine = innodb;
   
   Create Table Clientes(
    cod_cliente Integer not null auto_increment,
    nome_cliente varchar(200) not null,
endereco_cliente varchar(200) not null,
tel_cliente bigint not null, 
    primary key (cod_cliente)
   ) engine = innodb;
   
   Create Table Pedido(
    cod_pedido Integer not null auto_increment,
    cod_produto Integer not null,
quant_pedido bigint not null,
preco_pedido bigint not null,
cod_mb Integer not null,
    cod_cliente Integer not null,
    primary key (cod_pedido),
foreign key (cod_produto) References Produtos (cod_produto),
foreign key (cod_mb) References MB (cod_mb),
foreign key (cod_cliente) References Clientes (cod_cliente)
   ) engine = innodb;
   
   Insert into Produtos values (NULL, "Pizza de Calabresa", 28, 15);
   
   Insert into MB values (NULL, "Gabriel");

   Insert into Clientes values (NULL, "Robison cardozo", "Av Gomes de Alcantara", 996532648);
   
   Insert into Pedido values (NULL, "1", "2", "56", "1", "1");
