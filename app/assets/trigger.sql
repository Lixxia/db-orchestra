delimiter //
create trigger update_players before insert on Players
	for each row
	begin
		set @id=new.orchestra_id;
			update Orchestra set num_players = num_players + 1 where id = @id;
	end;// 
delimiter ;

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

CALL test_trigger ('Bob','McTestington','test@example.com','888-847-3821',1);

ALTER DATABASE dborchestra CHARACTER SET utf8 COLLATE utf8_unicode_ci;
ALTER TABLE Brass CONVERT TO CHARACTER SET utf8 COLLATE utf8_unicode_ci;