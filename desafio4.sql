CREATE VIEW top_3_artistas as 
SELECT  
art_nome AS artista,
COUNT(s.art_id) AS seguidores
FROM SpotifyClone.artistas AS a INNER JOIN SpotifyClone.seguidores AS s ON a.art_id = s.art_id
GROUP BY artista
ORDER BY seguidores DESC, artista
LIMIT 3;
