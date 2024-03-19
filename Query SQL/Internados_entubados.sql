SELECT 
    DB.ANO,
    DB.MES,
    COUNT(CASE WHEN CAST(DB.B005 AS INT64) = 1 THEN 1 END) AS qtd_populacao_atendida,
    COUNT(CASE WHEN CAST(DB.B005 AS INT64) = 3 THEN 1 END) AS qtd_populacao_nao_atendida,
    COUNT(CASE WHEN CAST(DB.B005 AS INT64) = 2 THEN 1 END) AS qtd_populacao_sem_necessidade_atendimento,
    COUNT(CASE WHEN CAST(DB.B006 AS INT64) = 1 THEN 1 END) AS qtd_dos_internados_precisaram_respiracao_artificial
FROM 
    basedosdados.br_ibge_pnad_covid.microdados DB 
WHERE   
    CAST(DB.B005 AS INT64) IN (1, 2, 3)
GROUP BY 
    DB.ANO,
    DB.MES
ORDER BY 
    DB.ANO,
    DB.MES;