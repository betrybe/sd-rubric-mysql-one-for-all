DELIMITER $$

CREATE TRIGGER trigger_delete_user
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
DELETE FROM user_played_songs WHERE user_id = OLD.user_id;
DELETE FROM subscriptions WHERE user_id = OLD.user_id;
END $$ DELIMITER ;
