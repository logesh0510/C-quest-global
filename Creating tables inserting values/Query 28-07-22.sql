CREATE TABLE product(product_ID varchar(50) primary key,
product_name varchar(50) not null,
price int not null,
category varchar(50) not null);

INSERT INTO product(product_ID,product_name,price,category)values('1001','Facewash',250,'cosmetic');
INSERT INTO product(product_ID,product_name,price,category)values('1002','pen',50,'station');
INSERT INTO product(product_ID,product_name,price,category)values('1003','pencil',50,'station');
INSERT INTO product(product_ID,product_name,price,category)values('1004','Facewash',250,'cosmetic')

select product_ID,product_name,price,category
from product;

select category,count(*)total_records
from product
group by category
having category='station';

select category,sum(price) total_price_of_items
from product
group by category
having category='station';

select category,sum(price) total_price_of_items
from product
group by category
having sum(price)>300;

----------------------------------------------------------------------------------------

create table Account(Account_no varchar(50) not null,holder_name varchar(50),place varchar(50),age int);
Alter table Account add phone_no varchar(50);
alter table Account  add constraint pk primary key(Account_no);
alter table Account add constraint uk unique(phone_no);
alter table Account ALTER COLUMN holder_name varchar(50) not null;
alter table Account add constraint ck check (age>18);

sp_help Account;
drop table Account;
----------------------------------------------------------------------------------------
create table Item(itemname varchar(50) not null,price int not null);
INSERT INTO Item(itemname,price)
values('wheat',250),
('rice',90),
('sugar',30),
('ragi',100);

select itemname,price from item
where itemname like 'r%';

select * from item;

update item
set price=price+100 
where price<100;

drop table item;