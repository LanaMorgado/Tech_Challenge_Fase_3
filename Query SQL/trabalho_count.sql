SELECT 
    DB.ANO,
    DB.MES,
    COUNT(*) AS qtd_populacao_entrevistada,
    SUM(IF(DB.C001 = '1', 1, 0)) AS Trabalhando,
    SUM(IF(DB.C001 = '2', 1, 0)) AS Nao_trabalhando,
    SUM(IF(DB.C006 = '1', 1, 0)) AS mais_de_um_emprego,
    ROUND((SUM(IF(DB.C001 = '1', 1, 0)) / COUNT(*)) * 100, 2) AS Trabalhando_percentual,
    ROUND((SUM(IF(DB.C001 = '2', 1, 0)) / COUNT(*)) * 100, 2) AS Nao_trabalhando_percentual,
    ROUND((SUM(IF(DB.C006 = '1', 1, 0)) / COUNT(*)) * 100, 2) AS mais_de_um_emprego_percentual
FROM 
    basedosdados.br_ibge_pnad_covid.microdados DB 
GROUP BY 
    DB.ANO,
    DB.MES;