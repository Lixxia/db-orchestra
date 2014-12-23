TRIGGER:
delimiter //

CREATE TRIGGER update_players BEFORE INSERT ON Players
	FOR EACH ROW
	BEGIN
		SET @id = new.orchestra_id;
		UPDATE Orchestra 
		SET num_players = num_players + 1
		WHERE id = @id;
	END;//

delimiter ;

+--------------------------------+

TRIGGER2:
delimiter //

CREATE TRIGGER update_players_del AFTER DELETE ON Players
	FOR EACH ROW
	BEGIN
		SET @id = old.orchestra_id;
		UPDATE Orchestra 
		SET num_players = num_players - 1
		WHERE id = @id;
	END;//

delimiter ;

+--------------------------------+

PROCEDURE:
delimiter //

CREATE PROCEDURE test_trigger (
  IN p_first_name                varchar(255),
  IN p_last_name                 varchar(255),
  IN p_email                     varchar(255),
  IN p_telephone                 varchar(255),
  IN p_orchestra_id              integer
)
BEGIN
	INSERT INTO Players (first_name,last_name,email,telephone,orchestra_id)
	VALUES (p_first_name, p_last_name, p_email, p_telephone, p_orchestra_id);
END//

delimiter ;

+--------------------------------+

PROCEDURE TEST:
CALL test_trigger ('Bob','McTestington','test@example.com','888-847-3821',1);

ALTER DATABASE dborchestra CHARACTER SET utf8 COLLATE utf8_unicode_ci;
ALTER TABLE Brass CONVERT TO CHARACTER SET utf8 COLLATE utf8_unicode_ci;

+--------------------------------+

VIEW:
CREATE VIEW orchestra_players AS
SELECT num_players
FROM Orchestra

+--------------------------------+

FUNCTION: 
delimiter //

CREATE FUNCTION chair(chair_num double)
RETURNS VARCHAR(255)
BEGIN
	DECLARE ch varchar(255);
	IF chair_num =1 THEN
		SET ch='Principle';
	ELSEIF chair_num=2 THEN
		SET ch='Second';
	ELSEIF	chair_num>2 THEN
		SET ch='Other';
	END IF;
	RETURN(ch);
END//

delimiter ;