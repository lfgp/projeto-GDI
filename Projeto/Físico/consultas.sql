 -- Consulta tipo group by/having
SELECT Especialização, COUNT(*)
FROM PESQUISADOR 
GROUP BY Especialização
HAVING COUNT(*) > 3;


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
         FROM REGIAO
         WHERE BIOMA LIKE '%AMAZÔNIA%') 
     r ON e.Cód_região_E = r.Cód_região
    );

