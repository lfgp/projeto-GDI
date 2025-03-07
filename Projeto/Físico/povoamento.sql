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
