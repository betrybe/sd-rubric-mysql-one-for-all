CREATE VIEW top_2_hits_do_momento AS
SELECT s.title as cancao, count(ups.song_id) as reproducoes FROM user_played_songs AS ups
INNER JOIN songs AS s ON s.song_id=ups.song_id
GROUP BY s.song_id
ORDER BY reproducoes DESC, cancao LIMIT 2;
