create database chirpr;

use chirpr;

create table users (
	id int not null auto_increment primary key,
    name varchar(30) not null,
    email varchar(50) not null,
    password varchar(200) null,
    _created datetime default current_timestamp
);

create table chirps (
	id int not null auto_increment primary key,
	userid int not null,
	content varchar(200) not null,
	location varchar(200) not null,
	_created datetime default current_timestamp
);

create table mentions (
	userid int not null,
    chirpid int not null,
	primary key (userid, chirpid),
    foreign key (userid) references users(id),
    foreign key (chirpid) references chirps(id)
);

ALTER TABLE chirps 
ADD CONSTRAINT fk_users_id
FOREIGN KEY (userid)
REFERENCES users(id);

use chirpr;

INSERT INTO users (name, email, password)
VALUES ("Josh", "j@l.com", "hunter2"),
("Garrett", "k@l.com", "hunter2"),
("Kaley", "k@l.com", "hunter2"),
("Hunter", "k@l.com", "hunter2"),
("Chad", "k@l.com", "hunter2"),
("Brad", "k@l.com", "hunter2"),
("Madd", "k@l.com", "hunter2"),
("Fadd", "k@l.com", "hunter2");

insert into chirps (userid, content, location)
values (1, " of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", "Wisconsin"),
(1, "This is Post 2", "Home"),
(1, "This is Post 3", "Home"),
(1, "This is Post 4", "Home"),
(1, "This is Post 5", "Home"),
(1, "This is Post 6", "Home"),
(1, "This is Post 7", "Home"),
(1, "This is Post 8", "Home"),
(1, "This is Post 9", "Home"),
(1, "This is Post 10", "Home"),
(2, "This is Post 11", "Home"),
(2, "This is Post 12", "Home"),
(2, "This is Post 13", "Home"),
(2, "This is Post 14", "Home"),
(2, "This is Post 15", "Home"),
(2, "This is Post 16", "Home"),
(2, "This is Post 17", "Home"),
(2, "This is Post 18", "Home"),
(2, "This is Post 19", "Home"),
(2, "This is Post 20", "Home"),
(3, "This is Post 21", "Home"),
(3, "This is Post 22", "Home"),
(3, "This is Post 23", "Home"),
(3, "This is Post 24", "Home"),
(3, "This is Post 25", "Home"),
(3, "This is Post 26", "Home"),
(3, "This is Post 27", "Home"),
(3, "This is Post 28", "Home"),
(3, "This is Post 29", "Home"),
(3, "This is Post 30", "Home"),
(4, "This is Post 31", "Home"),
(4, "This is Post 32", "Home"),
(4, "This is Post 33", "Home"),
(4, "This is Post 34", "Home"),
(4, "This is Post 35", "Home"),
(4, "This is Post 36", "Home"),
(4, "This is Post 37", "Home"),
(4, "This is Post 38", "Home"),
(4, "This is Post 39", "Home"),
(4, "This is Post 40", "Home"),
(5, "This is Post 41", "Home"),
(5, "This is Post 42", "Home"),
(5, "This is Post 43", "Home"),
(5, "This is Post 44", "Home"),
(5, "This is Post 45", "Home"),
(5, "This is Post 46", "Home"),
(5, "This is Post 47", "Home"),
(5, "This is Post 48", "Home"),
(5, "This is Post 49", "Home"),
(5, "This is Post 50", "Home"),
(6, "This is Post 51", "Home"),
(6, "This is Post 52", "Home"),
(6, "This is Post 53", "Home"),
(6, "This is Post 54", "Home"),
(6, "This is Post 55", "Home"),
(6, "This is Post 56", "Home"),
(6, "This is Post 57", "Home"),
(6, "This is Post 58", "Home"),
(6, "This is Post 59", "Home"),
(6, "This is Post 60", "Home"),
(7, "This is Post 61", "Home"),
(7, "This is Post 62", "Home"),
(7, "This is Post 63", "Home"),
(7, "This is Post 64", "Home"),
(7, "This is Post 65", "Home"),
(7, "This is Post 66", "Home"),
(7, "This is Post 67", "Home"),
(7, "This is Post 68", "Home"),
(7, "This is Post 69", "Home"),
(7, "This is Post 70", "Home"),
(8, "This is Post 71", "Home"),
(8, "This is Post 72", "Home"),
(8, "This is Post 73", "Home"),
(8, "This is Post 74", "Home"),
(8, "This is Post 75", "Home"),
(8, "This is Post 76", "Home"),
(8, "This is Post 77", "Home"),
(8, "This is Post 78", "Home"),
(8, "This is Post 79", "Home"),
(8, "This is Post 80", "Home");

insert into mentions(userid, chirpid)
values (1, 103),
(2, 103);

select chirps.*
from chirps
join mentions
on chirps.id = mentions.chirpid
where mentions.userid = 2;

select * from users;

select chirps.content, chirps.location, chirps._created, users.name
from chirps
join users on chirps.userid = users.id
where users.id = 1; 

create database chirprapp

GRANT PRIVILEGE on chirpr.* to 'chirprapp' @ 'localhost';


