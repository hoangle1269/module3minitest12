create database studentmanagementproject;
use studentmanagementproject;
create table class (
classid int primary key auto_increment,
classname varchar(50),
classlanguage varchar(50),
classdescription varchar(255)
);
create table address (
addressid int auto_increment primary key,
address varchar(255)
);
create table student (
studentid int primary key auto_increment,
fullname varchar(50),
addressid int,
foreign key (addressid) references address(addressid),
age int,
phone varchar(50) unique,
classid int,
foreign key (classid) references class(classid)
);
create table course (
courseid int auto_increment primary key,
coursename varchar(50),
coursedescription varchar(200)
);
create table score (
scoreid int auto_increment primary key,
courseid int,
foreign key (courseid) references course(courseid),
studentid int,
foreign key (studentid) references student(studentid),
score int
);

INSERT INTO address (address) VALUES
('123 Thanh Xuan'),
('456 Hoan Kiem'),
('789 Ba Dinh'),
('101 Hai Ba Trung'),
('202 Cau Giay');
insert into address (address) values
('12 HDMon'), ('23 thezei'), ('45asf'), ('99 AK'), ('asfgn');
select * from address;
INSERT INTO Class (classname, classlanguage, classdescription) VALUES
('Intro to Programming', 'Python', 'Learn the basics of programming using Python.'),
('Web Development', 'JavaScript', 'Build modern web applications using JavaScript.'),
('Data Analysis', 'R', 'Analyze and visualize data using R.'),
('Machine Learning', 'Python', 'Introduction to machine learning concepts and algorithms.'),
('Database Systems', 'SQL', 'Learn about relational databases and SQL.');
select * from class;
INSERT INTO Student (fullname, addressid, age, phone, classid) VALUES
('Alice Nguyen', 1, 20, '123-456-7890', 1),
('Bob Tran', 2, 22, '234-567-8901', 2),
('Charlie Le', 3, 19, '345-678-9012', 3),
('Diana Hoang', 4, 21, '456-789-0123', 4),
('Ethan Pham', 5, 23, '567-890-1234', 5),
('Fiona Vu', 1, 20, '678-901-2345', 1),
('George Do', 2, 22, '789-012-3456', 2),
('Hannah Nguyen', 3, 19, '890-123-4567', 3),
('Ian Tran', 4, 21, '901-234-5678', 4),
('Jane Le', 5, 23, '012-345-6789', 5);
update student set addressid = 6, classid = 3 where studentid = 6;
INSERT INTO Course (coursename, coursedescription) VALUES
('Algorithms', 'Study of algorithms and their efficiency.'),
('Operating Systems', 'Introduction to operating systems and their functions.'),
('Computer Networks', 'Learn about network protocols and architectures.'),
('Software Engineering', 'Principles of software development and project management.'),
('Artificial Intelligence', 'Introduction to AI concepts and applications.'),
('Cyber Security', 'Learn about network security and cryptography.'),
('Mobile App Development', 'Develop applications for mobile devices.'),
('Cloud Computing', 'Introduction to cloud services and architecture.'),
('Data Structures', 'Study of data structures and their applications.'),
('Human-Computer Interaction', 'Design and evaluation of user interfaces.'),
('Computer Graphics', 'Introduction to computer graphics and visualization.'),
('Embedded Systems', 'Design and programming of embedded systems.'),
('Game Development', 'Learn the principles of game design and development.'),
('Natural Language Processing', 'Introduction to processing and analyzing human language.'),
('Big Data Analytics', 'Techniques for analyzing large datasets.');
INSERT INTO Score (courseid, studentid, score) VALUES
(1, 1, 85),
(2, 2, 90),
(3, 3, 78),
(4, 4, 88),
(5, 5, 92),
(1, 6, 80),
(2, 7, 89),
(3, 8, 84),
(4, 9, 91),
(5, 10, 87),
(1, 1, 90),
(2, 2, 86),
(3, 3, 75),
(4, 4, 92),
(5, 5, 88),
(1, 6, 83),
(2, 7, 85),
(3, 8, 80),
(4, 9, 94),
(5, 10, 90);



select * from student;
select * from student where fullname like '%Nguyen';
select * from student where fullname like '%anh';
select * from student where age between 18 and 25;
select * from student where studentid=1 or studentid=3;

select *
from student 
where age=20 and fullname like '%e%';

select fullname 
from student 
where age=19;

select *
from student
where age=19 or age=20 and fullname like '%a%';

-- SELECT alias.column_name, alias.column_name, ...
-- FROM table_name alias
-- JOIN another_table_name alias ON alias.column_name = another_alias.column_name
-- WHERE conditions
-- ORDER BY column_name 

SELECT a.address, s.age, sc.score
FROM address a
JOIN student s ON a.addressid = s.addressid
JOIN score sc ON s.studentid = sc.studentid;

select address.address, student.age, score.score
from address
join student on address.addressid = student.addressid
join score on student.studentid = score.studentid;

SELECT s.fullname, c.classname
FROM student s
INNER JOIN class c ON s.classid = c.classid
ORDER BY s.fullname;

SELECT s.fullname, a.address
FROM student s
LEFT JOIN address a ON s.addressid = a.addressid
WHERE s.age > 20;

SELECT s.fullname, c.coursename
FROM student s
CROSS JOIN course c;

SELECT classid, COUNT(studentid) AS numberofstudents
FROM student
GROUP BY classid
HAVING numberofstudents=2;

SELECT s.fullname, AVG(sc.score) AS avg_score
FROM student s
JOIN score sc ON s.studentid = sc.studentid
GROUP BY s.fullname;

SELECT fullname, age
FROM student
WHERE classid IN (SELECT classid FROM class WHERE classlanguage = 'Python');

SELECT fullname, age
FROM student s
WHERE EXISTS (SELECT * FROM score sc WHERE sc.studentid = s.studentid AND sc.score > 90);

SELECT fullname, age
FROM student
ORDER BY age DESC;

SELECT fullname, age, phone
FROM student
ORDER BY age ASC, fullname DESC;

select classname, classlanguage, classdescription
from class
cross join student;

select studentid, fullname, addressid, age, phone
from student
cross join class;

select COUNT(fullname), address
from student
right join address on student.addressid = address.addressid
group by address;

select * from student;
select * from address;
select * from class;
select * from score;
select * from course;

select COUNT(fullname), classname
from student
right join class on student.classid=class.classid
group by classname;

select fullname, classname
from student
right join class on student.classid=class.classid;

select * from student
join address
join score
join class;


