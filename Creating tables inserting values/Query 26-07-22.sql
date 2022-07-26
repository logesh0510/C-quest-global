CREATE TABLE persons(
id int NOT NULL,
last_name varchar(50),
first_name varchar(50),
age int);

INSERT INTO persons(id,last_name,first_name)values(101,'rajan','Logesh');
SELECT * FROM persons;
INSERT INTO persons(last_name,first_name,age)values('rajan','Logesh',18);--error line as id is not given but defined as not null


CREATE TABLE persons_Chk(
id int NOT NULL,
last_name varchar(50),
first_name varchar(50),
age int CHECK (age>=18)
);
INSERT INTO persons_chk(id,last_name,first_name)values(101,'rajan','Logesh');
SELECT * FROM persons_Chk;
INSERT INTO persons_chk(id,last_name,first_name,age)values(102,'benny','sebin',20);
INSERT INTO persons_chk(id,last_name,first_name,age)values(103,'ranjan','Ashish',2);--error line as age is checked and it not satisfies condition

CREATE TABLE persons_UK(
id int UNIQUE,
last_name varchar(50),
first_name varchar(50),
age int
);
INSERT INTO persons_UK(id,last_name,first_name,age)values(101,'ranjan','Ashish',17);
SELECT * FROM persons_UK;
INSERT INTO persons_UK(last_name,first_name,age)values('benny','sebin',18);--ERROR EVEN IF DUPLICATE VALUE IS NULL.


