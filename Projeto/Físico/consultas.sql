 -- Consulta tipo group by/having
SELECT Especialização, COUNT(*)
FROM PESQUISADOR 
GROUP BY Especialização
HAVING COUNT(*) > 3;

-- Junção interna
SELECT Nome, Título_F
FROM PESQUISADOR INNER JOIN FAZ ON (CPF = CPF_F);

 -- Junção externa
SELECT CPF, Nome
FROM PESQUISADOR LEFT OUTER JOIN FAZ ON (CPF = CPF_F)
WHERE Título_F IS NULL;

 -- Semi-junção
SELECT Tema
FROM CONGRESSO
WHERE EXISTS 
    (SELECT *
     FROM APRESENTADA
     WHERE Cód_Congresso = Cód_Congresso_A AND Situação = 'Reprovado'
    );

 -- Anti-junção
SELECT Título
FROM PESQUISA
WHERE NOT EXISTS 
    (SELECT *
     FROM FINANCIA
     WHERE Título = Título_FI
    );

 -- Subconsulta tipo escalar
SELECT Nome
FROM PESQUISADOR
WHERE CPF IN 
    (SELECT CPF
     FROM PESQUISADOR INNER JOIN ORIENTA ON (CPF = CPF_Professor)
 	   WHERE CPF_Professor = '5555'
    );

-- Subconsulta tipo linha
SELECT CPF_E as CPF, Cód_região_E as Região, Nome_Científico_E as Nome_Científico, Data_E as Data
FROM ESTUDA
WHERE CPF_E IN 
    (SELECT CPF
     FROM PESQUISADOR 
     WHERE Nome = 'RAMON'
    );

 -- Subconsulta tipo tabela
SELECT Nome 
FROM PESQUISADOR 
WHERE CPF IN  
    (SELECT DISTINCT CPF_E 
     FROM ESTUDA INNER JOIN  
    	   (SELECT Cód_região 
         FROM REGIAO  INNER JOIN BIOMA ON (Cód_região = Cód_regiãoB) 
         WHERE BIOMA LIKE 'AMAZÔNIA')  
      ON (Cód_região_E = Cód_região) 
    );

 -- Operação de conjunto
SELECT CNPJ
FROM ((SELECT CNPJ
       FROM EMPRESA INNER JOIN RESERVA_AMBIENTAL ON (CNPJ = CNPJ_reserva))
    INTERSECT
      (SELECT CNPJ
       FROM EMPRESA INNER JOIN FINANCIA ON (CNPJ = CNPJ_FI))
);

--TRIGGER que não permite inserção de campo coletor em Especialização
CREATE OR REPLACE TRIGGER ESPECIALIZACAO_INCORRETA
BEFORE INSERT ON PESQUISADOR
FOR EACH ROW
DECLARE
    ESPECIALIZACAO_INCORRETA EXCEPTION;
BEGIN
    IF : NEW.Especialização = 'Coletor' THEN
        DBMS_OUTPUT.PUT_LINE('Especialização incorreta');
        RAISE ESPECIALIZACAO_INCORRETA;
    END IF;
EXCEPTION
    WHEN ESPECIALIZACAO_INCORRETA THEN
    Raise_application_error('Coletor', 'Especialização incorreta.' || ' Não é possível inserir Especialização fora da área biológica!');
END;
