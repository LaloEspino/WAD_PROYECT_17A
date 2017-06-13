create database waddbp;

use waddbp;

create table User (
    idU int(11) not null auto_increment,
    type int(11),
    name varchar(20),
    password varchar(20),
    class int(11),
    primary key (idU));

create table Chart (
    idC int(11) not null auto_increment,
    name varchar(20),
    x1 int(11),
    y1 int(11),
    x2 int(11),
    y2 int(11),
    primary key (idC));

create table Description (
    idD int(11) not null auto_increment,
    user int(11),
    groupc int(11),
    commentary varchar(50),
    primary key (idD));
