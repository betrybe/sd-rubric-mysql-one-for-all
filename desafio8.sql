DELIMITER $$
CREATE TRIGGER trigger_delete_user
BEFORE DELETE ON usuarios
FOR EACH ROW
BEGIN
DELETE FROM SpotifyClone.historico WHERE usu_id = OLD.usu_id;
DELETE FROM SpotifyClone.seguidores WHERE usu_id = OLD.usu_id;
END $$ DELIMITER ;
