SELECT 
    DB.ANO,
    DB.MES,
    SUM(CASE WHEN CAST(DB.B011 AS INT64) = 1 THEN 1 ELSE 0 END) AS Nao_fez_restricao,
    SUM(CASE WHEN CAST(DB.B011 AS INT64) = 2 THEN 1 ELSE 0 END) AS Reduziu_contato,
    SUM(CASE WHEN CAST(DB.B011 AS INT64) = 3 THEN 1 ELSE 0 END) AS Ficou_em_casa_necessidade,
    SUM(CASE WHEN CAST(DB.B011 AS INT64) = 4 THEN 1 ELSE 0 END) AS Ficou_rigorosamente_isolado
FROM 
    basedosdados.br_ibge_pnad_covid.microdados DB 
WHERE   
    CAST(DB.B011 AS INT64) IN (1, 2, 3, 4)
GROUP BY 
    DB.ANO,
    DB.MES
ORDER BY 
    DB.ANO,
    DB.MES;