create DATABASE Practical;
USE Practical;
CREATE TABLE Pan(Pan_no int primary key,Name varchar(50) not null,DOB date not null);
desc pan;
/*Summary
Use the date value in the format 'YYYY-MM-DD' when inserting it into a date column.
Use the CURRENT_DATE to insert the current date from the MySQL database server into a date column.
Use the UTC_DATE() function to insert the current date in UTC into a date column.
Use the STR_TO_DATE() function to convert a date string into a date before inserting it into a date column.*/
insert into Pan values(1457,'bikash','2002-11-29');
insert into pan values(4567,'bhagya','2003-03-25');
insert into pan values (1234,'anjan','2002-07-07');
select *from pan;
create table Aadhar(aadhar_no int primary key,Name varchar(50),Address varchar(100),DOB date not null,Mobile int);
desc aadhar;
ALTER TABLE Aadhar modify column  Mobile varchar(15);
insert into aadhar values (7336,'bikash','balasore','2002-11-29',7873621449);
insert into aadhar values (5849,'bhagya','kendrapara','2003-03-25',7205207673);
insert into aadhar values (3667,'anjan','balasore','2002-07-07',1476466415);
select *from aadhar;
update aadhar set mobile=7873621449 where aadhar_no=7336;
update aadhar set mobile=7205207673 where aadhar_no=5849;
update aadhar set mobile=+918260829584 where aadhar_no=3667;
select *from aadhar;
create table sbi(account_number bigint primary key,name varchar(30),mobile varchar(15),aadhar_no int,pan_no int,foreign key(aadhar_no) references aadhar(aadhar_no),foreign key(pan_no) references pan(pan_no));
select *from sbi;