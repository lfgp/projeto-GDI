REM   Script: PesquisadorEspécie
REM   criação de tabelas

create table ESPÉCIE( 
  	Nome_científico VARCHAR(30), 
  	Nome_popular VARCHAR(30), 
        Taxonomia VARCHAR(50), 
        constraint pk_Nome_científico primary key (Nome_científico) 
);

create table REGIÃO( 
        Cód_região INTEGER, 
        Coordenadas INTEGER, 
        constraint pk_Cód_região primary key (Cód_região) 
);

create table EMPRESA( 
  	CNPJ INTEGER, 
  	Nome  VARCHAR(30), 
  	constraint pk_CNPJ primary key (CNPJ) 
);

create table PESQUISADOR(
        CPF VARCHAR(20),
        Instituição VARCHAR(30),
        constraint pk_pequisador primary key (CPF) 
)


create table PESQUISA(
        Título VARCHAR(30),
        Resultado VARCHAR(30),
        constraint pk_pequisa primary key (Título) 
)


create table CONGRESSO(
        Cód_Congresso INTEGER,
        Ano INTEGER,
        constraint pk_Congresso primary key (Cód_Congresso) 
)


create table RESERVA_AMBIENTAL(
        CNPJ_reserva INTEGER not null,
        Cód_região_reserva INTEGER not null,
        Responsável VARCHAR(20),
    
        Constraint fk_Reserva_EMPRESA foreign key (CNPJ_reserva) references EMPRESA(CNPJ),
        Constraint fk_Reserva_REGIÃO foreign key (Cód_região_reserva) references REGIÃO(Cód_região),
        Constraint pk_Reserva_Ambiental primary key (CNPJ_reserva,Cód_região_reserva,Responsável)
)


create table ORIENTA(
    	CPF_Aluno VARCHAR(20),
    	CPF_Professor VARCHAR(20) not null,

    	Constraint fk_ORIENTA_Aluno foreign key (CPF_Aluno) references PESQUISADOR(CPF),
    	Constraint fk_ORIENTA_Professor foreign key (CPF_Professor) references PESQUISADOR(CPF),
    	Constraint pk_ORIENTA_Aluno primary key (CPF_Aluno)
)


create table APRESENTADA(
    	Cód_Congresso_A INTEGER,
    	Título_A VARCHAR(30),
    	Constraint fk_APRESENTADA_CONGRESSO foreign key (Cód_Congresso_A) references CONGRESSO(Cód_Congresso),
    	Constraint fk_APRESENTADA_PESQUISA foreign key (Título_A) references PESQUISA(Título),
    	Constraint pk_APRESENTADA primary key (Cód_Congresso_A,Título_A)
)


create table FAZ(
    	CPF_F VARCHAR(20),
    	Título_F VARCHAR(30),
    	Constraint fk_FAZ_PESQUISADOR foreign key (CPF_F) references PESQUISADOR(CPF),
    	Constraint fk_FAZ_PESQUISA foreign key (Título_F) references PESQUISA(Título),
    	Constraint pk_FAZ primary key (CPF_F,Título_F)
)


create table FINANCIA(
    	CPF_FI VARCHAR(20),
    	Título_FI VARCHAR(30),
    	CNPJ_FI INTEGER,

    	Constraint fk_FINANCIA_FAZ foreign key (CPF_FI,Título_FI) references FAZ(CPF_F,Título_F),
    	Constraint fk_FINANCIA_EMPRESA foreign key (CNPJ_FI) references EMPRESA(CNPJ),
    	Constraint pk_FINANCIA primary key (CPF_FI,Título_FI,CNPJ_FI)
)


create table ESTUDA(
    	CPF_E VARCHAR(20),
    	Cód_região_E INTEGER,
    	Nome_científico_E VARCHAR(30),
        Data_E DATE,

    	Constraint fk_ESTUDA_PESQUISADOR foreign key (CPF_E) references PESQUISADOR(CPF),
    	Constraint fk_ESTUDA_REGIÃO foreign key (Cód_região_E) references REGIÃO(Cód_região),
    	Constraint fk_ESTUDA_ESPÉCIE foreign key (Nome_Científico_E) references ESPÉCIE(Nome_científico),
    	Constraint pk_ESTUDA primary key (CPF_E,Cód_região_E,Nome_científico_E,Data_E)
)


create table DESCOBRE(
    	CPF_D VARCHAR(20), 
    	Cód_região_D INTEGER, 
    	Nome_científico_D VARCHAR(30), 
        Data_E_D DATE, 
    	Data_D DATE,
 
    	Constraint fk_DESCOBRE_ESTUDA foreign key (CPF_D,Cód_região_D,Nome_científico_D,Data_E_D) references ESTUDA(CPF_E,Cód_região_E,Nome_científico_E,Data_E), 
    	Constraint pk_DESCOBRE primary key (CPF_D,Cód_região_D,Nome_científico_D,Data_E_D,Data_D) 
)


