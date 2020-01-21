        Create Database MACCA;
 
Use MACCA;
  
	    Create Table Turmas(
		ID_Turma Integer identity not null,
		Nome_Turma varchar(20) not null,
		primary key (ID_Turma)
	   );	

	   
	    Create Table Tecnicos(
		ID_Tec Integer identity not null,
		Nome_Tec varchar(30) not null,
		primary key (ID_Tec)
	   );
	   
	    Create Table Professor(
		ID_Prof Integer identity not null,
		Nome_Prof varchar(75) not null,
		Email_Prof varchar(50) not null,
		Senha_Prof varchar(50) not null,
		primary key (ID_Prof)
	   );

	    Create Table Aluno(
		ID_Aluno Integer identity not null,
		Nome_Aluno varchar(40) not null,
		Email_Aluno varchar(50) not null,
		Senha_Aluno varchar(50) not null,
		primary key (ID_Aluno)
	   );


	    Create Table Turma_Aluno(
		ID_TURA Integer identity not null,
		Aluno_TURA integer not null,
		Turma_TURA Integer not null,
		primary key (ID_TURA),
		foreign key (Aluno_TURA) References Aluno (ID_Aluno),
		foreign key (Turma_TURA) References Turmas (ID_Turma)
	   );

	    Create Table Tecnico_Aluno(
		ID_TECA Integer identity not null,
		Aluno_TECA integer not null,
		Tecnico_TECA Integer not null,
		primary key (ID_TECA),
		foreign key (Aluno_TECA) References Aluno (ID_Aluno),
		foreign key (Tecnico_TECA) References Tecnicos (ID_Tec)
	   );
	   
	    Create Table Projetos(
		ID_Proj Integer identity not null,
		Nome_Proj varchar(50) not null,
		Nu_proj varchar(50) not null,
		Turma_Proj Integer not null,
		Tec_Proj Integer not null,
		Coord_Proj Integer not null,
		Desc_Proj varchar(200) not null,
		Senha_Proj varchar(50) not null,
		primary key (ID_Proj),
		foreign key (Turma_Proj) References Turmas (ID_Turma),
		foreign key (Tec_Proj) References Tecnicos (ID_Tec),
		foreign key (Coord_Proj) References Professor (ID_Prof)
	   );
	  
		  
	    Create Table Participante(
		ID_Partic Integer identity not null,
		Nome_Partic integer not null,
		Nome_Projeto Integer not null,
		primary key (ID_Partic),
		foreign key (Nome_Partic) References Aluno (ID_Aluno),
		foreign key (Nome_Projeto) References Projetos (ID_Proj)
	   );
   

            Create Table Avaliadores(
		ID_Avali Integer identity not null,
		Nome_Avali varchar(50) not null,
		primary key (ID_Avali)
	   );

            Create Table Avali_Proj(
		ID_AP Integer identity  not null,
		Proj_AP Integer not null,
		Avaliador_AP Integer not null,
		Nota1_AP varchar(2) not null,
		Nota2_AP varchar(2) not null,
		Nota3_AP varchar(2) not null,
		primary key (ID_AP),
		foreign key (Proj_AP) References Projetos (ID_Proj),
		foreign key (Avaliador_AP) References Avaliadores (ID_Avali)
	   );
	   
       SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   