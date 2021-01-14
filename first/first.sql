drop database if exists taverns;

create database taverns;

create table taverns(
    tavern_id int not null primary key,
    name varchar(50) not null
    location int foreign key references locations(location_id) not null,
    services int foreign key references services(services_id) not null
);

create table locations(
    location_id int not null primary key,
    address int,
    street varchar(50),
    city varchar(50),
    state varchar(2)
);

create table services(
    services_id int not null primary key,
    name varchar(50) not null,
    tavern int foreign key references taverns(tavern_id) not null,
    status int foreign key references status(status_id) not null
);

create table status(
    status_id int not null primary key,
    state varchar(50)
);

create table products(
    product_id int primary key,
    product varchar(50) not null,
    price money not null
);

create table orders(
    order_id int primary key,
    tavern int foreign key references taverns(tavern_id) not null,
    product int foreign key references products(product_id) not null,
    quantity int,
    ordered date
);