CREATE VIEW perfil_artistas as 
SELECT  
ar.art_nome AS artista,
al.alb_nome AS album,
COUNT(s.usu_id) AS seguidores
FROM SpotifyClone.seguidores AS s INNER JOIN SpotifyClone.artistas AS ar ON s.art_id = ar.art_id
INNER JOIN SpotifyClone.albuns AS al ON al.art_id = ar.art_id
GROUP BY al.alb_id
ORDER BY seguidores DESC, artista, album;
