DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico (user_id_param INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE count_songs INT;
SELECT COUNT(*) FROM user_played_songs
WHERE user_id = user_id_param INTO count_songs;
RETURN count_songs;
END $$ DELIMITER ;
