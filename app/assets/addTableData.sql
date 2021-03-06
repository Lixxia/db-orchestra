load data infile '~/repos/db-orchestra/app/assets/orchestradata.csv' 
into table Orchestra 
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n' 
ignore 1 rows;

load data infile '~/repos/db-orchestra/app/assets/playersdata.csv' 
into table Players
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n' 
ignore 1 rows;

load data infile '~/repos/db-orchestra/app/assets/brassdata.csv' 
into table Brass
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n' 
ignore 1 rows;

load data infile '~/repos/db-orchestra/app/assets/keyboarddata.csv' 
into table Keyboard
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n' 
ignore 1 rows;

load data infile '~/repos/db-orchestra/app/assets/woodwinddata.csv' 
into table Woodwind
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n' 
ignore 1 rows;

load data infile '~/repos/db-orchestra/app/assets/percussiondata.csv' 
into table Percussion
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n' 
ignore 1 rows;

load data infile '~/repos/db-orchestra/app/assets/stringdata.csv' 
into table SymphonicString
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n' 
ignore 1 rows;