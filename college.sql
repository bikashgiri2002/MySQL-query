use usbm;
desc student;
select * from student;
insert into student values (25 ,'rakesh',24);
insert into student values (26,'akash',20);
update student set Age = 21 where Id = 23;
set sql_safe_updates = 0;