create table ESPECIE( 
  	Nome_científico VARCHAR(30),  
        Taxonomia_Reino VARCHAR(30), 
 	Taxonomia_Filo VARCHAR(30), 
        Taxonomia_Classe VARCHAR(30),
        Taxonomia_Ordem VARCHAR(30),
        Taxonomia_Família VARCHAR(30),
        Taxonomia_Gênero VARCHAR(30),
        constraint pk_especie primary key (Nome_científico) 
);

create table NOMEPOPULAR( 
	Nome_científico_Pop VARCHAR(30), 
  	Nome_popular VARCHAR(30),
  Constraint pk_NOMEPOPULAR primary key (Nome_científico_Pop,Nome_popular)
  );


create table REGIAO( 
        Cód_região INTEGER, 
        Coordenadas_Latitude INTEGER, 
        Coordenadas_Longitude INTEGER,
        Bioma VARCHAR(40),
        constraint pk_regiao primary key (Cód_região) 
);

create table BIOMA( 
        Cód_regiãoB INTEGER, 
        Bioma VARCHAR(40),
        constraint pk_BIOMA primary key (Cód_regiãoB,Bioma) 
);

create table EMPRESA( 
   	CNPJ INTEGER, 
   	Nome_Fantasia  VARCHAR(30),
        Ramo VARCHAR(10), 
   	constraint pk_empresa primary key (CNPJ) 
 );
 
 create table PUBLICA( 
     CNPJ_P INTEGER, 
     Órgão_Regulador VARCHAR(30), 
      
     constraint fk_EMPRESAPUBLICA foreign key (CNPJ_P) references EMPRESA(CNPJ), 
     constraint pk_PUBLICA primary key (CNPJ_P,Órgão_Regulador) 
 );
 
 create table PRIVADA(
     CNPJ_Pv INTEGER,
     Natureza_Jurídica VARCHAR(30),
 
     constraint fk_EMPRESAPRIVADA foreign key (CNPJ_Pv) references EMPRESA(CNPJ),
     constraint pk_PRIVADA primary key (CNPJ_Pv,Natureza_Jurídica)
  );

create table PESQUISADOR(
        CPF VARCHAR(20),
        Instituição VARCHAR(30),
        Nome VARCHAR(20),
        Especialização VARCHAR(20),
        constraint pk_pequisador primary key (CPF) 
);


create table PESQUISA(
        Título VARCHAR(30),
        Resultado VARCHAR(50),
        Metodologia VARCHAR(50),
        constraint pk_pequisa primary key (Título) 
);


create table CONGRESSO(
        Cód_Congresso INTEGER,
        Tema VARCHAR(30),
        Ano INTEGER,
        Sigla VARCHAR(30),
        constraint pk_Congresso primary key (Cód_Congresso) 
);


create table RESERVA_AMBIENTAL(
        CNPJ_reserva INTEGER,
        Cód_região_reserva INTEGER,
        Responsável VARCHAR(20),
    
        Constraint fk_Reserva_EMPRESA foreign key (CNPJ_reserva) references EMPRESA(CNPJ),
        Constraint fk_Reserva_REGIAO foreign key (Cód_região_reserva) references REGIAO(Cód_região),
        Constraint pk_Reserva_Ambiental primary key (CNPJ_reserva,Cód_região_reserva,Responsável)
);


create table ORIENTA(
    	CPF_Aluno VARCHAR(20),
    	CPF_Professor VARCHAR(20) not null,

    	Constraint fk_ORIENTA_Aluno foreign key (CPF_Aluno) references PESQUISADOR(CPF),
    	Constraint fk_ORIENTA_Professor foreign key (CPF_Professor) references PESQUISADOR(CPF),
    	Constraint pk_ORIENTA_Aluno primary key (CPF_Aluno)
);


create table APRESENTADA(
    	Cód_Congresso_A INTEGER,
    	Título_A VARCHAR(30),
        Situação VARCHAR(30),
    	Constraint fk_APRESENTADA_CONGRESSO foreign key (Cód_Congresso_A) references CONGRESSO(Cód_Congresso),
    	Constraint fk_APRESENTADA_PESQUISA foreign key (Título_A) references PESQUISA(Título),
    	Constraint pk_APRESENTADA primary key (Cód_Congresso_A,Título_A)
);


create table FAZ(
    	CPF_F VARCHAR(20),
    	Título_F VARCHAR(30),
    	Constraint fk_FAZ_PESQUISADOR foreign key (CPF_F) references PESQUISADOR(CPF),
    	Constraint fk_FAZ_PESQUISA foreign key (Título_F) references PESQUISA(Título),
    	Constraint pk_FAZ primary key (CPF_F,Título_F)
);


create table FINANCIA(
    	CPF_FI VARCHAR(20),
    	Título_FI VARCHAR(30),
    	CNPJ_FI INTEGER,

    	Constraint fk_FINANCIA_FAZ foreign key (CPF_FI,Título_FI) references FAZ(CPF_F,Título_F),
    	Constraint fk_FINANCIA_EMPRESA foreign key (CNPJ_FI) references EMPRESA(CNPJ),
    	Constraint pk_FINANCIA primary key (CPF_FI,Título_FI,CNPJ_FI)
);


create table ESTUDA(
    	CPF_E VARCHAR(20),
    	Cód_região_E INTEGER,
    	Nome_científico_E VARCHAR(30),
        Data_E DATE,

    	Constraint fk_ESTUDA_PESQUISADOR foreign key (CPF_E) references PESQUISADOR(CPF),
    	Constraint fk_ESTUDA_REGIAO foreign key (Cód_região_E) references REGIAO(Cód_região),
    	Constraint fk_ESTUDA_ESPECIE foreign key (Nome_Científico_E) references ESPECIE(Nome_científico),
    	Constraint pk_ESTUDA primary key (CPF_E,Cód_região_E,Nome_científico_E,Data_E)
);


create table DESCOBRE(
    	CPF_D VARCHAR(20) not null, 
    	Cód_região_D INTEGER not null, 
    	Nome_científico_D VARCHAR(30) not null, 
      	Data_E_D DATE not null, 
      	Nome_científico_novo VARCHAR(30),
    	Data_D DATE,
 
    	Constraint fk_DESCOBRE_ESTUDA foreign key (CPF_D,Cód_região_D,Nome_científico_D,Data_E_D) references ESTUDA(CPF_E,Cód_região_E,Nome_científico_E,Data_E), 
        Constraint ak_DESCOBRE_ESTUDA unique (CPF_D,Cód_região_D,Nome_científico_D,Data_E_D), 
    	Constraint pk_DESCOBRE primary key (Nome_científico_novo) 
);

create table PRESERVADA(
    	CNPJ_Pr INTEGER,
        Cód_região_Pr INTEGER,
        Responsável_Pr VARCHAR(20),
    	Nome_científico_Pr VARCHAR(30), 
    	Quantidade_Pr INTEGER,
    	Constraint fk_PRESERVADA_RESERVA foreign key (CNPJ_Pr,Cód_região_Pr,Responsável_Pr) references RESERVA_AMBIENTAL(CNPJ_reserva,Cód_região_reserva,Responsável),
    	Constraint fk_PRESERVADA_ESPECIE foreign key (Nome_científico_Pr) references ESPECIE(Nome_científico),
    	Constraint pk_PRESERVADA primary key (CNPJ_Pr,Cód_região_Pr,Responsável_Pr,Nome_científico_Pr)
);
