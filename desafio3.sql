CREATE VIEW historico_reproducao_usuarios as 
SELECT  
usu_nome AS usuario,
can_nome AS nome
FROM SpotifyClone.historico AS h INNER JOIN SpotifyClone.usuarios AS u ON h.usu_id = u.usu_id
INNER JOIN SpotifyClone.cancoes AS c ON c.can_id = h.can_id
ORDER BY usuario, nome;
