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


    INSERT INTO `User` (`idU`, `type`, `name`, `password`, `class`)
    VALUES
    	(1, 1, 'lalo', 'espino', 0),
    	(2, 2, 'ruben', 'peredo', 1),
    	(3, 3, 'edson', 'fabian', 1),
    	(4, 3, 'gerardo', 'arzate', 1),
    	(5, 2, 'nayeli', 'vega', 2),
    	(6, 3, 'miguel', 'jimenez', 3),
    	(9, 3, 'javier', 'garcia', 3),
    	(10, 2, 'humberto', 'espino', 3);

    INSERT INTO `Chart` (`idC`, `name`, `x1`, `y1`, `x2`, `y2`, `class`)
    VALUES
    	(6, 'Jjj', 100, 100, 200, 240, 8),
    	(7, 'Peredo', 160, 100, 180, 260, 3),
    	(8, 'Luis', 100, 100, 200, 240, 7),
    	(9, 'Mosti', 260, 180, 360, 120, 9);
