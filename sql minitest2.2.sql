use tourism;

select cityname, count(destinationname)
from destination
right join city on destination.cityid = city.cityid
group by cityname;


SELECT c.cityname, COUNT(t.tourcode) AS tour_count
FROM tour t
JOIN destination d ON t.destinationid = d.destinationid
JOIN city c ON d.cityid = c.cityid
GROUP BY c.cityname;

select cityname, tourcode
from tour
join destination on tour.destinationid = destination.destinationid
join city on destination.cityid = city.cityid;

select cityname, clientname
from city, clients;

select datestart
from tour
where datestart between '2024-09-01' and '2024-09-30';

select count(datestart)
from tour
where datestart between '2024-09-01' and '2024-09-30';

select count(*) as tour_count_aug
from tour
where dateend between '2024-08-01' and '2024-08-31';

select destinationname, cityname
from destination
join city on destination.cityid = city.cityid;

select destinationname, count(cityname)
from destination
join city on destination.cityid = city.cityid
group by destinationname;

select count(destinationname), cityname
from destination
join city on destination.cityid = city.cityid
group by cityname;

select * from destination;
select * from city;

select cityname, count(destinationname)
from city, destination
where city.cityid = destination.cityid
group by cityname;

select cityname, destinationname
from city, destination
where city.cityid = destination.cityid;

select count(cityname), destinationname
from city, destination 
where city.cityid = destination.cityid
group by destinationname;

select count(cityname), destinationname
from city 
join destination 
on city.cityid = destination.cityid
group by destinationname;

select count(cityname), destinationname
from city 
left join destination
on city.cityid = destination.cityid
group by destinationname;

select count(cityname), destinationname
from city 
right join destination 
on city.cityid = destination.cityid
group by destinationname;