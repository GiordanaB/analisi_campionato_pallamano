SELECT
    nazionalita,
    COUNT(*) AS numero_giocatori,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM giocatori),
        1
    ) AS percentuale
FROM giocatori
GROUP BY nazionalita
ORDER BY numero_giocatori DESC;