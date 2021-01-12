drop database if exists taverns;

create database taverns;

create table taverns(
    id int not null auto_increment,
    name varchar(50) not null
    

);

create table inventroy(
    id int not null auto_incrmenet,
    product varchar(50) null,
    price decminal(10,2) null,
    quantity int, null
);