DELIMITER $$

CREATE PROCEDURE albuns_do_artista (IN artist_name VARCHAR(50))
BEGIN
SELECT art.name as artista, alb.title as album FROM artists AS art
INNER JOIN albums AS alb ON alb.artist_id=art.artist_id
WHERE art.name = artist_name
order by art.name;
END $$ DELIMITER ;
