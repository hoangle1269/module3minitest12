create database studentmanagement2;

use studentmanagement2;

create table students (
studentid int primary key not null unique,
studentname varchar(50) not null,
age int not null,
email varchar(100) not null
);

create table subjects (
subjectid int primary key not null unique,
subjectname varchar(50) not null unique
);

create table classes (
classid int primary key not null unique,
classname varchar(50) not null unique
);

create table classstudent (
studentid int,
foreign key (studentid) references students(studentid),
classid int,
foreign key (classid) references classes(classid)
);

create table marks (
mark int,
subjectid int,
foreign key (subjectid) references subjects(subjectid),
studentid int,
foreign key (studentid) references students(studentid)
);