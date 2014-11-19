delimiter //
create trigger update_players before insert on Players
	for each row
	begin
		set @id=new.orchestra_id;
			update Orchestra set num_players = num_players + 1 where id = @id;
	end;// 
delimiter ;

insert into Players (first_name,last_name,email,telephone,orchestra_id)
values ('Bob','Mctestington','boop@boop.com','888-847-3821',3);