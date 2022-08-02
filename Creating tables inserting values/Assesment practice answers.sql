--1 a)
SELECT first_name+' '+last_name as Full_name, email id, salary
FROM employees;
--b)
/*SELECT first_name+' '+last_name as Full_name, email
FROM employees
WHERE department_id=3 */;
SELECT (first_name+' '+last_name) as Full_name, email
FROM employees e
inner join departments as d on e.department_id=d.department_id
WHERE d.department_name='purchasing';
--c)
SELECT *
FROM employees
WHERE salary>8000;
--d)
SELECT *
FROM employees
WHERE department_id in (7,11);
--e)
SELECT d.department_name,count(e.employee_id) tot_employees_in_department
FROM employees as e inner join departments as d
ON d.department_id=e.department_id
group by department_name;
--g)
Update employees
set salary+=(salary*0.2)
where salary<8000;
--h)
select department_name,sum(salary)total_salary_of_department
from departments as d
inner join employees as e on e.department_id=d.department_id
group by department_name;
GO
--3)
CREATE PROCEDURE sp_list_employees_by_department
           @department_id INT 
AS
BEGIN
    BEGIN TRANSACTION;
	SELECT employee_id,first_name,last_name,email,
	phone_number,hire_date,salary,manager_id,department_id
	from employees
	where department_id=@department_id;
	COMMIT TRANSACTION;
END

EXECUTE sp_list_employees_by_department 3;

4)
ALTER TABLE departments
ADD location_id varchar(25);

CREATE TABLE location(location_id varchar(25) primary key,
                      location_name varchar(50) unique not null);

INSERT INTO location(location_id,location_name)
values('124','delhi');
INSERT INTO location(location_id,location_name)
values('123','mumbai');

ALTER TABLE departments
ADD CONSTRAINT FK FOREIGN KEY(location_id) REFERENCES location(location_id);
update departments
set location_id='124'
where department_id=5;

select department_name,location_name 
from departments as d inner join location as l
on d.location_id=l.location_id;
