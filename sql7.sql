
use studentmanagement;
studentCREATE TABLE class (
    ClassID INT NOT NULL AUTO_INCREMENT,
    ClassName VARCHAR(60) NOT NULL,
    StartDate DATETIME NOT NULL,
    Status BIT,
    PRIMARY KEY (ClassID)
);
create table student (
studentID int NOT NULL auto_increment,
studentName varchar(30) NOT NULL,
address varchar(30) not null,
phone int unique,
status bit,
classid int not null,
foreign key (classid) references class (classid),
primary key (studentid)
);
create table subject (
subid int not null auto_increment,
subname varchar(30) not null,
credit tinyint not null default 1,
status bit,
primary key (subid),
check (credit >= 1)
);
create table mark (
markid int not null auto_increment primary key,
subid int not null unique,
studentid int not null unique,
mark float default 0, 
examtimes tinyint default 1,
foreign key (subid) references subject (subid),
foreign key (studentid) references student (studentid),
check (mark > 0 and mark < 100)
);
