SELECT
    s.nome_squadra,
    g.ruolo,
    COUNT(g.id_giocatore) AS numero_giocatori
FROM squadre s
JOIN giocatori g
    ON s.id_squadra = g.id_squadra
GROUP BY
    s.id_squadra,
    s.nome_squadra,
    g.ruolo
ORDER BY
    s.nome_squadra ASC,
    numero_giocatori DESC;