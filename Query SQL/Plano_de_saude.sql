SELECT 
    DB.ANO,
    DB.MES,
    COUNT(CASE WHEN CAST(DB.B007 AS INT64) = 1 THEN 1 END) AS qtd_com_plano_saude,
    COUNT(CASE WHEN CAST(DB.B007 AS INT64) = 2 THEN 1 END) AS qtd_sem_plano_saude
FROM 
    basedosdados.br_ibge_pnad_covid.microdados DB 
WHERE   
    CAST(DB.B007 AS INT64) IN (1, 2)
GROUP BY 
    DB.ANO,
    DB.MES
ORDER BY 
    DB.ANO,
    DB.MES;