﻿create table cab(cab_id int primary key,cab_no varchar(50) not null,cab_type varchar(10) not null,no_of_seats int not null default 4);insert into cab(cab_id,cab_no,cab_type,no_of_seats)values(101,'TN48Z5658','sedan',6); insert into cab(cab_id,cab_no,cab_type,no_of_seats)values(102,'TN48Z5698','suv');insert into cab(cab_id,cab_no,cab_type)values(103,'TN48Z5699','suv');insert into cab(cab_id,cab_no,cab_type)values(104,'TN48Z5670','Tata Nano'); select * from cab;