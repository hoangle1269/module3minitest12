use studentmanagement2;

-- insert into students (studentid, studentname, age, email)
-- values 
-- (1, 'NQ An', 18, 'an@yahoo.com'),
-- (2, 'NC Vinh', 20, 'vinh@yahoo.com'),
-- (3, 'NV Quyen', 19, 'quyen'),
-- (4, 'PT Binh', 25, 'binh@com'),
-- (5, 'PVT Em', 30, 'taiem@sport.vn');

-- 1 
select * from students;
-- 2
select count(studentid) from students;

-- insert into classes (classid, classname)
-- values
-- (1, 'C0706L'),
-- (2, 'C0708L');

-- insert into classstudent (studentid, classid)
-- values
-- (1, 1),
-- (2, 1),
-- (3, 2),
-- (4, 2),
-- (5, 2);

-- insert into subjects (subjectid, subjectname)
-- values
-- (1, 'SQL'),
-- (2, 'Java'),
-- (3, 'C'),
-- (4, 'Visual Basic');

-- 3 
select * from subjects;

-- insert into marks (subjectid, studentid, mark)
-- values
-- (1, 1, 8),
-- (2, 1, 4),
-- (1, 1, 9),
-- (1, 3, 7),
-- (1, 4, 3),
-- (2, 5, 5),
-- (3, 3, 8),
-- (3, 5, 1),
-- (2, 4, 3);

-- 4
select mark, studentname
from marks, students
where marks.studentid = students.studentid;

select subjectid, marks.studentid, mark, studentname
from marks
right join students on marks.studentid = students.studentid;

select marks.subjectid, marks.studentid, mark, studentname, subjectname
from marks
right join students on marks.studentid = students.studentid
left join subjects on marks.subjectid = subjects.subjectid;

select avg(mark), marks.studentid, studentname
from marks join students on marks.studentid = students.studentid
group by studentid;
