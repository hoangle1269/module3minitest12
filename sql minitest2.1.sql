use tourism;

-- INSERT INTO destination (destinationname, describes, cost, cityid)
-- VALUES 
-- ('Hanoi', 'ok', 200, 5),
-- ('Saigon', 'cool', 300, 4),
-- ('Danang', 'best', 200, 1),
-- ('Nhatrang', 'finest', 200, 1),
-- ('Dalat', 'chill', 150, 2),
-- ('Sapa', 'northchill', 100, 2),
-- ('Mangden', 'chillchill', 200, 2),
-- ('Quangninh', 'cost', 200, 4),
-- ('Haiphong', 'crazy', 150, 3),
-- ('Mocchau', 'coolchill', 100, 3),
-- ('Hue', 'sad', 200, 3);

-- update destination
-- set destinationname = 'playground2'
-- where destinationname = '%Danang%';




select* from destination;

-- insert into city (cityname)
-- values
-- ('Danang'),
-- ('Nhatrang'),
-- ('Dalat'),
-- ('Sapa'),
-- ('Mangden'),
-- ('Mocchau'),
-- ('Quangninh'),
-- ('Hanoi'),
-- ('Saigon'),
-- ('Haiphong'),
-- ('Hue');

select * from city;

-- insert into clients (clientname, clientidnumber, clientdob, cityid)
-- values
-- ('Lee', 012, '90-12-12', 1),
-- ('Nguyen', 13, '1985-03-25', 2),
-- ('Tran', 14, '1992-07-17', 3),
-- ('Pham', 15, '1988-11-05', 4),
-- ('Hoang', 16, '1995-01-22', 1),
-- ('Vu', 17, '1991-04-14', 2),
-- ('Do', 18, '1987-09-30', 3),
-- ('Bui', 19, '1993-02-20', 4),
-- ('Dang', 20, '1989-06-10', 1),
-- ('Ly', 21, '1996-08-18', 2),
-- ('Pham', 22, '1994-05-28', 3);

select * from clients;

-- insert into categorytour(categorycode, categoryname)
-- values
-- ('C01', 'Adventure'),
-- ('C02', 'Historical'),
-- ('C03', 'Relaxation'),
-- ('C04', 'Cultural');

select * from categorytour;

-- insert into tour (tourcode, categoryid, destinationid, datestart, dateend)
-- values
-- ('T001', 1, 12, '2024-08-01', '2024-08-07'),
-- ('T002', 3, 12, '2024-09-10', '2024-09-15'),
-- ('T003', 3, 14, '2024-07-20', '2024-07-25'),
-- ('T004', 4, 15, '2024-10-05', '2024-10-10'),
-- ('T005', 4, 22, '2024-11-01', '2024-11-07'),
-- ('T006', 3, 13, '2024-12-10', '2024-12-15'),
-- ('T007', 3, 17, '2024-08-15', '2024-08-20'),
-- ('T008', 2, 18, '2024-09-20', '2024-09-25'),
-- ('T009', 1, 19, '2024-10-01', '2024-10-07'),
-- ('T010', 4, 21, '2024-11-10', '2024-11-15'),
-- ('T011', 1, 15, '2024-12-01', '2024-12-07'),
-- ('T012', 1, 15, '2024-08-10', '2024-08-15'),
-- ('T013', 3, 22, '2024-09-05', '2024-09-10'),
-- ('T014', 2, 13, '2024-10-20', '2024-10-25'),
-- ('T015', 1, 14, '2024-11-25', '2024-11-30');

select*from tour;

-- insert into ordertour (tourid, clientid, ordertourstatus)
-- values
-- (61, 1, 'Confirmed'),
-- (62, 2, 'Pending'),
-- (63, 3, 'Cancelled'),
-- (64, 4, 'Confirmed'),
-- (65, 5, 'Pending'),
-- (66, 6, 'Confirmed'),
-- (67, 7, 'Cancelled'),
-- (68, 8, 'Pending'),
-- (69, 9, 'Confirmed'),
-- (70, 10, 'Pending');

