CREATE TABLE employee(emp_id varchar(50) primary key,
emp_reg_no varchar(50) unique not null,
department varchar(50)
);

select * from employee;
select * from salary;

select count(designation)from employee;

CREATE TABLE salary(emp_id varchar(50) foreign key references employee(emp_id),
base_salary float(20) not null,
gross_salary float(20) not null,
net_salary FLOAT(20) not null
);

INSERT INTO employee(emp_id,emp_reg_no,department)VALUES('em101','5124124','testing');
INSERT INTO employee(emp_id,emp_reg_no,department)VALUES('em102','5124123','devops');
INSERT INTO employee(emp_id,emp_reg_no,department)VALUES('em103','5124122','testing');

ALTER TABLE employee ADD designation varchar(50);

update employee
set designation='manager'
where emp_id='em101';

update employee
set designation='team_lead'
where emp_id='em102';

INSERT INTO salary(emp_id,base_salary,gross_salary,net_salary)VALUES('em101',15000,20000,25000);
INSERT INTO salary(emp_id,base_salary,gross_salary,net_salary)VALUES('em102',10000,25000,30000);
INSERT INTO salary(emp_id,base_salary,gross_salary,net_salary)VALUES('em103',35000,15000,20000);

select count(*) tot_records,
sum(base_salary) sum_of_basesalary,
min(net_salary) min_of_netsalary, 
max(net_salary) max_of_netsalary,
avg(gross_salary) average_of_grosssalary
from salary;


delete from salary;

--drop table employee;not possible as it is referenced.
drop table employee;
drop table salary;

   Update salary 
    SET net_salary = CASE emp_id
        WHEN 'em101' THEN 5000 
        WHEN 'em102' THEN 7000
        ELSE net_salary 
        END;