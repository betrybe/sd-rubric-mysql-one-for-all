CREATE VIEW historico_reproducao_usuarios AS
SELECT u.name as usuario, s.title as nome FROM user_played_songs as ups
INNER JOIN users AS u ON ups.user_id=u.user_id
INNER JOIN songs AS s ON ups.song_id=s.song_id
order by usuario, nome;
