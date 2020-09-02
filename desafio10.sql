DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(codigo int)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(can_id) INTO total
    FROM SpotifyClone.historico AS h
    INNER JOIN SpotifyClone.usuarios AS u ON u.usu_id = codigo AND h.usu_id = u.usu_id;
    
    RETURN total;
END $$
DELIMITER ;
