REM   Script: PesquisadorEspécie
REM   criação de tabelas

create table ESPECIE( 
  	Nome_científico VARCHAR(30), 
  	Nome_popular VARCHAR(30), 
        Taxonomia_Reino VARCHAR(30), 
 	Taxonomia_Filo VARCHAR(30), 
        Taxonomia_Classe VARCHAR(30),
        Taxonomia_Ordem VARCHAR(30),
        Taxonomia_Família VARCHAR(30),
        Taxonomia_Gênero VARCHAR(30),
        constraint pk_ESPECIE primary key (Nome_científico) 
);;

create table REGIAO( 
        Cód_região INTEGER, 
        Coordenadas_Latitude INTEGER, 
        Coordenadas_Longitude INTEGER,
        Bioma VARCHAR(40),
        constraint pk_REGIAO primary key (Cód_região) 
);;

create table EMPRESA( 
  	CNPJ INTEGER, 
  	Nome_Fantasia  VARCHAR(30),
        Ramo VARCHAR(10), 
  	constraint pk_EMPRESA primary key (CNPJ) 
);;

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
        Tema VARCHAR(30),
        Ano INTEGER,
        Sigla VARCHAR(30),
        constraint pk_Congresso primary key (Tema) 
);


create table RESERVA_AMBIENTAL(
        CNPJ_reserva INTEGER,
        Cód_região_reserva INTEGER,
        Responsável VARCHAR(20),
    
        Constraint fk_Reserva_EMPRESA foreign key (CNPJ_reserva) references EMPRESA(CNPJ),
        Constraint fk_Reserva_REGIAO foreign key (Cód_região_reserva) references REGIAO(Cód_região),
        Constraint pk_Reserva_Ambiental primary key (CNPJ_reserva,Cód_região_reserva)
);


create table ORIENTA(
    	CPF_Aluno VARCHAR(20),
    	CPF_Professor VARCHAR(20) not null,

    	Constraint fk_ORIENTA_Aluno foreign key (CPF_Aluno) references PESQUISADOR(CPF),
    	Constraint fk_ORIENTA_Professor foreign key (CPF_Professor) references PESQUISADOR(CPF),
    	Constraint pk_ORIENTA_Aluno primary key (CPF_Aluno)
);


create table APRESENTADA(
    	Tema_A VARCHAR(30),
    	Título_A VARCHAR(30),
        Situação VARCHAR(30),
    	Constraint fk_APRESENTADA_CONGRESSO foreign key (Tema_A) references CONGRESSO(Tema),
    	Constraint fk_APRESENTADA_PESQUISA foreign key (Título_A) references PESQUISA(Título),
    	Constraint pk_APRESENTADA primary key (Tema_A,Título_A)
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


INSERT INTO PESQUISADOR VALUES ( '1111', 'UFPE', 'ANA', 'ZOOLOGIA' );
INSERT INTO PESQUISADOR VALUES ( '2222', 'UFRPE', 'CAMILA', 'BIOLOGIA' );
INSERT INTO PESQUISADOR VALUES ( '3333', 'UFRPE', 'CARLOS', 'BOTANICA' );
INSERT INTO PESQUISADOR VALUES ( '4444', 'UFPB', 'JONAS', 'BIOLOGIA' );
INSERT INTO PESQUISADOR VALUES ( '5555', 'USP', 'RAMON', 'ZOOLOGIA' );
INSERT INTO PESQUISADOR VALUES ( '6666', 'UFRJ', 'AMANDA', 'BIOLOGIA' );
INSERT INTO PESQUISADOR VALUES ( '7777', 'UFSC', 'ANDERSON', 'ZOOLOGIA' );
INSERT INTO PESQUISADOR VALUES ( '8888', 'UNOPAR', 'CINTIA', 'BIOLOGIA' );
INSERT INTO PESQUISADOR VALUES ( '9999', 'UNIR', 'JAMILE', 'BOTANICA' );
INSERT INTO PESQUISADOR VALUES ( '10101010', 'UNEMAT', 'RENATA', 'BOTANICA' );


INSERT INTO REGIAO VALUES ('1','2044740','-50787422','AMAZÔNIA,CERRADO');
INSERT INTO REGIAO VALUES ('2','-7239961','-36781950','CAATINGA');
INSERT INTO REGIAO VALUES ('3','-12591021','-55696501','AMAZÔNIA,CERRADO,PANTANAL');
INSERT INTO REGIAO VALUES ('4','-23585479','-46464828','CERRADO,MATA ATLÂNTICA');
INSERT INTO REGIAO VALUES ('5','-30405098','-55602166','MATA ATLÂNTICA,PAMPA');


INSERT INTO ESPECIE VALUES ('Panthera onca','onça pintada, jaguar','Animália','Chordata','Mammalia','Carnivora','Felidae','Panthera');
INSERT INTO ESPECIE VALUES ('Handroanthus albus','aipê, ipê-amarelo, ipê-ouro','Plantae','Magnoliophyta','Magnoliopsida','Lamiales','Bignoniaceae','Handroanthus');
INSERT INTO ESPECIE VALUES ('Caiman latirostris','jacaré do papo amarelo','Animália','Chordata','Reptilia','Crocodylia','Alligatoridae','Caiman');
INSERT INTO ESPECIE VALUES ('Amaranthus viridis','bredo, caruru','Plantae','Magnoliophyta','Magnoliopsida','Caryophyllales','Amaranthaceae','Amaranthus');
INSERT INTO ESPECIE VALUES ('Rhea americana','ema, nandu, guaripé','Animalia','Chordata','Ave','Struthioniformes','Rheidae','Rhea');
INSERT INTO ESPECIE VALUES ('Paullinia cupana','guaranazeiro, guaraná','Plantae','Magnoliophyta','Magnoliopsida','Sapindales','Sapindaceae','Paullinia');
INSERT INTO ESPECIE VALUES ('Myloplus sauron','piranha vegetariana','Animalia','Chordata','Actinopterygii','Characiformes','Serrasalmidae','Myloplus');


INSERT INTO ESTUDA VALUES ('1111','1','Panthera onca',TO_DATE('12/03/2023','DD/MM/YYYY'));
INSERT INTO ESTUDA VALUES ('2222','2','Amaranthus viridis',TO_DATE('10/05/2022','DD/MM/YYYY'));
INSERT INTO ESTUDA VALUES ('3333','2','Amaranthus viridis',TO_DATE('10/05/2022','DD/MM/YYYY'));
INSERT INTO ESTUDA VALUES ('4444','3','Panthera onca',TO_DATE('12/03/2023','DD/MM/YYYY'));
INSERT INTO ESTUDA VALUES ('5555','4','Rhea americana',TO_DATE('08/11/2024','DD/MM/YYYY'));
INSERT INTO ESTUDA VALUES ('6666','4','Rhea americana',TO_DATE('08/11/2024','DD/MM/YYYY'));
INSERT INTO ESTUDA VALUES ('7777','5','Panthera onca',TO_DATE('17/02/2023','DD/MM/YYYY'));
INSERT INTO ESTUDA VALUES ('8888','2','Amaranthus viridis',TO_DATE('10/05/2022','DD/MM/YYYY'));
INSERT INTO ESTUDA VALUES ('9999','1','Paullinia cupana',TO_DATE('01/07/2023','DD/MM/YYYY'));
INSERT INTO ESTUDA VALUES ('10101010','3','Handroanthus albus',TO_DATE('22/06/2019','DD/MM/YYYY'));


INSERT INTO DESCOBRE VALUES ('1111','1','Panthera onca',TO_DATE('12/03/2023','DD/MM/YYYY'),'Myloplus sauron',TO_DATE('11/03/2023','DD/MM/YYYY'));


INSERT INTO ORIENTA VALUES ('2222','3333');
INSERT INTO ORIENTA VALUES ('4444','3333');
INSERT INTO ORIENTA VALUES ('5555','6666');



Select Especialização, count(*)
from PESQUISADOR 
group by Especialização
having count(*) > 3


