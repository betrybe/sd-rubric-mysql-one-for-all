CREATE VIEW cancoes_premium AS
SELECT
can_nome AS nome,
COUNT(c.can_id) AS reproducoes
FROM SpotifyClone.historico AS h INNER JOIN SpotifyClone.cancoes AS c ON h.can_id = c.can_id
INNER JOIN SpotifyClone.usuarios AS u ON u.usu_id = h.usu_id
INNER JOIN SpotifyClone.planos AS p ON p.pla_id = u.pla_id AND p.pla_id <> 1
GROUP BY nome
ORDER BY nome;
