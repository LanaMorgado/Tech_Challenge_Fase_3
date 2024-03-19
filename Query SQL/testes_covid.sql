SELECT 
    DB.ANO,
    DB.MES,
    SUM(CASE 
            WHEN CAST(DB.B009B AS INT64) = 1 OR CAST(DB.B009D AS INT64) = 1 OR CAST(DB.B009F AS INT64) = 1 THEN 1
            ELSE 0 
        END) AS Testes_Positivos,
    SUM(CASE 
            WHEN CAST(DB.B009B AS INT64) = 2 OR CAST(DB.B009D AS INT64) = 2 OR CAST(DB.B009F AS INT64) = 2 THEN 1
            ELSE 0 
        END) AS Testes_Negativos,
    SUM(CASE 
            WHEN CAST(DB.B009B AS INT64) = 3 OR CAST(DB.B009D AS INT64) = 3 OR CAST(DB.B009F AS INT64) = 3 THEN 1
            ELSE 0 
        END) AS Testes_Inconclusivo,
    SUM(CASE 
            WHEN CAST(DB.B009B AS INT64) = 4 OR CAST(DB.B009D AS INT64) = 4 OR CAST(DB.B009F AS INT64) = 4 THEN 1
            ELSE 0 
        END) AS Testes_nao_recebeu_ainda
FROM 
    `basedosdados.br_ibge_pnad_covid.microdados` DB 
WHERE   
    CAST(DB.B009B AS INT64) IN (1, 2, 3, 4) AND
    CAST(DB.B009D AS INT64) IN (1, 2, 3, 4) AND
    CAST(DB.B009F AS INT64) IN (1, 2, 3, 4)
GROUP BY 
    DB.ANO,
    DB.MES
ORDER BY 
    DB.ANO,
    DB.MES;
