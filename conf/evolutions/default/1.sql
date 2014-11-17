# --- Created by Ebean DDL
# To stop Ebean DDL generation, remove this comment and start using Evolutions

# --- !Ups

create table Brass (
  id                        integer auto_increment not null,
  instrument                varchar(255),
  instrument_key            varchar(255),
  clef                      varchar(255),
  seat                      integer,
  player_id                 integer,
  constraint pk_Brass primary key (id))
;

create table Keyboard (
  id                        integer auto_increment not null,
  instrument                varchar(255),
  clef                      varchar(255),
  player_id                 integer,
  constraint pk_Keyboard primary key (id))
;

create table Orchestra (
  id                        integer auto_increment not null,
  name                      varchar(255),
  type                      varchar(255),
  num_players               integer,
  style                     varchar(255),
  constraint pk_Orchestra primary key (id))
;

create table Percussion (
  id                        integer auto_increment not null,
  instrument                varchar(255),
  type                      varchar(255),
  player_id                 integer,
  constraint pk_Percussion primary key (id))
;

create table Players (
  id                        integer auto_increment not null,
  first_name                varchar(255),
  last_name                 varchar(255),
  email                     varchar(255),
  telephone                 varchar(255),
  orchestra_id              integer,
  constraint pk_Players primary key (id))
;

create table SymphonicString (
  id                        integer auto_increment not null,
  instrument                varchar(255),
  section                   varchar(255),
  seat                      integer,
  clef                      varchar(255),
  player_id                 integer,
  constraint pk_SymphonicString primary key (id))
;

create table Woodwind (
  id                        integer auto_increment not null,
  instrument                varchar(255),
  clef                      varchar(255),
  player_id                 integer,
  constraint pk_Woodwind primary key (id))
;

alter table Brass add constraint fk_Brass_myPlayer_1 foreign key (player_id) references Players (id) on delete restrict on update restrict;
create index ix_Brass_myPlayer_1 on Brass (player_id);
alter table Keyboard add constraint fk_Keyboard_myPlayer_2 foreign key (player_id) references Players (id) on delete restrict on update restrict;
create index ix_Keyboard_myPlayer_2 on Keyboard (player_id);
alter table Percussion add constraint fk_Percussion_myPlayer_3 foreign key (player_id) references Players (id) on delete restrict on update restrict;
create index ix_Percussion_myPlayer_3 on Percussion (player_id);
alter table Players add constraint fk_Players_myPlayer_4 foreign key (orchestra_id) references Players (id) on delete restrict on update restrict;
create index ix_Players_myPlayer_4 on Players (orchestra_id);
alter table SymphonicString add constraint fk_SymphonicString_myPlayer_5 foreign key (player_id) references Players (id) on delete restrict on update restrict;
create index ix_SymphonicString_myPlayer_5 on SymphonicString (player_id);
alter table Woodwind add constraint fk_Woodwind_myPlayer_6 foreign key (player_id) references Players (id) on delete restrict on update restrict;
create index ix_Woodwind_myPlayer_6 on Woodwind (player_id);



# --- !Downs

SET FOREIGN_KEY_CHECKS=0;

drop table Brass;

drop table Keyboard;

drop table Orchestra;

drop table Percussion;

drop table Players;

drop table SymphonicString;

drop table Woodwind;

SET FOREIGN_KEY_CHECKS=1;

