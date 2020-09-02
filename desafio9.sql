DELIMITER $$
CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(50))
BEGIN
    SELECT 
      art_nome AS artista,
      alb_nome AS album
    FROM SpotifyClone.artistas AS ar 
    INNER JOIN SpotifyClone.albuns AS al ON art_nome = nome AND ar.art_id = al.art_id
    ORDER BY album;
END $$
DELIMITER ;
