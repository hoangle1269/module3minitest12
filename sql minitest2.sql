create database tourism;
use tourism;

create table tour (
tourid int not null auto_increment primary key,
tourcode varchar(235),
categoryid int,
foreign key (categoryid) references categorytour(categoryid),
destinationid int,
foreign key (destinationid) references destination(destinationid),
datestart date,
dateend date
);

create table categorytour (
categoryid int primary key not null auto_increment,
categorycode varchar(255),
categoryname varchar(255)
);

create table city (
cityid int primary key not null auto_increment,
cityname varchar(255) not null
);

create table destination (
destinationid int primary key not null auto_increment,
destinationname varchar(255),
describes varchar(255),
cost int,
cityid int,
foreign key (cityid) references city(cityid)
);

create table clients (
clientid int not null primary key auto_increment,
clientname varchar(255),
clientidnumber varchar(255),
clientdob date,
cityid int,
foreign key (cityid) references city(cityid)
);

create table ordertour (
ordertourid int primary key auto_increment not null,
tourid int,
foreign key (tourid) references tour(tourid),
clientid int,
foreign key (clientid) references clients(clientid),
ordertourstatus varchar(255)
);