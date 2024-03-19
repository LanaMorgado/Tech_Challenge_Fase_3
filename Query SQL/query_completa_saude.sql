SELECT 
    DB.ANO,
    DB.MES,
    COUNT(*) AS qtd_populacao_entrevistada,
    SUM(IF(CAST(DB.B002 AS INT64) = 1, 1, 0)) AS qtd_populacao_internada,
    ROUND((SUM(IF(CAST(DB.B002 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS perc_populacao_internada,
    SUM(IF(CAST(DB.B002 AS INT64) = 2, 1, 0)) AS qtd_populacao_nao_internada,
    SUM(IF(CAST(DB.B0011 AS INT64) = 1, 1, 0)) AS `Febre`,
    SUM(IF(CAST(DB.B0012 AS INT64) = 1, 1, 0)) AS `Tosse`,
    SUM(IF(CAST(DB.B0013 AS INT64) = 1, 1, 0)) AS `Dor_de_garganta`,
    SUM(IF(CAST(DB.B0014 AS INT64) = 1, 1, 0)) AS `Dificuldade_para_respirar`,
    SUM(IF(CAST(DB.B0015 AS INT64) = 1, 1, 0)) AS `Dor_de_cabeça`,
    SUM(IF(CAST(DB.B0016 AS INT64) = 1, 1, 0)) AS `Dor_no_peito`,
    SUM(IF(CAST(DB.B0017 AS INT64) = 1, 1, 0)) AS `Náusea_enjoo`,
    SUM(IF(CAST(DB.B0018 AS INT64) = 1, 1, 0)) AS `Nariz_entupido_ou_escorrendo`,
    SUM(IF(CAST(DB.B0019 AS INT64) = 1, 1, 0)) AS `Fadiga_cansaço`,
    SUM(IF(CAST(DB.B00110 AS INT64) = 1, 1, 0)) AS `Dor_nos_olhos`,
    SUM(IF(CAST(DB.B00111 AS INT64) = 1, 1, 0)) AS `Perda_de_cheiro_ou_de_sabor`,
    SUM(IF(CAST(DB.B00112 AS INT64) = 1, 1, 0)) AS `Dor_muscular_dor_no_corpo`,
    SUM(IF(CAST(DB.B00113 AS INT64) = 1, 1, 0)) AS `Diarreia`,
    ROUND((SUM(IF(CAST(DB.B0011 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Febre_percentual`,
    ROUND((SUM(IF(CAST(DB.B0012 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Tosse_percentual`,
    ROUND((SUM(IF(CAST(DB.B0013 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Dor_de_garganta_percentual`,
    ROUND((SUM(IF(CAST(DB.B0014 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Dificuldade_para_respirar_percentual`,
    ROUND((SUM(IF(CAST(DB.B0015 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Dor_de_cabeça_percentual`,
    ROUND((SUM(IF(CAST(DB.B0016 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Dor_no_peito_percentual`,
    ROUND((SUM(IF(CAST(DB.B0017 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Náusea_enjoo_percentual`,
    ROUND((SUM(IF(CAST(DB.B0018 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Nariz_entupido_ou_escorrendo_percentual`,
    ROUND((SUM(IF(CAST(DB.B0019 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Fadiga_cansaço_percentual`,
    ROUND((SUM(IF(CAST(DB.B00110 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Dor_nos_olhos_percentual`,
    ROUND((SUM(IF(CAST(DB.B00111 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Perda_de_cheiro_ou_de_sabor_percentual`,
    ROUND((SUM(IF(CAST(DB.B00112 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Dor_muscular_dor_no_corpo_percentual`,
    ROUND((SUM(IF(CAST(DB.B00113 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Diarreia_percentual`,
    SUM(IF(CAST(DB.B0041 AS INT64) = 1, 1, 0)) AS `Posto_de_saúde_outros`,
    SUM(IF(CAST(DB.B0042 AS INT64) = 1, 1, 0)) AS `PS_SUS_UPA`,
    SUM(IF(CAST(DB.B0043 AS INT64) = 1, 1, 0)) AS `Hospital_SUS`,
    SUM(IF(CAST(DB.B0044 AS INT64) = 1, 1, 0)) AS `Ambulatório_forcas_armadas`,
    SUM(IF(CAST(DB.B0045 AS INT64) = 1, 1, 0)) AS `PS_forcas_armadas`,
    SUM(IF(CAST(DB.B0046 AS INT64) = 1, 1, 0)) AS `Hospital_forcas_armadas`,
    ROUND((SUM(IF(CAST(DB.B0041 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Posto_de_saúde_outros_percent`,
    ROUND((SUM(IF(CAST(DB.B0042 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `PS_SUS_UPA_percent`,
    ROUND((SUM(IF(CAST(DB.B0043 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Hospital_SUS_percent`,
    ROUND((SUM(IF(CAST(DB.B0044 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Ambulatório_forcas_armadas_percent`,
    ROUND((SUM(IF(CAST(DB.B0045 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `PS_forcas_armadas_percent`,
    ROUND((SUM(IF(CAST(DB.B0046 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `Hospital_forcas_armadas_percent`,
    SUM(IF(CAST(DB.B005 AS INT64) = 3, 1, 0)) AS `qtd_populacao_nao_atendida`,
    ROUND((SUM(IF(CAST(DB.B005 AS INT64) = 3, 1, 0)) / COUNT(*)) * 100, 2) AS `qtd_populacao_nao_atendida_percent`,
    SUM(IF(CAST(DB.B006 AS INT64) = 1, 1, 0)) AS `qtd_sedado_intubado_ventilador`,
    ROUND((SUM(IF(CAST(DB.B006 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `qtd_sedado_intubado_ventilador_percent`,
    SUM(IF(CAST(DB.B007 AS INT64) = 1, 1, 0)) AS `populacao_com_plano_saude`,
    ROUND((SUM(IF(CAST(DB.B007 AS INT64) = 1, 1, 0)) / COUNT(*)) * 100, 2) AS `populacao_com_plano_saude_percent`,
    SUM(IF(CAST(DB.B007 AS INT64) = 2, 1, 0)) AS `populacao_sem_plano_saude`,
    ROUND((SUM(IF(CAST(DB.B007 AS INT64) = 2, 1, 0)) / COUNT(*)) * 100, 2) AS `populacao_sem_plano_saude_percent`,
    SUM(IF(CAST(DB.A004 AS INT64) = 1, 1, 0)) AS `Branca`,
    SUM(IF(CAST(DB.A004 AS INT64) = 2, 1, 0)) AS `Preta`,
    SUM(IF(CAST(DB.A004 AS INT64) = 3, 1, 0)) AS `Amarela`,
    SUM(IF(CAST(DB.A004 AS INT64) = 4, 1, 0)) AS `Parda`,
    SUM(IF(CAST(DB.A004 AS INT64) = 5, 1, 0)) AS `Indígena`
FROM 
    basedosdados.br_ibge_pnad_covid.microdados DB 
WHERE   
    (
    CAST(DB.B0011 AS INT64) = 1 OR CAST(DB.B0012 AS INT64) = 1 OR
    CAST(DB.B0013 AS INT64) = 1 OR CAST(DB.B0014 AS INT64) = 1 OR
    CAST(DB.B0015 AS INT64) = 1 OR CAST(DB.B0016 AS INT64) = 1 OR
    CAST(DB.B0017 AS INT64) = 1 OR CAST(DB.B0018 AS INT64) = 1 OR
    CAST(DB.B0019 AS INT64) = 1 OR CAST(DB.B00110 AS INT64) = 1 OR
    CAST(DB.B00111 AS INT64) = 1 OR CAST(DB.B00112 AS INT64) = 1 OR
    CAST(DB.B00113 AS INT64) = 1 
    )
GROUP BY 
    DB.ANO,
    DB.MES
ORDER BY 
    DB.ANO,
    DB.MES;




