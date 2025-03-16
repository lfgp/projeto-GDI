 -- Consulta tipo group by/having
SELECT Especialização, COUNT(*)
FROM PESQUISADOR 
GROUP BY Especialização
HAVING COUNT(*) > 3;

-- Junção interna
SELECT Nome, Título
FROM PESQUISADOR INNER JOIN FAZ ON (CPF = CPF_F) INNER JOIN PESQUISA ON (Título_F = Título);

 -- Junção externa
SELECT CPF, Nome
FROM PESQUISADOR LEFT JOIN FAZ ON (CPF = CPF_F) LEFT JOIN PESQUISA ON (Título_F = Título)
WHERE Título IS NULL;

 -- Semi-junção
SELECT Tema
FROM CONGRESSO
WHERE EXISTS 
    (SELECT *
     FROM APRESENTADA
     WHERE Cód_Congresso = Cód_Congresso_A AND Situação = 'Reprovado');

 -- Anti-junção
SELECT Título
FROM PESQUISA
WHERE NOT EXISTS 
    (SELECT *
     FROM FINANCIA
     WHERE Título = Título_FI);

 -- Subconsulta tipo escalar
SELECT Nome
FROM PESQUISADOR
WHERE CPF IN 
    (SELECT p.CPF
     FROM PESQUISADOR p INNER JOIN ORIENTA o ON p.CPF = o.CPF_Professor
 	   WHERE o.CPF_Professor = '6666'
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
    (SELECT DISTINCT e.CPF_E 
     FROM ESTUDA e INNER JOIN  
    	(SELECT Cód_região 
         FROM REGIAO  INNER JOIN BIOMA ON (Cód_região = Cód_regiãoB) 
         WHERE BIOMA LIKE '%AMAZÔNIA%')  
     r ON e.Cód_região_E = r.Cód_região 
    )

 -- Operação de conjunto
SELECT CNPJ
FROM ((SELECT CNPJ
       FROM EMPRESA INNER JOIN RESERVA_AMBIENTAL ON (CNPJ = CNPJ_reserva))
    INTERSECT
      (SELECT CNPJ
       FROM EMPRESA INNER JOIN FINANCIA ON (CNPJ = CNPJ_FI))
);
