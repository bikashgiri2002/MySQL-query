create table Employee(Emp_id int,Name varchar(20),Mob varchar(15),Salary int);
alter table employee modify column salary numeric(10,2);
desc employee;
insert into employee values(1000,'bikash',7873621449,50000);
insert into employee values(1001,'bhagya',7205207673,60000);
insert into employee values(1002,'anjan',8260829584,45000);
insert into employee values(1004,'hrusikesh',7077963071,55000);
insert into employee values(1005,'rakesh',9777877703,40000);
select * from employee;
alter table employee add column address varchar(50);
UPDATE employee
SET address = 'kendraapara'
WHERE salary = 60000;
SET SQL_SAFE_UPDATES = 0;
update employee set address = 'balasore' where salary= 50000;
update employee set address = 'balasore' where salary= 45000;
update employee set address = 'kendraapara' where salary= 55000;
SET SQL_SAFE_UPDATES = 1;