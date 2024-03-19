SELECT 
    C011A11 AS FaixaSalarial,
    MAX(C011A12) AS MaxSalario,
    MIN(C011A12) AS MinSalario
FROM 
    basedosdados.br_ibge_pnad_covid.microdados DB
WHERE
    C011A11 IS NOT NULL
GROUP BY 
    C011A11;