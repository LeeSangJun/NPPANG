create database nppang;
use nppang;
create table user_info (
	id integer auto_increment primary key,
	name varchar(30) not null,
	email varchar(30) not null,
	password varchar(30) not null,
	description text,
	photo text);

create table moim (
	moim_id integer auto_increment primary key,	
	moim_name varchar(30) not null,
	category varchar(30) not null,
	photo text,
	people integer not null default 1,
	description text,
	leader_id integer,
	constraint moim_leader foreign key(leader_id)
	references user_info(id)
);
drop table moim;
select * from user_info;
create table moim_member(
	user_id integer not null,
	moim_id integer not null,
	grade integer not null,
	balance integer not null default 0,
	constraint mm_moim_id foreign key(moim_id)
	references moim(moim_id),
	constraint mm_user_id foreign key(user_id)
	references user_info(id)
);
create table message_plain(
	msg_num integer auto_increment primary key,
	to_user integer not null,
	from_user integer not null,
	contents text,
	date timestamp default current_timestamp,
	constraint mp_to_user_id foreign key(to_user)
	references user_info(id),
	constraint mp_from_user_id foreign key(from_user)
	references user_info(id)
);
create table message_charge(
	msg_num integer auto_increment primary key,
	to_user integer not null,
	from_user integer not null,
	contents text,
	billing_price integer not null,
	balance integer default 0,
	date timestamp default current_timestamp,
	constraint mc_to_user_id foreign key(to_user)
	references user_info(id),
	constraint mc_from_user_id foreign key(from_user)
	references user_info(id)
);

#user_id 가 moim_member에 해당 moim_id에 속한지 확인하고 log 작성이 되어야 함.
create table financial_log(
	log_id integer auto_increment primary key,
	user_id integer not null,
	moim_id integer not null,
	money integer default 0 not null,
	date timestamp default current_timestamp,
	description text,
	constraint log_user_id foreign key(user_id)
	references user_info(id),
	constraint log_moim_id foreign key(moim_id)
	references moim(moim_id)

);
insert into user_info(name,email,password) values("admin1","1","123");
insert into user_info(name,email,password) values("admin2","2","123");
insert into user_info(name,email,password) values("admin3","2","123");
insert into user_info(name,email,password) values("admin4","2","123");
desc moim;
select * from user_info;
insert into moim(moim_name, category, leader_id) values("test1", 1, 1);
insert into moim(moim_name, category, leader_id) values("test2", 1, 1);
insert into moim(moim_name, category, leader_id) values("test1", 1, 2);
insert into moim(moim_name, category, leader_id) values("test1", 1, 3);
select * from moim;
select moim_name, name from moim, user_info where moim.leader_id = user_info.id;
desc message_plain;
insert into message_plain(to_user, from_user, contents) values(1, 2, "hello world");
insert into message_plain(to_user, from_user, contents) values(2, 1, "yes, good day");
insert into message_plain(to_user, from_user, contents) values(2, 1, "how r u");
insert into message_plain(to_user, from_user, contents) values(1, 2, "good");
insert into message_plain(to_user, from_user, contents) values(1, 3, "how r u");
insert into message_plain(to_user, from_user, contents) values(3, 1, "good");
select * from message_plain;
select * from message_plain where to_user = 1 or from_user = 1 order by date asc;

insert into moim_member(user_id, moim_id, grade) values(2, 1, 3);
insert into moim_member(user_id, moim_id, grade) values(3, 1, 3);
insert into moim_member(user_id, moim_id, grade) values(4, 1, 3);
insert into financial_log(user_id, moim_id, money, description) values(1,1,10000,"fee");
insert into financial_log(user_id, moim_id, money, description) values(2,1,10000,"fee");
insert into financial_log(user_id, moim_id, money, description) values(3,1,10000,"fee");
insert into financial_log(user_id, moim_id, money, description) values(4,1,10000,"fee");
insert into financial_log(user_id, moim_id, money, description) values(3,1,10000, "fee2");
ALTER TABLE `nppang`.`user_info`
CHARACTER SET = utf8 ;
select * from financial_log;

select * from financial_log where user_id = 1;
select name, user_id, sum(money) from financial_log t1, user_info t2 where user_id = 3 and t1.user_id = t2.id;