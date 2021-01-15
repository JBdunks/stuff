DROP DATABASE IF EXISTS taverns;

CREATE DATABASE taverns;

USE taverns;

CREATE TABLE locations(
    location_id int auto_increment not null,
    address int not null,
    street varchar(50) not null,
    city varchar(50) not null,
    state varchar(2) not null,
    PRIMARY KEY(location_id)
);

create table taverns(
	tavern_id int auto_increment primary key,
	name varchar(50) not null,
	location int  not null,
	FOREIGN KEY(location) references locations(location_id)
);

create table guest_status(
	status_id int auto_increment not null,
	name varchar(50) not null,
	PRIMARY KEY(status_id)
);


CREATE TABLE guests(
	guest_id INT AUTO_INCREMENT NOT NULL,
	name VARCHAR(50),
	notes VARCHAR(50),
	status INT NULL,
	birthday DATE NOT NULL,
	cakeday DATE NOT NULL,
	PRIMARY KEY(guest_id),
	FOREIGN KEY(status) REFERENCES guest_status(status_id)
);


CREATE TABLE classes(
	class_id INT AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
    PRIMARY KEY(class_id)
);

CREATE TABLE levels(
	level_id INT NOT NULL,
    guest INT NOT NULL,
    class INT NOT NULL,
    PRIMARY KEY(level_id),
    FOREIGN KEY(guest) REFERENCES guests(guest_id),
    FOREIGN KEY(class) REFERENCES classes(class_id)
);
