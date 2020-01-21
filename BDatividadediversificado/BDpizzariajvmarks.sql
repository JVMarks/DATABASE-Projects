create database pizzariajvmarks

use pizzariajvmarks

Create Table Usuario(
Cod_Usu int identity not null,
Nome_Usu varchar(100) not null,
Senha_Usu varchar(8) not null,
Email_Usu varchar(50) not null,
Endereco_Usu varchar(150) not null,
Cidade_Usu varchar(30) not null,
Cep_Usu smallint not null,
Cpf_Usu smallint not null,
Rg_Usu smallint not null,
Telefone_Usu smallint not null,
IP_Usu varchar(20) not null,
Primary Key (Cod_Usu)
);

Create Table Categoria(
Cod_Categoria int identity not null,
Tipo_Categoria varchar(20) not null,
Primary Key (Cod_Categoria)
);

Create Table Produto(
Cod_Produto int identity not null,
Cod_Categoria integer not null,
Descricao_Produto varchar(8) not null,
Preco_Produto smallmoney not null,
Estoque_Produto smallint not null,
Primary Key (Cod_Produto),
foreign key (Cod_Categoria)references Categoria (Cod_Categoria)
);

Create Table Carrinho(
Cod_Carrinho int identity not null,
IP_Usu integer not null,
Cod_Usu integer not null,
Cod_Produto integer not null,
Quantidade_Carrinho smallint not null,
Subtotal_Carrinho smallmoney not null,
Primary Key (Cod_Carrinho),
foreign key (IP_Usu)references Usuario (Cod_Usu),
foreign key (Cod_Usu)references Usuario (Cod_Usu),
foreign key (Cod_Produto)references Produto (Cod_Produto)
);

Create Table Compras(
Cod_Compra int identity not null,
Cod_Usu integer not null,
Endereco_Entrega_Compra integer not null,
Total_Compra smallmoney not null,
Cod_Produto integer not null,
Qtde_Produto smallint not null,
Data_Compra smalldatetime not null,
Status_Compra varchar(150) not null,
Primary Key (Cod_Compra),
foreign key (Endereco_Entrega_Compra)references Usuario (Cod_Usu),
foreign key (Cod_Usu)references Usuario (Cod_Usu),
foreign key (Cod_Produto)references Produto (Cod_Produto)
);

Create Table Cliente(
Cod_Cliente int identity not null,
Cod_Usu integer not null,
Compras_Realizadas_Cliente integer not null,
Primary Key (Cod_Cliente),
foreign key (Cod_Usu)references Usuario (Cod_Usu),
foreign key (Compras_Realizadas_Cliente)references Compras (Cod_Compra)
);

Create Table Administrador(
Reg_Funcionario int identity not null,
Funcao varchar(50) not null,
Primary Key (Reg_Funcionario),
);

select * from sys.tables;

Select * from Cliente;

Select * from Usuario;

Select * from Categoria;

Select * from Produto;

Select * from Carrinho;

Select * from Compras;

Select * from Cliente;