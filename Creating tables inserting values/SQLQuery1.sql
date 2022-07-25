/*
CREATE DATABASE ars_db;
USE ars_db;
*/

CREATE TABLE flight(
	flight_id int primary key identity(101,2),
	flight_number varchar(50) NOT NULL,
	airline_name varchar(256) NOT NULL,
	source varchar(128) NOT NULL,
	destination varchar(128) NOT NULL,
	travel_date datetime,
	number_of_seats int NOT NULL DEFAULT 275,
	ticket_fare float NOT NULL DEFAULT 5500
);	

sp_help flight;
	
INSERT INTO flight(flight_number,airline_name,source,destination,travel_date)
VALUES('AI 1242','Air India','Mumbai','New Delhi','2022-07-23'); -- 101

INSERT INTO flight(flight_number,airline_name,source,destination,travel_date)
VALUES('AI 130','Air India','Mumbai' ,'Chennai','2022-07-24'); -- 103

INSERT INTO flight(flight_number,airline_name,source,destination,travel_date)
VALUES('AI 988','Air India','Trivandrum','Bhubaneswar','2022-07-23'); -- 105

INSERT INTO flight(flight_number,airline_name,source,destination,travel_date)
VALUES('IX 0396','Air India Express','Kochi','Mumbai','2022-07-24'); -- 107

INSERT INTO flight(flight_number,airline_name,source,destination,travel_date)
VALUES('IX 0184','Air India Express','Kochi','New Delhi','2022-07-23'); -- 109

SELECT * FROM flight; -- * is NOT standard | go for COLUMN NAMES in the 'SELECT clause'

UPDATE flight
SET ticket_fare = 6000
WHERE flight_number='AI 988';

UPDATE flight
SET ticket_fare = 7000
WHERE source='Kochi' and destination='New Delhi';

INSERT INTO flight(flight_number,airline_name,source,destination,travel_date)
VALUES('IX 0185','Air India Express','Vijawada','Guntur','2022-07-25');

UPDATE flight
SET ticket_fare = 4500
WHERE flight_number='IX 0185';

DELETE FROM flight WHERE flight_number='IX 0185';


SELECT * FROM flight;

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight;	

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE source='Mumbai';	

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE destination='new Delhi';	

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE travel_date='2022-07-24';	

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE     (airline_name = 'Air India');

SELECT COUNT(*) FROM flight;
SELECT MAX(ticket_fare) FROM flight;
SELECT MIN(ticket_fare) FROM flight;
SELECT SUM(number_of_seats*ticket_fare) FROM flight; --Total booking amount of all the tickets 
SELECT SUM(number_of_seats*ticket_fare)/SUM(number_of_seats) FROM flight; -- Average ticket fare
SELECT AVG(number_of_seats) FROM flight;
SELECT AVG(number_of_seats*ticket_fare) FROM flight; -- Per flight all seats total ticket fare
SELECT COUNT(SOURCE) FROM flight;
SELECT COUNT(DISTINCT SOURCE) FROM flight; -- number of distinct source column values
SELECT COUNT(DISTINCT destination) FROM flight; -- number of distinct destination values
SELECT COUNT(travel_date) FROM flight;
SELECT COUNT(DISTINCT travel_date) FROM flight; --number of distinct travel dates
SELECT COUNT(DISTINCT ticket_fare) FROM flight; -- number of distinct fares
SELECT DISTINCT ticket_fare FROM flight; -- displays distinct ticket_fares
SELECT DISTINCT travel_date FROM flight; -- displays distinct travel_dates
SELECT DISTINCT airline_name FROM flight;-- displays distinct airline_names

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE     (ticket_fare = 4500) OR (ticket_fare = 6000); -- ticket fare is either 4500 or 6000

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE     (ticket_fare IN (4500,6000)); -- ticket fare is either 4500 or 6000

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE   NOT ( (ticket_fare = 4500) OR (ticket_fare = 6000)); -- ticket fare is other than 4500 or 6000

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE     (ticket_fare NOT IN (4500,6000));-- ticket fare is other than 4500 or 6000


SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE     (4500<=ticket_fare) AND (ticket_fare<=6000); -- ticket fare bt 4500 and 6000 (included)
-- WHERE     (ticket_fare>=4500) AND (ticket_fare<=6000); 

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE (ticket_fare BETWEEN 4500 AND 6000); -- ticket fare bt 4500 and 6000 (included)

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE (ticket_fare NOT BETWEEN 4500 AND 6000); -- ticket fare not bt 4500 and 6000

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE     (ticket_fare != 4500)

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE (travel_date BETWEEN '2022-07-23' AND '2022-07-24') -- flights run bt 23 and 24 of month Jul/2022

SELECT  flight_number,airline_name,
	source,destination,
	travel_date 
FROM flight 
WHERE (travel_date BETWEEN '2022-07-23' AND '2022-07-24') -- for selective columns and flights run bt 23 and 24 of month Jul/2022

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE destination LIKE '%i' -- All the flights whose destination ends at alphabet 'i'

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE destination LIKE 'C%'  -- All the flights whose destination ends at alphabet 'C'


SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE destination LIKE '%a%'  -- All the flights whose destination contains alphabet 'C'

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE destination LIKE '%a_'  -- All the flights whose destination 2nd to last alphabet 'a'

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight 
WHERE source LIKE '_____' -- here 5 underscores are there, so five characters source will be selected


-- Sorting the flights
SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight ORDER BY travel_date ASC -- sort based on trave_date ascending order 

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight ORDER BY 6 ASC -- sort based on 6th column (travel_date) ascending order 
						-- 6th column of the result table ie not from the original table
						-- 6 is the ordinal number and ordinal numbers starts at 1 (not zero)


SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight ORDER BY travel_date DESC -- sort based on trave_date ascending order 

SELECT flight_id, flight_number,airline_name,
	source,destination,
	travel_date,
	number_of_seats, ticket_fare 
FROM flight ORDER BY travel_date ASC, source ASC -- sort based on trave_date ascending order then by source ascending order
DROP TABLE flight;

/*
TRUNCATE TABLE flight;
DROP TABLE flight;
*/

/*
DROP DATABASE ars_db;
*/

ALTER TABLE flight
ADD departute_time time ,arrival_time time;

INSERT INTO flight( flight_id, flight_number, airline_name, source, destination,travel_date,number_of_seats,ticket_fare)
VALUES (11, 'AI 201', 'AIR INDIA', 'BANGALORE', 'BHUBANESHWAR', '2022-07-25', 250, 8000),
 (12, 'AI 202', 'AIR INDIA', 'BANGALORE', 'MUMBAI', '2022-07-25', 250, 7000),
 (13, 'AI 203', 'AIR INDIA', 'BANGALORE', 'TRIVENDRUM', '2022-07-25', 250, 10000),
 (14, 'AI 204', 'AIR INDIA', 'BANGALORE', 'NEW DELHI', '2022-07-26', 250, 9000);
 UPDATE flight 
SET departure_time ='19:30', arrival_time= '21:30'
WHERE flight_id= 11;
UPDATE flight 
SET departure_time ='20:30', arrival_time= '22:30'
WHERE flight_id= 12;
UPDATE flight 
SET departure_time ='17:30', arrival_time= '19:30'
WHERE flight_id= 13;
UPDATE flight 
SET departure_time ='00:30', arrival_time= '14:30'
WHERE flight_id= 14;

INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (15, 'AI 301', 'AIR INDIA EXPRESS', 'MUMBAI', 'BHUBANESHWAR', '2022-07-25', 250, 8000),
 (16, 'AI 302', 'AIR INDIA EXPRESS', 'MUMBAI', 'BANGALORE', '2022-07-25', 250, 7000),
 (17, 'AI 303', 'AIR INDIA EXPRESS', 'MUMBAI', 'TRIVENDRUM', '2022-07-25', 250, 10000),
 (18, 'AI 304', 'AIR INDIA EXPRESS', 'MUMBAI', 'NEW DELHI', '2022-07-26', 250, 9000);
UPDATE flight 
SET departure_time ='19:30', arrival_time= '21:30'
WHERE flight_id= 15;
UPDATE flight 
SET departure_time ='20:30', arrival_time= '22:30'
WHERE flight_id= 16;
UPDATE flight 
SET departure_time ='17:30', arrival_time= '19:30'
WHERE flight_id= 17;
UPDATE flight 
SET departure_time ='00:30', arrival_time= '14:30'
WHERE flight_id= 18;

select* from flight
 where  (ticket_fare  not in (7000,10000));
select* from flight
 where  ticket_fare<=7000 ;
--list flights where flight_fare is 7000 OR ????
SELECT * 
FROM flight 
WHERE ticket_fare=7000 OR ticket_fare=10000;

SELECT * 
FROM flight 
WHERE( ticket_fare IN (7000,10000));

--list flights where flight_fare is NOT (7000 OR ????)
SELECT * 
FROM flight 
WHERE NOT( ticket_fare IN (7000,10000));

SELECT * 
FROM flight 
WHERE ( ticket_fare NOT IN (7000,10000));

--list flights where flight_fare is between ???? AND 7000 using <= >= using between
SELECT * FROM  flight
WHERE ticket_fare BETWEEN 3000 and 10000;

SELECT * FROM  flight
WHERE ticket_fare BETWEEN 3000 and 7000;

--list flights where flight_fare in between  7000 AND 9000
 SELECT * 
FROM flight 
WHERE  ticket_fare>=7000 And ticket_fare<=9000;

SELECT * 
FROM flight 
WHERE  ticket_fare BETWEEN 7000 AND 9000;
--list flights where flight_fare is NOT between ???? AND 7000
SELECT * 
FROM flight 
WHERE  NOT(ticket_fare>=7000 And ticket_fare<=9000);

SELECT * 
FROM flight 
WHERE  NOT(ticket_fare BETWEEN 7000 AND 9000);

SELECT * 
FROM flight 
WHERE  ticket_fare  NOT BETWEEN 7000 AND 9000;

 --sort the flights based on flight_fare ascending order 
  select* from flight
  order by ticket_fare asc;

--sort the flights based on flight_fare descending order 
 select* from flight
 order by ticket_fare desc;