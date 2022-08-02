-- -- Transactions
--book stutee from BHUBANESWAR to BANGALORE and travel date on 2022-08-01
SELECT * FROM customer WHERE username='stutee';
SELECT * FROM flight WHERE source_point='BHUBANESWAR' AND destination_point='BANGALORE';

--book rahul from BHUBANESWAR to NEW DELHI and travel date on 2022-08-02
SELECT * FROM customer WHERE username='rahul';
SELECT * FROM flight WHERE source_point='BHUBANESWAR' AND destination_point='NEW DELHI';

select * from flight;
select * from customer;
select * from booking;

select * from flight WHERE travel_date='2022-08-01'
UNION ALL
select * from flight where destination_point='BANGALORE' OR source_point='BANGALORE';

select * from flight WHERE travel_date='2022-08-01'
UNION
select * from flight where destination_point='BANGALORE' OR source_point='BANGALORE';

select * from flight WHERE travel_date='2022-08-01'
INTERSECT
select * from flight where destination_point='BANGALORE' OR source_point='BANGALORE';

select * from flight WHERE travel_date='2022-08-01'
EXCEPT
select * from flight where destination_point='BANGALORE' OR source_point='BANGALORE';


select booking_id,booking_date,booking_number,
customer_id,booking.flight_id,
number_of_passengers,booking.travel_date ,total_fare,
flight.flight_no,flight.source_point,flight.destination_point
from booking,flight;-- cross join

select booking_id,booking_date,booking_number,
customer_id,booking.flight_id,
number_of_passengers,booking.travel_date ,total_fare,
flight.flight_no,flight.source_point,flight.destination_point,flight.flight_id
from booking cross join flight;

select booking_id,booking_date,booking_number,
customer_id,booking.flight_id,
number_of_passengers,booking.travel_date ,total_fare,
flight.flight_no,flight.source_point,flight.destination_point,flight.flight_id
from booking full join flight ON booking.flight_id = flight.flight_id ;--equi join

select b.booking_id,b.booking_date,b.booking_number,b.customer_id,b.flight_id,
b.number_of_passengers,b.travel_date ,b.total_fare,
f.flight_no,f.source_point,f.destination_point,f.flight_id
from booking as b 
inner join flight as f ON b.flight_id != f.flight_id; -- non equi join

select booking_id,booking_date,booking_number,
  b.customer_id,b.flight_id,
  number_of_passengers,b.travel_date ,total_fare,
  f.flight_no,f.source_point,f.destination_point,f.flight_id,
  c.username,c.customer_id
from booking as b
  inner join flight as f ON b.flight_id = f.flight_id 
  inner join customer as c on b.customer_id!=c.customer_id;--equi join
