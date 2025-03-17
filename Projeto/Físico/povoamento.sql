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


INSERT INTO REGIAO VALUES ('1','2044740','-50787422');
INSERT INTO REGIAO VALUES ('2','-7239961','-36781950');
INSERT INTO REGIAO VALUES ('3','-12591021','-55696501');
INSERT INTO REGIAO VALUES ('4','-23585479','-46464828');
INSERT INTO REGIAO VALUES ('5','-30405098','-55602166');

INSERT INTO BIOMA VALUES ('1','AMAZÔNIA');
INSERT INTO BIOMA VALUES ('1','CERRADO');
INSERT INTO BIOMA VALUES ('2','CERRADO');
INSERT INTO BIOMA VALUES ('2','CAATINGA');
INSERT INTO BIOMA VALUES ('3','AMAZÔNIA');
INSERT INTO BIOMA VALUES ('3','CERRADO');
INSERT INTO BIOMA VALUES ('3','PANTANAL');
INSERT INTO BIOMA VALUES ('4','CERRADO');
INSERT INTO BIOMA VALUES ('4','MATA ATLÂNTICA');
INSERT INTO BIOMA VALUES ('5','MATA ATLÂNTICA');
INSERT INTO BIOMA VALUES ('5','PAMPA');

INSERT INTO ESPECIE VALUES ('Panthera onca','Animália','Chordata','Mammalia','Carnivora','Felidae','Panthera');
INSERT INTO ESPECIE VALUES ('Handroanthus albus','Plantae','Magnoliophyta','Magnoliopsida','Lamiales','Bignoniaceae','Handroanthus');
INSERT INTO ESPECIE VALUES ('Caiman latirostris','Animália','Chordata','Reptilia','Crocodylia','Alligatoridae','Caiman');
INSERT INTO ESPECIE VALUES ('Amaranthus viridis','Plantae','Magnoliophyta','Magnoliopsida','Caryophyllales','Amaranthaceae','Amaranthus');
INSERT INTO ESPECIE VALUES ('Rhea americana','Animália','Chordata','Ave','Struthioniformes','Rheidae','Rhea');
INSERT INTO ESPECIE VALUES ('Paullinia cupana','Plantae','Magnoliophyta','Magnoliopsida','Sapindales','Sapindaceae','Paullinia');
INSERT INTO ESPECIE VALUES ('Myloplus sauron','Animália','Chordata','Actinopterygii','Characiformes','Serrasalmidae','Myloplus');
INSERT INTO ESPECIE VALUES ('Anodorhynchus hyacinthinus','Animália','Chordata','Aves','Psittaciformes','Psittacidae','Anodorhynchus');
INSERT INTO ESPECIE VALUES ('Paubrasilia echinata','Plantae','Magnoliophyta','Magnoliopsida','Fabales','Fabaceae','Paubrasilia');

INSERT INTO NOMEPOPULAR VALUES ('Panthera onca','onça pintada');
INSERT INTO NOMEPOPULAR VALUES ('Panthera onca','jaguar');
INSERT INTO NOMEPOPULAR VALUES ('Handroanthus albus','aipê');
INSERT INTO NOMEPOPULAR VALUES ('Handroanthus albus','ipê-amarelo');
INSERT INTO NOMEPOPULAR VALUES ('Handroanthus albus','ipê-ouro');
INSERT INTO NOMEPOPULAR VALUES ('Caiman latirostris','jacaré do papo amarelo');
INSERT INTO NOMEPOPULAR VALUES ('Amaranthus viridis','bredo');
INSERT INTO NOMEPOPULAR VALUES ('Amaranthus viridis','caruru');
INSERT INTO NOMEPOPULAR VALUES ('Rhea americana','ema');
INSERT INTO NOMEPOPULAR VALUES ('Rhea americana','nandu');
INSERT INTO NOMEPOPULAR VALUES ('Rhea americana','guaripé');
INSERT INTO NOMEPOPULAR VALUES ('Paullinia cupana','guaranazeiro');
INSERT INTO NOMEPOPULAR VALUES ('Paullinia cupana','guaraná');
INSERT INTO NOMEPOPULAR VALUES ('Myloplus sauron','piranha vegetariana');
INSERT INTO NOMEPOPULAR VALUES ('Anodorhynchus hyacinthinus','arara azul');
INSERT INTO NOMEPOPULAR VALUES ('Anodorhynchus hyacinthinus','ararinha azul');
INSERT INTO NOMEPOPULAR VALUES ('Paubrasilia echinata','pau-brasil');
INSERT INTO NOMEPOPULAR VALUES ('Paubrasilia echinata','pau-de-pernambuco');

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
INSERT INTO ORIENTA VALUES ('6666','5555');

INSERT INTO EMPRESA VALUES ('11137051007946','O Boticário','Cosméticos');
INSERT INTO EMPRESA VALUES ('23637697000101','Alcoa Alumínio','Produção de Alumínio');
INSERT INTO EMPRESA VALUES ('33611500000119','Gerdau','Metalúrgica');
INSERT INTO EMPRESA VALUES ('33592510000154','Vale','Extração de minério ferro');
INSERT INTO EMPRESA VALUES ('89637490000145','Klabin','Produção/reciclagem de papel');
INSERT INTO EMPRESA VALUES ('71673990000177','Natura','Cosméticos');
INSERT INTO EMPRESA VALUES ('33000167000101','Petrobás','Petróleo e energia');
INSERT INTO EMPRESA VALUES ('00001180000126','Eletrobrás','Energia');
INSERT INTO EMPRESA VALUES ('00336701000104','Telebrás','Telecomunicações');
INSERT INTO EMPRESA VALUES ('18910028000121','Amazul','Energia nuclear');
 
INSERT INTO PUBLICA VALUES ('33000167000101','Conselho de Administração');
INSERT INTO PUBLICA VALUES ('00001180000126','Conselho de Administração');
INSERT INTO PUBLICA VALUES ('00336701000104','Conselho de Administração');
INSERT INTO PUBLICA VALUES ('18910028000121','Conselho de Administração');
 
INSERT INTO PRIVADA VALUES ('11137051007946','LTDA');
INSERT INTO PRIVADA VALUES ('23637697000101','S/A');
INSERT INTO PRIVADA VALUES ('33611500000119','S/A');
INSERT INTO PRIVADA VALUES ('33592510000154','S/A');
INSERT INTO PRIVADA VALUES ('89637490000145','S/A');
INSERT INTO PRIVADA VALUES ('71673990000177','S/A');

INSERT INTO RESERVA_AMBIENTAL VALUES ('11137051007946','3','Grupo Boticário');
INSERT INTO RESERVA_AMBIENTAL VALUES ('23637697000101','4','Alcoa Alumínio S/A');
INSERT INTO RESERVA_AMBIENTAL VALUES ('33611500000119','4','metalúrgica Gerdau');
INSERT INTO RESERVA_AMBIENTAL VALUES ('33592510000154','4','Vale S/A');
INSERT INTO RESERVA_AMBIENTAL VALUES ('89637490000145','5','Companhia Klabin');
INSERT INTO RESERVA_AMBIENTAL VALUES ('11137051007946','5','Grupo Boticário');

INSERT INTO PESQUISA VALUES ('O impacto da criação de cosméticos com plantas nativas da amazônia','Possível extinção em menos de 10 anos.','Observação na quantidade de plantas da região nos últimos 5 anos.');
INSERT INTO PESQUISA VALUES ('A crise causada pela radiação nos animais aquáticos','Grandes perdas de espécies devido a morte por radiação, gerando uma reação em cadeia.','Relatório de outras catástrofes por radiação nuclear e simulações no computador.');
INSERT INTO PESQUISA VALUES ('Alteração no habitat das aves e seu alimento com a construção de antenas em áreas remotas','Migração forçada em espécies locais devido às construções.','Relatos de aves não migratórias aparecendo em locais indevidos, afetando na predação e alimentação das espécies nativas.');
INSERT INTO PESQUISA VALUES ('Como a vegetação do Cerrado sobrevive às queimadas naturais','Revolução no combate de incêndios florestais e preservação de áreas mais secas.','Análise laboratorial e estudo de anos em plantas do bioma.');
INSERT INTO PESQUISA VALUES ('Uma nova fonte alimentícia resurge no nordeste em meio ao aumento da cesta básica','Povos atuais redescobrem planta que já era utilizada por indígenas na alimentação.','Estudo base na cultura indígena, povos mais antigos e pessoas de baixa renda em situações extremas.');
INSERT INTO PESQUISA VALUES ('Contaminação das plantas através de metais pesados explorados no solo','Utilização de métodos agressivos contaminam o solo, consequentemente as plantas na região explorada.','Estudo de 20 anos realizado nas regiões de exploração revelam que as plantas ainda contém resquícios de contaminação.');

INSERT INTO CONGRESSO VALUES('1212','Amazônia em alerta, os perigos do incêndio na fauna e flora.','2024','CBMA');
INSERT INTO CONGRESSO VALUES('3223','A grande diversidade da flora nordestina.','2025','CNBIO');
INSERT INTO CONGRESSO VALUES('1234','A beleza que destrói a natureza.','2022','CNCMA');
INSERT INTO CONGRESSO VALUES('5432','Alteração de habitat e seus perigos.','2023','CNCBIO');

INSERT INTO FAZ VALUES('10101010','O impacto da criação de cosméticos com plantas nativas da amazônia');
INSERT INTO FAZ VALUES('1111','A crise causada pela radiação nos animais aquáticos');
INSERT INTO FAZ VALUES('7777','Alteração no habitat das aves e seu alimento com a construção de antenas em áreas remotas');
INSERT INTO FAZ VALUES('9999','Como a vegetação do Cerrado sobrevive às queimadas naturais');
INSERT INTO FAZ VALUES('3333','Uma nova fonte alimentícia resurge no nordeste em meio ao aumento da cesta básica');
INSERT INTO FAZ VALUES('6666','Contaminação das plantas através de metais pesados explorados no solo');

INSERT INTO FINANCIA VALUES('10101010','O impacto da criação de cosméticos com plantas nativas da amazônia','71673990000177');
INSERT INTO FINANCIA VALUES('1111','A crise causada pela radiação nos animais aquáticos','18910028000121');
INSERT INTO FINANCIA VALUES('7777','Alteração no habitat das aves e seu alimento com a construção de antenas em áreas remotas','00336701000104');
INSERT INTO FINANCIA VALUES('9999','Como a vegetação do Cerrado sobrevive às queimadas naturais','89637490000145');
INSERT INTO FINANCIA VALUES('6666','Contaminação das plantas através de metais pesados explorados no solo','33592510000154');

INSERT INTO APRESENTADA VALUES('1234','O impacto da criação de cosméticos com plantas nativas da amazônia','Aprovado');
INSERT INTO APRESENTADA VALUES('1212','O impacto da criação de cosméticos com plantas nativas da amazônia','Reprovado');
INSERT INTO APRESENTADA VALUES('1212','Como a vegetação do Cerrado sobrevive às queimadas naturais','Aprovado');
INSERT INTO APRESENTADA VALUES('3223','Uma nova fonte alimentícia resurge no nordeste em meio ao aumento da cesta básica','Aprovado');
INSERT INTO APRESENTADA VALUES('5432','Contaminação das plantas através de metais pesados explorados no solo','Reprovado');
INSERT INTO APRESENTADA VALUES('5432','Alteração no habitat das aves e seu alimento com a construção de antenas em áreas remotas','Aprovado');

INSERT INTO PRESERVADA VALUES ('11137051007946','3','Grupo Boticário','Anodorhynchus hyacinthinus','30');
INSERT INTO PRESERVADA VALUES ('33592510000154','4','Vale S/A','Paubrasilia echinata','20');
