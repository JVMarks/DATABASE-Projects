Create Database StarGames;
 
 Use StarGames;
  
  Create Table Cliente(
    cod_cli Integer not null auto_increment,
    nome_cli varchar(80) not null,
    endereco_cli varchar(150) not null,
    bairro_cli varchar(20) not null,
    primary key (cod_cli)
   ) engine = innodb;
   
   
   Create Table Nota(
    num_nota Integer not null auto_increment,
    valor_nota bigint not null,
    cod_cli Integer not null,
    Qtd bigint not null,
    primary key (num_nota),
    foreign key (cod_cli) References Cliente (cod_cli)
   ) engine = innodb;
   
   Create Table Produto(
    cod_prod Integer not null auto_increment,
    valor_prod bigint not null,
    num_nota Integer not null,
    Icms bigint not null,
    primary key (cod_prod),
    foreign key (num_nota) References Nota (num_nota)
   ) engine = innodb;
   
   Desc Cliente;
   Desc Nota;
   Desc Produto;
   
   Insert into Cliente values (NULL, "James Tiberius Kirk",
   "Av Lauro Gomes", "Rudge Ramos");
   Insert into Cliente values (NULL, "Jean-Luc Picard",
   "Av. des Champs-Elysees", "La Defense");
   Insert into Cliente values (NULL, "Jonathan Archer",
   "Av Kennedy", "Jardim do Mar");
   
   Insert into Nota values (NULL, "8", "1", "15");
   Insert into Nota values (NULL, "9", "2", "13");
   Insert into Nota values (NULL, "10", "3", "21");
   
   Insert into Produto values (NULL, "25", "1", "18");
   Insert into Produto values (NULL, "30", "2", "18");
   Insert into Produto values (NULL, "28", "3", "18");
   
   Select * from Cliente;
   Select * from Nota;
   Select * from Produto;