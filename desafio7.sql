CREATE VIEW perfil_artistas AS
SELECT art.name as artista, alb.title as album, count(s.user_id) as seguidores FROM subscriptions AS s
INNER JOIN artists AS art ON s.artist_id=art.artist_id
INNER JOIN albums AS alb ON alb.artist_id=art.artist_id
GROUP BY alb.album_id
ORDER BY 3 DESC, 1, 2;
