SELECT
    s.nome_squadra,
    COUNT(g.id_giocatore) AS numero_giocatori
FROM squadre s
LEFT JOIN giocatori g
    ON s.id_squadra = g.id_squadra
GROUP BY
    s.id_squadra,
    s.nome_squadra
ORDER BY numero_giocatori DESC;