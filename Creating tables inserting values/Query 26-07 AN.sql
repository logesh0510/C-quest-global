
CREATE TABLE flight(
	flight_id int, 
	flight_no varchar(50),

	airline_name varchar(256),
	source_point varchar(128),
	destination_point varchar(128),
	travel_date datetime,
	number_of_seats int,
	ticket_fare float);

sp_help flight;
select * from flight;
	
INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (1, 'AI 101', 'AIR INDIA', 'BHUBANESWAR', 'BANGALORE', '2022-07-25', 250, 8000);

INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (2, 'AI 102', 'AIR INDIA', 'BHUBANESWAR', 'MUMBAI', '2022-07-25', 250, 7000);

INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (3, 'AI 103', 'AIR INDIA', 'BHUBANESWAR', 'TRIVENDRUM', '2022-07-25', 250, 10000);

INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (4, 'AI 104', 'AIR INDIA', 'BHUBANESWAR', 'NEW DELHI', '2022-07-26', 250, 9000);
	
INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (4,'AI 104', 'AIR INDIA', 'BHUBANESWAR', 'NEW DELHI', '2022-07-26', 250, 9000);

drop table flight;

CREATE TABLE flight(
	flight_id int unique, 
	flight_no varchar(50),

	airline_name varchar(256),
	source_point varchar(128),
	destination_point varchar(128),
	travel_date datetime,
	number_of_seats int,
	ticket_fare float);

	CREATE TABLE flight(
	flight_id int primary key, 
	flight_no varchar(50),

	airline_name varchar(256),
	source_point varchar(128),
	destination_point varchar(128),
	travel_date datetime,
	number_of_seats int,
	ticket_fare float);

INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (1, 'AI 101', 'AIR INDIA', 'BHUBANESWAR', 'BANGALORE', '2022-07-25', 250, 8000);
INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (NULL, 'AI 101', 'AIR INDIA', 'BHUBANESWAR', 'BANGALORE', '2022-07-25', 250, 8000);


CREATE TABLE flight(
	flight_id int primary key, 
	flight_no varchar(50) unique not null,

	airline_name varchar(256) not null,
	source_point varchar(128)not null,
	destination_point varchar(128)not null,
	travel_date datetime null,
	number_of_seats int not null default(250) check (number_of_seats>=0),
	ticket_fare float not null);

INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (1, 'AI 101', 'AIR INDIA', 'BHUBANESWAR', 'BANGALORE', '2022-07-25', 250, 8000);

INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (2, 'AI 102', 'AIR INDIA', 'BHUBANESWAR', 'BANGALORE', '2022-07-25', 250, 8000);

INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (3, 'AI 103', 'Air india' , 'BHUBANESWAR', 'BANGALORE', '2022-07-25', -2, 8000);

-------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE flight(
	flight_id int primary key, 
	flight_no varchar(50) unique not null,

	airline_name varchar(256) not null,
	source_point varchar(128)not null,
	destination_point varchar(128)not null,
	travel_date datetime null,
	number_of_seats int not null default(250) check (number_of_seats>=0),
	ticket_fare float not null);
 sp_help flight;


CREATE TABLE customer(
    customer_id int PRIMARY KEY, 
    username varchar(50) UNIQUE NOT NULL,
    password varchar(50) NOT NULL,
    full_name varchar(128) NOT NULL,
    email_id varchar(128) NOT NULL UNIQUE,
    phone_number varchar(50) NOT NULL UNIQUE ,
    address varchar(1000) NOT NULL DEFAULT(''),
    date_of_birth datetime NOT NULL);    
 sp_help customer;
CREATE TABLE booking(
    booking_id int primary key,
    booking_date datetime not null,
    booking_number varchar(50)unique not null,
    customer_id int not null foreign key references customer(customer_id),
    flight_id int not null foreign key references flight(flight_id),
    travel_date datetime not null,
    number_of_passengers int not null default(1),
    total_fare float not null DEFAULT(0));
	 sp_help booking;

INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (1, 'AI 101', 'AIR INDIA', 'BHUBANESWAR', 'BANGALORE', '2022-07-25', 250, 8000);

INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (2, 'AI 102', 'AIR INDIA', 'BHUBANESWAR', 'MUMBAI', '2022-07-25', 250, 7000);

INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (3, 'AI 103', 'AIR INDIA', 'BHUBANESWAR', 'TRIVENDRUM', '2022-07-25', 250, 10000);

INSERT INTO flight( flight_id, flight_no, airline_name, source_point, destination_point,travel_date,number_of_seats,ticket_fare)
VALUES (4, 'AI 104', 'AIR INDIA', 'BHUBANESWAR', 'NEW DELHI', '2022-07-26', 250, 9000);

INSERT INTO customer(customer_id,username,password,full_name,email_id,phone_number,date_of_birth)
VALUES(10,'stutee','1234','stutee rath','stutee@gmail.com','638547512','2000-10-16'),
(20,'rahul','4321','rahulbejoy','rahul@gmail.com','5124785412','1998-01-21'),
(30,'palak','4567','palaksaraf','palaksaraf1700@gmail.com','8296106775','2000-06-17'),
(40,'ashiSH','0000','ashishranjan','ashishranjan@gmail.com','7992439751','1999-12-02'),
(50,'LOGESH','4141','LOGESHRAJAN','logesh@gmail.com','123546789','2001-10-05');

select * from flight;
select * from customer;

INSERT INTO booking(booking_id,booking_date,booking_number,customer_id,flight_id,travel_date,total_fare)

DROP TABLE flight;
DROP TABLE customer;
DROP TABLE booking;