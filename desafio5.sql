CREATE VIEW top_2_hits_do_momento as 
SELECT  
can_nome AS cancao,
COUNT(h.usu_id) AS reproducoes
FROM SpotifyClone.cancoes AS c INNER JOIN SpotifyClone.historico AS h ON c.can_id = h.can_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
