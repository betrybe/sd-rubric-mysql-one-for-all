CREATE VIEW top_3_artistas AS
SELECT a.name as artista, count(s.user_id) as seguidores FROM subscriptions AS s
INNER JOIN artists AS a ON s.artist_id=a.artist_id
GROUP BY a.artist_id
ORDER BY seguidores DESC, artista ASC LIMIT 3;
