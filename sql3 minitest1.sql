use studentmanagementproject;
select avg(score), coursename
from score
left join course on course.courseid= score.courseid
group by coursename;

select avg(score), coursename
from score
right join course on course.courseid= score.courseid
group by coursename;

select score, coursename
from score
right join course on course.courseid = score.courseid;

select min(score), coursename
from score
right join course on course.courseid= score.courseid
group by coursename;

select max(score), coursename
from score
left join course on  score.courseid = course.courseid
group by coursename;

select max(score), coursename, studentid
from score, course
where score.courseid = course.courseid
group by coursename, score.studentid;

select fullname
from student;

select upper(fullname)
from student;

select max(avg(score)), coursename
from score
right join course on score.courseid=course.courseid
group by coursename;

select avg(score), coursename
from score, course
where score.courseid=course.courseid
group by coursename
order by avg(score) desc
limit 1;


