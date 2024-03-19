SELECT 
    ANO,
    MES,
    C011A11 AS FaixaSalarial,
    C011A12 AS Salario
FROM 
    basedosdados.br_ibge_pnad_covid.microdados DB
ORDER BY 
    FaixaSalarial;
