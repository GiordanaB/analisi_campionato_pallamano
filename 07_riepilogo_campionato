SELECT
    s.nome_squadra,
    COUNT(p.id_partita) AS partite_giocate,
    SUM(
        CASE
            WHEN (p.id_squadra_casa = s.id_squadra
                  AND p.goal_casa > p.goal_trasferta)
              OR (p.id_squadra_trasferta = s.id_squadra
                  AND p.goal_trasferta > p.goal_casa)
            THEN 1 ELSE 0
        END
    ) AS vittorie,
    SUM(
        CASE
            WHEN p.goal_casa = p.goal_trasferta
            THEN 1 ELSE 0
        END
    ) AS pareggi,
    SUM(
        CASE
            WHEN (p.id_squadra_casa = s.id_squadra
                  AND p.goal_casa < p.goal_trasferta)
              OR (p.id_squadra_trasferta = s.id_squadra
                  AND p.goal_trasferta < p.goal_casa)
            THEN 1 ELSE 0
        END
    ) AS sconfitte,
    SUM(
        CASE
            WHEN p.id_squadra_casa = s.id_squadra
            THEN p.goal_casa
            ELSE p.goal_trasferta
        END
    ) AS gol_fatti,
    SUM(
        CASE
            WHEN p.id_squadra_casa = s.id_squadra
            THEN p.goal_trasferta
            ELSE p.goal_casa
        END
    ) AS gol_subiti
FROM squadre s
JOIN partite p
    ON s.id_squadra = p.id_squadra_casa
    OR s.id_squadra = p.id_squadra_trasferta
WHERE p.stato_partita = 'Disputata'
GROUP BY s.id_squadra, s.nome_squadra
ORDER BY vittorie DESC, gol_fatti DESC;