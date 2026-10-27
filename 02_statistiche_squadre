SELECT
    s.nome_squadra,
    COUNT(*) AS partite_giocate,
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
    ) AS gol_subiti,
    ROUND(
        AVG(
            CASE
                WHEN p.id_squadra_casa = s.id_squadra
                    THEN p.goal_casa
                ELSE p.goal_trasferta
            END
        ), 2
    ) AS media_gol_fatti,
    ROUND(
        AVG(
            CASE
                WHEN p.id_squadra_casa = s.id_squadra
                    THEN p.goal_trasferta
                ELSE p.goal_casa
            END
        ), 2
    ) AS media_gol_subiti
FROM squadre s
JOIN partite p
    ON s.id_squadra = p.id_squadra_casa
    OR s.id_squadra = p.id_squadra_trasferta
WHERE p.stato_partita = 'Disputata'
GROUP BY s.id_squadra, s.nome_squadra
ORDER BY media_gol_fatti DESC;