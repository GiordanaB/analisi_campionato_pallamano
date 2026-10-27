SELECT
    s.nome_squadra,
    COUNT(g.id_giocatore) AS numero_giocatori,
    ROUND(AVG(2025 - g.anno_nascita), 1) AS eta_media,
    MIN(g.anno_nascita) AS anno_nascita_piu_anziano,
    MAX(g.anno_nascita) AS anno_nascita_piu_giovane
FROM squadre s
JOIN giocatori g
    ON s.id_squadra = g.id_squadra
GROUP BY
    s.id_squadra,
    s.nome_squadra
ORDER BY eta_media ASC;