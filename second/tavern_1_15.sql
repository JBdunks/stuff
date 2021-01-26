DROP DATABASE IF EXISTS taverns;

CREATE DATABASE taverns;

USE taverns;

CREATE TABLE locations(
    location_id INT AUTO_INCREMENT,
    address INT NOT NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(2) NOT NULL,
    PRIMARY KEY(location_id)
);

CREATE TABLE taverns(
	tavern_id INT AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	location INT NOT NULL,
	PRIMARY KEY(tavern_id),
	FOREIGN KEY(location) REFERENCES locations(location_id)
);

CREATE TABLE  guest_status(
	status_id INT AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	PRIMARY KEY(status_id)
);


CREATE TABLE guests(
	guest_id INT AUTO_INCREMENT,
	name VARCHAR(50),
	notes VARCHAR(100),
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
	level_id INT AUTO_INCREMENT,
	guest INT NOT NULL,
    class INT NOT NULL,
    level INT NOT NULL,
    PRIMARY KEY(level_id),
    FOREIGN KEY(guest) REFERENCES guests(guest_id),
    FOREIGN KEY(class) REFERENCES classes(class_id)
);

CREATE TABLE products(
	product_id INT AUTO_INCREMENT,
	name VARCHAR(50) NOT NULL,
	cost FLOAT NOT NULL,
	PRIMARY KEY(product_id)
);

CREATE TABLE supplies(
	supply_id INT AUTO_INCREMENT,
	name INT NOT NULL,
	quantity INT NOT NULL,
	tavern INT NOT NULL,
	PRIMARY KEY(supply_id),
	FOREIGN KEY(name) REFERENCES products(product_id),
	FOREIGN KEY (tavern) REFERENCES taverns(tavern_id)
);

/*
 ALTER TABLE taverns(
	 ADD PRIMARY KEY (tavern_id)
 )
 */