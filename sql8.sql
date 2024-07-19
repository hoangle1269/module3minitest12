create database scoremanagementsystem;
use scoremanagementsystem;
create table student (
studentid varchar(20) primary key,
studentname varchar(50),
dateofbirth datetime,
class varchar(20),
gt varchar(20)
);
create table subject (
subjectid varchar(20) primary key,
subjectname varchar(50),
teacherid varchar(20),
foreign key (teacherid) references teacher (teacherid)
);
create table score (
studentid varchar(20) primary key,
foreign key (studentid) references student (studentid),
subjectid varchar(50),
foreign key (subjectid) references subject (subjectid),
score int,
examdate datetime
);
create table teacher (
teacherid varchar(20) primary key,
teachername varchar(50),
phonenumber varchar(10)
);
alter table subject add constraint FK_teacherid foreign key (teacherid) references teacher (teacherid);