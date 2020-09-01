CREATE VIEW cancoes_premium AS
SELECT s.title as nome, count(ups.song_id) as reproducoes FROM user_played_songs AS ups
INNER JOIN songs AS s ON s.song_id=ups.song_id
INNER JOIN users AS u ON u.user_id=ups.user_id
WHERE u.plan_id in (2,3)
GROUP BY s.song_id
ORDER BY 1, 2;
