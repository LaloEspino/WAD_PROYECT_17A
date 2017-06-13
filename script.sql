create database waddbp;

use waddbp;

create table User (
    id int(11) not null auto_increment,
    name varchar(20),
    password varchar(20),
    type int(1),
    group int(11),
    primary key (id));

create table Chart (
    id int(11) not null auto_increment,
    name varchar(20),
    x1 int(11),
    y1 int(11),
    x2 int(11),
    y2 int(11),
    primary key (id));

create table Commentary (
    id int(11) not null auto_increment,
    user int(11),
    group int(11),
    commentary varchar(50), 
    primary key (id));
